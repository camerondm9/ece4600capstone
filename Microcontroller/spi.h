#pragma once

#include <stdint.h>
#include "queue.h"

#define SPI_FLAG_INLINE (1)
#define SPI_FLAG_READ (2)
#define SPI_FLAG_WRITE (4)

#define SPI_FLAG_FLASH (0x40)
#define SPI_FLAG_FPGA (0x80)

extern Queue spi_txq;
extern Queue spi_rxq;
extern Queue spi_emq;

typedef struct SpiTransfer
{
	uint8_t kind;
    uint8_t flags;
    uint8_t length;
    uint8_t buffer[1]; //Actually buffer[5], since buffer can overlap pointer (when flags are set)
    void* pointer;
	struct SpiTransfer* next;
} SpiTransfer;
_Static_assert(sizeof(SpiTransfer) == 12, "sizeof(SpiTransfer) == 12"); //32-bit, no padding

void spi_init();
int spi_transfer(SpiTransfer* transfer);
