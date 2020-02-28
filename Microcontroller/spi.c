#include "spi.h"
#include "pins.h"
#include <nrf.h>

void spi_init()
{
	//Configure SPI...
	NRF_P0->PIN_CNF[PIN_FPGA_CLK] = 0x0030F; //sense disabled, high drive, pull-up, output
	NRF_P0->PIN_CNF[PIN_FPGA_DOUT] = 0x0030F; //sense disabled, high drive, pull-up, output
	NRF_P0->PIN_CNF[PIN_FPGA_DIN] = 0x0000C; //sense disabled, standard drive, pull-up, input

	NRF_SPIM0->SHORTS = 0;
	NRF_SPIM0->INTENSET = 0x40; //END
	NRF_SPIM0->PSEL.SCK = PIN_FPGA_CLK;
	NRF_SPIM0->PSEL.MOSI = PIN_FPGA_DOUT;
	NRF_SPIM0->PSEL.MISO = PIN_FPGA_DIN;
	NRF_SPIM0->FREQUENCY = 0x80000000; //8 Mbps

	NRF_SPIM0->CONFIG = 6; //SPI mode 3 (clock idles high, write on falling edge, read on rising edge)
	NRF_SPIM0->ORC = 0;

	NVIC_EnableIRQ(SPIM0_SPIS0_SPI0_IRQn);

	NRF_SPIM0->ENABLE = 7;
}

void spi_transfer()
{
	//TODO: FPGA will normally use the same TX/RX pins as the flash memory.
	//When operating in FLASH->FPGA transfer mode, the FPGA will remap its' input to receive from the flash memory.
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

void SPIM0_SPIS0_SPI0_IRQHandler(void)
{
	if (NRF_SPIM0->EVENTS_END)
	{
		NRF_SPIM0->EVENTS_END = 0;

	}
}
