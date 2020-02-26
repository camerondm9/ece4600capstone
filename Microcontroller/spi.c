#include "spi.h"
#include "pins.h"
#include <nrf.h>

uint8_t spi_sector_buffer[4096];

void spi_init()
{
	//Configure SPI...
	NRF_P0->PIN_CNF[PIN_FPGA_CLK] = 0x0030F; //sense disabled, high drive, pull-up, output
	NRF_P0->PIN_CNF[PIN_FPGA_DIN] = 0x0030F; //sense disabled, high drive, pull-up, output
	NRF_P0->PIN_CNF[PIN_FPGA_DOUT] = 0x0000C; //sense disabled, standard drive, pull-up, input

	NRF_SPIM0->SHORTS = 0;
	NRF_SPIM0->INTENSET = 0x40; //END
	NRF_SPIM0->PSEL.SCK = PIN_FPGA_CLK;
	NRF_SPIM0->PSEL.MISO = PIN_FPGA_DOUT; //TODO: These are configured for communicating with the FPGA
	NRF_SPIM0->PSEL.MOSI = PIN_FPGA_DIN;  //TODO: Swap them to communicate with the flash memory
	NRF_SPIM0->FREQUENCY = 0x80000000; //8 Mbps

	//Use SPI mode 3 for both FPGA and flash memory (clock idles high, write on falling edge, read on rising edge)
	NRF_SPIM0->CONFIG = 6; //TODO: Flash memory expects data MSB-first
    NRF_SPIM0->CONFIG = 7; //TODO: FPGA expects data LSB-first
	NRF_SPIM0->ORC = 0;

	NVIC_EnableIRQ(SPIM0_SPIS0_SPI0_IRQn);

	NRF_SPIM0->ENABLE = 7;
}

void spi_init_flash()
{

}

void spi_init_fpga()
{

}

void spi_transfer()
{

}

void spi_write_sector()
{
	//TODO: Write-enable
	//Transmit: [0x06]
	//TODO: Erase sector
	//Transmit: [0x20, A2, A1, A0] (24-bit address)
	//TODO: Loop through all 16 pages within sector:
		//TODO: Write-enable
		//Transmit: [0x06]
		//TODO: Program page
		//Transmit: [0x02, A2, A1, A0] (24-bit address)
		//Transmit: [256 bytes]
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

void SPIM0_SPIS0_SPI0_IRQHandler(void)
{
	if (NRF_SPIM0->EVENTS_END)
	{
		NRF_SPIM0->EVENTS_END = 0;

	}
}
