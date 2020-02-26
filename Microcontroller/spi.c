#include "spi.h"
#include "pins.h"
#include <nrf.h>

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

void spi_select_slave()
{

}

void spi_transfer_fpga_configuration()
{

}

void spi_transfer()
{

}

void SPIM0_SPIS0_SPI0_IRQHandler(void)
{

}
