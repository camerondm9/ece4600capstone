#include <stdio.h>
#include <stdlib.h>
#include "spi.h"
#include "pins.h"
#include <nrf.h>

extern uint8_t fpga_test_bitstream[];
extern uint32_t fpga_test_bitstream_size;

void fpga_test_transfer()
{
	printf("Begin FPGA config transfer...");

	//Setup GPIO pins...
	NRF_P0->PIN_CNF[PIN_FPGA_nCONFIG] = 0x0030F; //sense disabled, high drive, pull-up, output
	NRF_P0->PIN_CNF[PIN_FPGA_nSTATUS] = 0x0000C; //sense disabled, standard drive, pull-up, input
	NRF_P0->PIN_CNF[PIN_FPGA_CONF_DONE] = 0x0000C; //sense disabled, standard drive, pull-up, input
	NRF_P0->PIN_CNF[PIN_FPGA_INIT_DONE] = 0x0000C; //sense disabled, standard drive, pull-up, input

	//Switch to LSB-first SPI...
	NRF_SPIM0->CONFIG |= 1;

	//Pulse nCONFIG low, return it high...
	NRF_GPIO->OUTCLR = (1 << PIN_FPGA_nCONFIG);
	for (volatile int i = 0; i < 10; i++) {}
	NRF_GPIO->OUTSET = (1 << PIN_FPGA_nCONFIG);

	//Wait for nSTATUS high...
	while ((NRF_GPIO->IN & (1 << PIN_FPGA_nSTATUS)) == 0) {}

	//Transfer entire bitstream in 256-byte blocks...
	for (uint32_t i = 0; i < fpga_test_bitstream_size; i += 256)
	{
		SpiTransfer* tx = queue_dequeue(&spi_emq);
		tx->flags = SPI_FLAG_FPGA;
		uint32_t len = fpga_test_bitstream_size - i;
		if (len > 256)
		{
			len = 256;
		}
		tx->length = len - 1;
		tx->pointer = &fpga_test_bitstream[i];
		tx->next = NULL;
		spi_transfer(tx);
	}

	//Check nSTATUS...
	if ((NRF_GPIO->IN & (1 << PIN_FPGA_nSTATUS)) == 0)
	{
		printf("FPGA signals failure: nSTATUS is low.");
	}

	printf("FPGA config transfer complete, waiting for initialization...");

	//Wait for CONF_DONE high and INIT_DONE high...
	while ((NRF_GPIO->IN & (1 << PIN_FPGA_CONF_DONE)) == 0) {}
	while ((NRF_GPIO->IN & (1 << PIN_FPGA_INIT_DONE)) == 0) {}

	//Switch back to MSB-first SPI...
	NRF_SPIM0->CONFIG &= ~1;

	printf("FPGA config transfer successful.");
}
