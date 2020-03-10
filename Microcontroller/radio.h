#pragma once

#include <stdint.h>
#include "queue.h"

typedef struct RadioPacket
{
	uint8_t length;
	uint8_t payload[63];
} RadioPacket;
