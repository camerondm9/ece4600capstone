#include <stdint.h>
#include <cmsis_gcc.h>
#include "queue.h"

int queue_enqueue(Queue* q, void* v)
{
	//Reserve a slot...
	uint32_t write;
	void* volatile* p;
	do
	{
		write = __LDREXW(&q->write);
		p = &q->buffer[write];
		if (*p != 0)
		{
			__CLREX();
			return 0;
		}
	} while (__STREXW((write + 1) & q->mask, &q->write));
	//Write to the slot...
	*p = v;
	return 1;
}

void* queue_dequeue(Queue* q)
{
	//Reserve a slot...
	uint32_t read;
	void* volatile* p;
	do
	{
		read = __LDREXW(&q->read);
		p = &q->buffer[read];
		if (*p == 0)
		{
			__CLREX();
			return 0;
		}
	} while (__STREXW((read + 1) & q->mask, &q->read));
	//Read from the slot...
	void* result = *p;
	*p = 0;
	return result;
}
