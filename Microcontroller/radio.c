#include "radio.h"
#include "pins.h"
#include <nrf.h>
#include <stddef.h>
#include <stdio.h>

#define DEMO_TIMER_INTERVAL (0x800000)

RadioPacket radio_packets[2];

void radio_init()
{
	//TODO: Radio supports MAC address matching for Bluetooth LE. We probably won't use this feature...

	//When receiving continuously... (but might transmit)
	NRF_RADIO->POWER = 1;
	NRF_RADIO->SHORTS = 0x171; //READY_START, ADDRESS_RSSISTART, END_START, ADDRESS_BCSTART, DISABLED_RSSISTOP

	NRF_RADIO->INTENSET = 0x49B; //READY, ADDRESS, END, DISABLED, RSSIEND, BCMATCH
	NRF_RADIO->FREQUENCY = 0x14; //2420 MHz
	NRF_RADIO->TXPOWER = 4; //+4 dB = maximum power
	NRF_RADIO->MODE = 1; //2Mbps Nordic
	NRF_RADIO->PCNF0 = 8; //LFLEN = 8-bit, S0LEN = 0, S1LEN = 0, PLEN = 8-bit, CRC not included in LEN
	NRF_RADIO->PCNF1 = 0x203003F; //MAXLEN = 63 bytes, STATLEN = 0, BALEN = 3-byte (+1 implicit), ENDIAN = little, WHITEEN = 1
	NRF_RADIO->BASE0 = 0xAAAAAADD;
	NRF_RADIO->BASE1 = 0xAAAAAADD;
	NRF_RADIO->PREFIX0 = 0xBBBBBBBB;
	NRF_RADIO->PREFIX1 = 0xBBBBBBBB;
	NRF_RADIO->TXADDRESS = 0;
	NRF_RADIO->RXADDRESSES = 0xFF;
	NRF_RADIO->CRCCNF = 3; //LEN = 3 bytes, Include address in CRC calculation
	NRF_RADIO->CRCPOLY = 0xD781EB; //From Koopman's table, provides HD=6 for packets less than 2026 bits = 253 bytes (excluding CRC)
	NRF_RADIO->CRCINIT = 0xFFFFFF;
	NRF_RADIO->MODECNF0 = 0x21; //Fast ramp-up, Transmit center frequency when idle
	NVIC_EnableIRQ(RADIO_IRQn);
	NRF_RADIO->PACKETPTR = (uint32_t)&radio_packets[0];
	NRF_RADIO->TASKS_RXEN = 1;
}

uint32_t demo_timestamp_received = 0;
uint32_t* demo_timestamp = &demo_timestamp_received;
//0 - Receive
//1 - Transmit
uint32_t demo_state = 0;
uint32_t next_state = 0;

uint32_t demo_offset = 0;

void radio_test_loop()
{
	uint32_t sw1 = 0;
	uint32_t sw2 = 0;
	while (1)
	{
		//SW1...
		sw1 = (sw1 << 1) | ((NRF_GPIO->IN & (1 << PIN_SW1)) != 0);
		if ((sw1 & 0xFF) == 0xFE)
		{
			//Button pushed, switch to transmit...
            next_state = 1;
			NRF_RADIO->TASKS_DISABLE = 1;
		}
		//SW2...
		sw2 = (sw2 << 1) | ((NRF_GPIO->IN & (1 << PIN_SW2)) != 0);
        if ((sw2 & 0xFF) == 0xFE)
		{
			//Button pushed...
			NRF_RNG->TASKS_START = 1;
		}
		//Delay...

		//TODO: 1ms
		for (int i = 0; i < 20000; i++) {}
	}
}

void radio_run_test()
{
	radio_init();

	//Configure GPIO pins...
	NRF_P0->PIN_CNF[PIN_LED_R] = 0x0030F; //sense disabled, high drive, pull-up, output
	NRF_P0->PIN_CNF[PIN_SW1] = 0x0000C; //sense disabled, standard drive, pull-up, input
	NRF_P0->PIN_CNF[PIN_SW2] = 0x0000C; //sense disabled, standard drive, pull-up, input

	//Configure GPIO tasks...
	NRF_GPIOTE->CONFIG[0] = 0x10003 | (PIN_LED_R << 8);

	//Configure timer...
	NRF_TIMER0->SHORTS = 0;
	NRF_TIMER0->INTENSET = 0x10000; //COMPARE[0]
	NRF_TIMER0->MODE = 0; //Timer mode
	NRF_TIMER0->BITMODE = 3; //32-bit
	NRF_TIMER0->PRESCALER = 0; //16 MHz
	NVIC_EnableIRQ(TIMER0_IRQn);
	NRF_TIMER0->TASKS_CLEAR = 1;
	NRF_TIMER0->CC[0] = DEMO_TIMER_INTERVAL;
	NRF_TIMER0->TASKS_START = 1;

	//Configure RNG...
	NRF_RNG->SHORTS = 1; //VALRDY_STOP
	NRF_RNG->CONFIG = 1; //Bias correction = Enabled
	NRF_RNG->INTENSET = 1; //VALRDY
	NVIC_EnableIRQ(RNG_IRQn);
	//NRF_RNG->TASKS_START = 1;

	//Configure PPI...
	NRF_PPI->CH[0].EEP = (uint32_t)&NRF_TIMER0->EVENTS_COMPARE[0];
	NRF_PPI->CH[0].TEP = (uint32_t)&NRF_GPIOTE->TASKS_OUT[0];
	NRF_PPI->CHEN = (1 << 0) | (1 << 26);
	//NRF_PPI->CHEN = 0;

	radio_test_loop();
}

void TIMER0_IRQHandler(void)
{
	if (NRF_TIMER0->EVENTS_COMPARE[0])
	{
		NRF_TIMER0->EVENTS_COMPARE[0] = 0;

        uint32_t current = NRF_TIMER0->CC[0] + demo_offset;
		uint32_t next = current & ~(DEMO_TIMER_INTERVAL - 1);
		while ((next - current - 800000) >= DEMO_TIMER_INTERVAL) //TODO: This probably doesn't need a loop. Figure out a better way
		{
			next += DEMO_TIMER_INTERVAL;
		}
		if (next & DEMO_TIMER_INTERVAL)
		{
			NRF_GPIOTE->CONFIG[0] = 0x010003 | (PIN_LED_R << 8);
			printf("Tick On, Offset: %u, Inc: %u, RS: %u\n", demo_offset, next - current, NRF_RADIO->STATE);
		}
		else
		{
			NRF_GPIOTE->CONFIG[0] = 0x120003 | (PIN_LED_R << 8);
			printf("Tick Off, Offset: %u, Inc: %u, RS: %u\n", demo_offset, next - current, NRF_RADIO->STATE);
		}
        NRF_TIMER0->CC[0] = next - demo_offset;
	}

	//TIMER0->CC[0] will be used for output waveform
	// via PPI: will trigger GPIOTE event to (set/clear) output pin
	// via interrupt: uC will toggle GPIOTE config, so next event causes opposite action

}

void RNG_IRQHandler(void)
{
	NRF_RNG->EVENTS_VALRDY = 0;

	//Capture current timer value
	NRF_TIMER0->TASKS_CAPTURE[2] = 1;

	uint32_t random = NRF_RNG->VALUE;
	random |= random << 8;
	random |= random << 16;
	random &= (DEMO_TIMER_INTERVAL - 1);

	demo_offset += random;

	uint32_t next = NRF_TIMER0->CC[0] + demo_offset;
	uint32_t current = NRF_TIMER0->CC[2] + demo_offset;
	if ((next - current) >= 0x80000000)
	{
		printf("Resyncing timer\n");
		next = current & ~(DEMO_TIMER_INTERVAL - 1);
		while ((next - current - 800000) >= DEMO_TIMER_INTERVAL) //TODO: This probably doesn't need a loop. Figure out a better way
		{
			next += DEMO_TIMER_INTERVAL;
		}
        NRF_TIMER0->CC[0] = next - demo_offset;
	}
}

void RADIO_IRQHandler(void)
{
	if (NRF_RADIO->EVENTS_ADDRESS)
	{
		NRF_RADIO->EVENTS_ADDRESS = 0;
		*demo_timestamp = NRF_TIMER0->CC[1] + demo_offset;

		printf("Address event at %u, RS: %u\n", *demo_timestamp, NRF_RADIO->STATE);

		//TIMER0->CC[1] will be used for radio timing sync (use PPI fixed channel 26: RADIO_ADDRESS->TIMER0_CAPTURE[1])
		// via RADIO interrupt: copy value from TIMER_CAPTURE[1] to (TX packet payload/RX packet timing-compare buffer)
	}
	if (NRF_RADIO->EVENTS_READY)
	{
		NRF_RADIO->EVENTS_READY = 0;
	}
	if (NRF_RADIO->EVENTS_RSSIEND)
	{
		NRF_RADIO->EVENTS_RSSIEND = 0;

		//TODO: Record RSSI sample

	}
	if (NRF_RADIO->EVENTS_BCMATCH)
	{
		NRF_RADIO->EVENTS_BCMATCH = 0;

		//TODO: Offset within packet reached

	}
	if (NRF_RADIO->EVENTS_END)
	{
		NRF_RADIO->EVENTS_END = 0;

		printf("Done\n");
		//TODO: Transmission or reception is complete

		if (demo_state == 0) //Receiving
		{
			if (radio_packets[0].payload[0] == 0 &&
				radio_packets[0].payload[1] == 0xAA &&
				radio_packets[0].payload[2] == 0xFF &&
				radio_packets[0].payload[3] == 0x23)
			{
				uint32_t* received_timestamp = (uint32_t*)&radio_packets[0].payload[4];
				uint32_t delta = *received_timestamp - demo_timestamp_received;
				printf("Synchronizing timer, delta: %u\n", delta);
				demo_offset += delta;
			}
			else
			{
				printf("Not my packet!\n");
			}
		}

		if (NRF_RADIO->CRCSTATUS) {}
		if (NRF_RADIO->PDUSTAT & 1)
		{

			//TODO: Packet truncated to MAXLEN

		}
	}
	if (NRF_RADIO->EVENTS_DISABLED)
	{
		NRF_RADIO->EVENTS_DISABLED = 0;

		//TODO: Once we get this working, it may be possible to shorten the time spend in the disabled state by using the DISABLED_TXEN and DISABLED_RXEN shortcuts

		demo_state = next_state;
		next_state = 0;

		if (demo_state)
		{
			printf("Transmitting...\n");
			NRF_RADIO->SHORTS = 0x143; //READY_START, END_DISABLE, ADDRESS_BCSTART, DISABLED_RSSISTOP
			radio_packets[1].length = 8;
			radio_packets[1].payload[0] = 0;
			radio_packets[1].payload[1] = 0xAA;
			radio_packets[1].payload[2] = 0xFF;
			radio_packets[1].payload[3] = 0x23;
			demo_timestamp = (uint32_t*)&radio_packets[1].payload[4];
			NRF_RADIO->PACKETPTR = (uint32_t)&radio_packets[1];
			NRF_RADIO->TASKS_TXEN = 1;
		}
		else
		{
			printf("Receiving...\n");
			NRF_RADIO->SHORTS = 0x171; //READY_START, ADDRESS_RSSISTART, END_START, ADDRESS_BCSTART, DISABLED_RSSISTOP
			demo_timestamp = &demo_timestamp_received;
			NRF_RADIO->PACKETPTR = (uint32_t)&radio_packets[0];
			NRF_RADIO->TASKS_RXEN = 1;
		}
	}
}
