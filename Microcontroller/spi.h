#pragma once

#include <stdint.h>

#define SPI_FLAG_INLINE (1)
#define SPI_FLAG_READ (2)
#define SPI_FLAG_WRITE (4)

#define SPI_FLAG_FLASH (0x40)
#define SPI_FLAG_FPGA (0x80)

typedef struct SpiTransfer
{
    uint16_t length;
    uint8_t flags;
    uint8_t buffer[1]; //Actually buffer[5], since buffer can overlap pointer (when flags are set)
    void* pointer;
} SpiTransfer;
_Static_assert(sizeof(SpiTransfer) == 8, "sizeof(Queue) == 8"); //32-bit, no padding

typedef struct SpiBatch
{
	//TODO: Should we have a separate SpiBatch struct, or should the Transfers form a linked-list?
} SpiBatch;

void spi_init();
