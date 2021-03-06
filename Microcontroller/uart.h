#pragma once

#include <stdint.h>
#include "queue.h"

extern uint32_t uart_errors_framing;
extern uint32_t uart_errors_overrun;
extern uint32_t uart_errors_sync;
extern uint32_t uart_errors_crc;

extern Queue uart_txq;
extern Queue uart_rxq;
extern Queue uart_emq;

typedef struct UartPacket
{
	union
	{
		uint8_t raw[264];
		struct
		{
			uint8_t sync[2]; //0xFF byte-sync, 0xCA packet-sync
			uint8_t length[2]; //1-byte length, 1-byte CRC
			uint8_t payload[260]; //3-byte fixed payload, 255-byte variable payload, 2-byte CRC
		};
	};
} UartPacket;

void uart_init();
int uart_check_crc(UartPacket* packet);
int uart_transmit(UartPacket* packet);
