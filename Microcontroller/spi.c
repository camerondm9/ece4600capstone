#include "spi.h"
#include "pins.h"
#include <string.h>
#include <nrf.h>

Queue spi_txq = QUEUE(8);
Queue spi_rxq = QUEUE(8);
Queue spi_emq = QUEUE(32);

static SpiTransfer spi_transfers[18]; //TODO: Can we shrink the size of the queues? That would allow us to reserve less space for packets, and use less of our (precious) RAM...

static SpiTransfer* volatile spi_tx = NULL;
volatile uint32_t spi_locked = 0;

void spi_init()
{
	//Use a queue to track empty buffers...
	for (int i = sizeof(spi_transfers)/sizeof(*spi_transfers) - 1; i >= 0; i--)
	{
		queue_enqueue(&spi_emq, &spi_transfers[i]);
	}
	//Configure pins...
	NRF_P0->PIN_CNF[PIN_LINK5] = 0x0030F; //sense disabled, high drive, pull-up, output
	NRF_P0->PIN_CNF[PIN_FPGA_CS] = 0x0030F; //sense disabled, high drive, pull-up, output
	NRF_P0->PIN_CNF[PIN_FPGA_CLK] = 0x0030F; //sense disabled, high drive, pull-up, output
	NRF_P0->PIN_CNF[PIN_FPGA_DOUT] = 0x0000C; //sense disabled, standard drive, pull-up, input
	NRF_P0->PIN_CNF[PIN_FPGA_DIN] = 0x0000C; //sense disabled, standard drive, pull-up, input
	//Configure SPI...
	NRF_SPIM0->SHORTS = 0;
	NRF_SPIM0->INTENSET = 0x40; //END
	NRF_SPIM0->PSEL.SCK = PIN_FPGA_CLK;
	NRF_SPIM0->PSEL.MOSI = PIN_FPGA_DOUT;
	NRF_SPIM0->PSEL.MISO = PIN_FPGA_DIN;
	NRF_SPIM0->FREQUENCY = 0x80000000; //8 Mbps
	NRF_SPIM0->RXD.PTR = NULL;
	NRF_SPIM0->RXD.MAXCNT = 0;
	NRF_SPIM0->TXD.PTR = NULL;
	NRF_SPIM0->TXD.MAXCNT = 0;
	NRF_SPIM0->CONFIG = 6; //SPI mode 3 (clock idles high, write on falling edge, read on rising edge)
	NRF_SPIM0->ORC = 0;

	NVIC_EnableIRQ(SPIM0_SPIS0_SPI0_IRQn);

	NRF_SPIM0->ENABLE = 0;
}

static void spi_transfer_next()
{
	//Clean up completed transfer...
	SpiTransfer* transfer = spi_tx;
	if (transfer != NULL)
	{
		//Advance transfer chain...
		SpiTransfer* old_transfer = transfer;
		transfer = old_transfer->next;
		old_transfer->next = NULL;
		//Send data to main thread if needed...
		if (old_transfer->flags & SPI_FLAG_READ)
		{
			queue_enqueue(&spi_rxq, old_transfer);
		}
		else
		{
			queue_enqueue(&spi_emq, old_transfer);
		}
	}
	//End of transfer chain...
	if (transfer == NULL)
	{
		//Clear slave selects...
		NRF_GPIO->OUTSET = (1 << PIN_FPGA_CS) | (1 << PIN_LINK5);
		//Pull next from queue...
		transfer = queue_dequeue(&spi_txq);
	}
	spi_tx = transfer;
	if (transfer)
	{
		//Setup SPI pins...
		NRF_SPIM0->ENABLE = 0;
		if (transfer->flags & SPI_FLAG_FLASH)
		{
			//Communicating with flash... (or flash->FPGA transfer)
			NRF_P0->PIN_CNF[PIN_FPGA_DOUT] = 0x0030F; //sense disabled, high drive, pull-up, output
			NRF_P0->PIN_CNF[PIN_FPGA_DIN] = 0x0000C; //sense disabled, standard drive, pull-up, input
			NRF_SPIM0->PSEL.MOSI = PIN_FPGA_DOUT;
			NRF_SPIM0->PSEL.MISO = PIN_FPGA_DIN;
		}
		else
		{
			//Communicating with FPGA...
			NRF_P0->PIN_CNF[PIN_FPGA_DOUT] = 0x0000C; //sense disabled, standard drive, pull-up, input
			NRF_P0->PIN_CNF[PIN_FPGA_DIN] = 0x0030F; //sense disabled, high drive, pull-up, output
			NRF_SPIM0->PSEL.MOSI = PIN_FPGA_DIN;
			NRF_SPIM0->PSEL.MISO = PIN_FPGA_DOUT;
		}
		NRF_SPIM0->ENABLE = 7;
		//Select slaves...
		if (transfer->flags & SPI_FLAG_FLASH)
		{
			//Select flash memory... (active low)
			NRF_GPIO->OUTCLR = (1 << PIN_FPGA_CS);
		}
		else
		{
			NRF_GPIO->OUTSET = (1 << PIN_FPGA_CS);
		}
        if (transfer->flags & SPI_FLAG_FPGA)
		{
			//Select FPGA... (active low)
			NRF_GPIO->OUTCLR = (1 << PIN_LINK5);
		}
		else
		{
			NRF_GPIO->OUTSET = (1 << PIN_LINK5);
		}
		//Initiate DMA...
		void* p = (transfer->flags & SPI_FLAG_INLINE) ? &transfer->buffer : transfer->pointer;
		NRF_SPIM0->TXD.PTR = (uint32_t)p;
		NRF_SPIM0->RXD.PTR = (uint32_t)p;
		uint32_t length = (1 + transfer->length);
		NRF_SPIM0->TXD.MAXCNT = (transfer->flags & SPI_FLAG_WRITE) ? length : 0;
		NRF_SPIM0->RXD.MAXCNT = (transfer->flags & SPI_FLAG_READ) ? length : 0;
		NRF_SPIM0->TASKS_START = 1;
	}
	else
	{
		//Save power when not in use...
		NRF_SPIM0->ENABLE = 0;
		NRF_GPIO->OUTSET = (1 << PIN_FPGA_CLK);
	}
}

void spi_erase_sector()
{

}

void spi_program_page()
{
	//TODO: We should be able to transfer the bytes directly from the UART packet
}

void spi_read_control_sector()
{
	//Transmit: [0x03, A2, A1, A0]
	//Receive: [...as many bytes as you want...]
}

void spi_transfer_fpga_configuration()
{
	//TODO: Increment FPGA-init counter
	//TODO: Ensure FPGA is in reset
	//TODO: Read control block
	//TODO: Begin read transaction (FPGA bitstream)
	//TODO: Wake FPGA
	//TODO: Read all bytes (fixed start address (after control block), length is in control block)
	//TODO: Complete transaction (release chip select)
	//TODO: Wait for FPGA to be ready (timeout is needed)
	//TODO: If timeout: Reset FPGA, start from the beginning

	//TODO: Once FPGA is ready:
	//TODO: Begin read transaction (waveforms)
	//TODO: Signal FPGA (chip select)
	//TODO: Read all bytes (memory address and length from control block)
	//TODO: Complete transaction (release chip selects)

	//TODO: Power-down flash memory?
}

int spi_transfer(SpiTransfer* transfer)
{
	//Place transfer in queue...
	if (queue_enqueue(&spi_txq, transfer))
	{
		if (spi_tx == NULL)
		{
			spi_transfer_next();
		}
		return 1;
	}
	return 0;
}

void SPIM0_SPIS0_SPI0_IRQHandler(void)
{
	if (NRF_SPIM0->EVENTS_END)
	{
		NRF_SPIM0->EVENTS_END = 0;
		//Start next transfer... (if queue not empty)
		spi_transfer_next();
	}
}
