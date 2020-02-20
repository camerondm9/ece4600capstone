#pragma once

#include <stdint.h>

typedef struct Queue
{
	uint32_t mask;
	volatile uint32_t read;
	volatile uint32_t write;
	void* volatile buffer[];
} Queue;
_Static_assert(sizeof(Queue) == 12, "sizeof(Queue) == 12"); //32-bit, no padding

#define QUEUE_SIZE_1 0
#define QUEUE_SIZE_2 QUEUE_SIZE_1, QUEUE_SIZE_1
#define QUEUE_SIZE_4 QUEUE_SIZE_2, QUEUE_SIZE_2
#define QUEUE_SIZE_8 QUEUE_SIZE_4, QUEUE_SIZE_4
#define QUEUE_SIZE_16 QUEUE_SIZE_8, QUEUE_SIZE_8
#define QUEUE_SIZE_32 QUEUE_SIZE_16, QUEUE_SIZE_16
#define QUEUE_SIZE_64 QUEUE_SIZE_32, QUEUE_SIZE_32
#define QUEUE_SIZE_128 QUEUE_SIZE_64, QUEUE_SIZE_64
#define QUEUE_SIZE_256 QUEUE_SIZE_128, QUEUE_SIZE_128
#define QUEUE_SIZE(size) QUEUE_SIZE_ ## size
#define QUEUE(size) {size-1, 0, 0, {QUEUE_SIZE(size)}}

int queue_enqueue(Queue* q, void* v);
void* queue_dequeue(Queue* q);
