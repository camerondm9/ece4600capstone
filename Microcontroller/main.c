#include <stdio.h>
#include <stdlib.h>
#include "uart.h"
#include <nrf.h>

void main(void)
{
	//TODO: Make sure interrupts are disabled here, if they could cause a problem.
	//Alternatively, initialize the peripherals in the right order, that problems cannot happen.

	__disable_irq();
	//Initialize peripherals...
	uart_init();

	__enable_irq();

	int i;

	for (i = 0; i < 100; i++)
	{
		printf("Hello World %d!\n", i);
	}
	do
	{
		i++;
		if (NRF_UARTE0->EVENTS_RXDRDY)
		{
			NRF_UARTE0->EVENTS_RXDRDY = 0;
			printf("RXDRDY %d\n", i);
		}
	} while (1);
}
