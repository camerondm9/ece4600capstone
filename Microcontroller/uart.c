#include "uart.h"
#include "pins.h"
#include "crc.h"
#include <stddef.h>
#include <nrf.h>

// CRC error correction function
// Capable of correction 1-bit errors, and detecting 2-bit and 3-bit errors
static const uint8_t length_correction_crc8_table[256] = {
	0xFFU, 0xFFU, 0x01U, 0xFFU, 0x02U, 0xFFU, 0xFFU, 0xFFU,
	0x04U, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU,
	0x08U, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU,
	0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU,
	0x10U, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU,
	0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU,
	0xFFU, 0xFFU, 0xFFU, 0x00U, 0xFFU, 0xFFU, 0xFFU, 0xFFU,
	0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU,
	0x20U, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU,
	0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0x00U,
	0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU,
	0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU,
	0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0x00U, 0xFFU,
	0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU,
	0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU,
	0xFFU, 0x00U, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU,
	0x40U, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU,
	0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU,
	0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU,
	0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0x00U, 0xFFU,
	0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU,
	0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU,
	0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU,
	0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU,
	0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU,
	0xFFU, 0xFFU, 0xFFU, 0xFFU, 0x00U, 0xFFU, 0xFFU, 0xFFU,
	0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0x80U,
	0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU,
	0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU,
	0xFFU, 0xFFU, 0xFFU, 0x00U, 0xFFU, 0xFFU, 0xFFU, 0xFFU,
	0xFFU, 0xFFU, 0x00U, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU,
	0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU,
};
static uint8_t* uart_detect_packet(uint8_t* buffer, int buffer_count)
{
	buffer_count -= 2;
	while (buffer_count > 0)
	{
		uint8_t error = buffer[0] ^ 0xCA;
		error &= error - 1;
		if (error == 0)
		{
			//Potential sync byte...
			error = crc8_single(buffer[2], crc8_single(buffer[1], 0xFF));
			if (error == 0)
			{
				//Found packet...
				return buffer;
			}
			//CRC invalid, attempt correction...
			error = length_correction_crc8_table[error];
			if (error != 0xFF)
			{
				buffer[1] ^= error;
				return buffer;
			}
		}
		buffer++;
		buffer_count--;
	}
	return 0;
}

uint32_t uart_errors_framing = 0;
uint32_t uart_errors_overrun = 0;
uint32_t uart_errors_sync = 0;
uint32_t uart_errors_crc = 0;

Queue uart_txq = QUEUE(8);
Queue uart_rxq = QUEUE(8);
Queue uart_emq = QUEUE(32);

static UartPacket uart_packets[18]; //TODO: Can we shrink the size of the queues? That would allow us to reserve less space for packets, and use less of our (precious) RAM...

static UartPacket* volatile uart_tx_packet;
static UartPacket* volatile uart_rx_packet;

uint8_t echo_buffer1[4];
uint8_t echo_buffer2[4];

void uart_init()
{
	//Use a queue to track empty buffers...
	for (int i = sizeof(uart_packets)/sizeof(*uart_packets) - 1; i >= 0; i--)
	{
		queue_enqueue(&uart_emq, &uart_packets[i]);
	}
	//Configure UART...
	NRF_P0->PIN_CNF[PIN_MICRO_TX] = 0x0030F; //sense disabled, high drive, pull-up, output
	NRF_P0->PIN_CNF[PIN_MICRO_RX] = 0x0000C; //sense disabled, standard drive, pull-up, input

	//TODO: If we want to conserve power by not enabling the UART unless needed, we could set the sense bit for the RX pin.
	// When a signal was detected, disable the sense bit, enable the UART, and start a timer. If a valid packet is received,
	// reset the timer. If the timer expires, disabled the UART (wait for a full shutdown), and re-enable the sense bit.
	//NOTE: The amount of power saved is probably not worth doing this...

	NRF_UARTE0->SHORTS = 0;
	NRF_UARTE0->INTEN = 0x00000310; //ERROR, ENDTX, ENDRX
	NRF_UARTE0->PSEL.CTS = 0x80000000; //not connected
	NRF_UARTE0->PSEL.RTS = 0x80000000; //not connected
	NRF_UARTE0->PSEL.RXD = PIN_MICRO_RX;
	NRF_UARTE0->PSEL.TXD = PIN_MICRO_TX;
	NRF_UARTE0->BAUDRATE = 0x03B00000; //230400 baud
	NRF_UARTE0->RXD.PTR = (uint32_t)&echo_buffer1; //TODO: switch to actually receiving packets
	NRF_UARTE0->RXD.MAXCNT = sizeof(echo_buffer1);
	NRF_UARTE0->TXD.PTR = NULL;
	NRF_UARTE0->TXD.MAXCNT = 0;
	NRF_UARTE0->CONFIG = 0; //1 stop-bit, parity disabled, flow-control disabled

	NVIC_EnableIRQ(UARTE0_UART0_IRQn);

	NRF_UARTE0->ENABLE = 8;
	NRF_UARTE0->TASKS_STARTRX = 1; //TODO: Setup packet buffers
}

static void uart_transmit_next()
{
	UartPacket* packet = queue_dequeue(&uart_txq);
	uart_tx_packet = packet;
	if (packet)
	{
		NRF_UARTE0->TXD.PTR = (uint32_t)(packet->raw);
		NRF_UARTE0->TXD.MAXCNT = (9 + packet->length[0]);
		NRF_UARTE0->TASKS_STARTTX = 1;
	}
}

int uart_transmit(UartPacket* packet)
{
	//Prepare packet for transmission...
	packet->sync[0] = 0xFF;
	packet->sync[1] = 0xCA;
	uint8_t length = packet->length[0];
	packet->length[1] = crc8_single(length, 0xFF);
	*(uint16_t*)(&packet->payload[3 + length]) = crc16(packet->payload, 3 + length, 0xFFFF); //TODO: Does this work?
	//Place packet in queue...
	if (queue_enqueue(&uart_txq, packet))
	{
		if (uart_tx_packet == NULL)
		{
			uart_transmit_next();
		}
		return 1;
	}
	return 0;
}

void UARTE0_UART0_IRQHandler(void)
{
	if (NRF_UARTE0->EVENTS_ERROR)
	{
		NRF_UARTE0->EVENTS_ERROR = 0;
		//Get error flags and reset them...
		uint32_t errors = NRF_UARTE0->ERRORSRC;
		NRF_UARTE0->ERRORSRC = errors;
		if (errors & 1)
		{
			//Overrun error...
			uart_errors_overrun++;
		}
		//Parity errors are impossible, since the parity bit is not used.
		if (errors & 4)
		{
			//Framing error...
			uart_errors_framing++;
		}
		if (errors & 8)
		{
			//Break error...

			//TODO: Adding support for this would allow us to abort packet transmission partway through, and keep the receiver synchronized.
			//That seems like a very unlikely course of action, so this is probably not important to implement...
		}
	}
	if (NRF_UARTE0->EVENTS_ENDTX)
	{
		NRF_UARTE0->EVENTS_ENDTX = 0;
		//Packet was transmitted, can be reused...
		queue_enqueue(&uart_emq, uart_tx_packet);
		//Start transmission of next packet... (if queue not empty)
		uart_transmit_next();
	}
	if (NRF_UARTE0->EVENTS_ENDRX)
	{
		NRF_UARTE0->EVENTS_ENDRX = 0;

		//TODO: How do we determine whether we are starting a packet or completing it?

		uart_detect_packet(uart_rx_packet->raw, 8);

		//TODO: First receive DMA will get 8 bytes. detect_packet will try (up to) 6 offsets to find a packet start marker.
		//TODO: If no marker is found, the last 2 bytes will be copied to the start of the buffer, and 6 more bytes will be read (using DMA).
		//TODO: If a marker is found, the data will be copied into the packet struct so that the fields are aligned correctly.
		//TODO: Then the total packet length will be computed, and the remaining bytes will be read directly into the packet struct (using DMA).
		//TODO: After a complete packet has been received, this process starts over (with an 8-byte DMA read).

		NRF_UARTE0->TXD.PTR = NRF_UARTE0->RXD.PTR;
		NRF_UARTE0->TXD.MAXCNT = sizeof(echo_buffer1);
		NRF_UARTE0->RXD.PTR ^= ((uint32_t)&echo_buffer1 ^ (uint32_t)&echo_buffer2);
		NRF_UARTE0->TASKS_STARTTX = 1;

		NRF_UARTE0->TASKS_STARTRX = 1;
	}
}
