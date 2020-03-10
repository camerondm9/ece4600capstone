#include "radio.h"
#include <nrf.h>

void radio_init()
{
	//TODO: CRC: Probably use Koopman's 0xbd80de polynomial (roughly optimal for our packet lengths)
	//TODO: Some shortcuts will probably be useful (ready->start, end->disable, address->bcstart, etc.)

	//TODO: Radio supports MAC address matching for Bluetooth LE. We probably won't use this feature...

	//When receiving continuously... (but might transmit)
	NRF_RADIO->SHORTS = 0x175; //READY_START, DISABLED_TXEN, ADDRESS_RSSISTART, END_START, ADDRESS_BCSTART, DISABLED_RSSISTOP
	//When transmitting a single packet, and then receiving again...
	NRF_RADIO->SHORTS = 0x14B; //READY_START, END_DISABLE, DISABLED_RXEN, ADDRESS_BCSTART, DISABLED_RSSISTOP
	//When receiving, but shutting down...
	NRF_RADIO->SHORTS = 3; //READY_START, END_DISABLE

	NRF_RADIO->INTENSET = 0;
	NRF_RADIO->FREQUENCY = 0;
	NRF_RADIO->TXPOWER = 0; //0 dB seems like a reasonable default
	NRF_RADIO->MODE = 1; //2Mbps Nordic
	NRF_RADIO->PCNF0 = 8; //LFLEN = 8-bit, S0LEN = 0, S1LEN = 0, PLEN = 8-bit, CRC not included in LEN
	NRF_RADIO->PCNF1 = 0x203003F; //MAXLEN = 63 bytes, STATLEN = 0, BALEN = 3-byte (+1 implicit), ENDIAN = little, WHITEEN = 1

	NRF_RADIO->CRCCNF = 3; //LEN = 3 bytes, Include address in CRC calculation
	NRF_RADIO->CRCPOLY = 0x17B01BD; //From Koopman's table, provides HD=6 for packets less than 2026 bits
	//TODO: Check whether the CRC generator matches our expectations. The register may not provide at implicit 1-bit which is required. If not, choose a 23-bit polynomial...
	NRF_RADIO->CRCINIT = 0xFFFFFF;
	NRF_RADIO->MODECNF0 = 0x21; //Fast ramp-up, Transmit center frequency when idle
	NRF_RADIO->POWER = 1;
	NVIC_EnableIRQ(RADIO_IRQn);
}

void radio_init_test()
{
	NRF_GPIOTE;

	NRF_TIMER0->SHORTS = 0;
	NRF_TIMER0->INTENSET = 1; //COMPARE[0]
	NRF_TIMER0->MODE = 0; //Timer mode
	NRF_TIMER0->BITMODE = 3; //32-bit
	NRF_TIMER0->PRESCALER = 0; //16 MHz
	NVIC_EnableIRQ(TIMER0_IRQn);

	NRF_RNG->SHORTS = 1; //VALRDY_STOP
	NRF_RNG->CONFIG = 1; //Bias correction = Enabled
	NRF_RNG->INTENSET = 1; //VALRDY
	NVIC_EnableIRQ(RNG_IRQn);
	NRF_RNG->TASKS_START = 1;
}

void radio_test_loop(void)
{

	//TIMER0->CC[0] will be used for output waveform
	// via PPI: will trigger GPIOTE event to (set/clear) output pin
	// via interrupt: uC will toggle GPIOTE config, so next event causes opposite action

	//TIMER0->CC[1] will be used for radio timing sync (use PPI fixed channel 26: RADIO_ADDRESS->TIMER0_CAPTURE[1])
	// via RADIO interrupt: copy value from TIMER_CAPTURE[1] to (TX packet payload/RX packet timing-compare buffer)

}

void TIMER0_IRQHandler(void)
{

}

void RADIO_IRQHandler(void)
{
	if (NRF_RADIO->EVENTS_ADDRESS)
	{
		NRF_RADIO->EVENTS_ADDRESS = 0;

		//TODO: Copy TIMER0_CAPTURE[1] value into appropriate memory address

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

		//TODO: Transmission or reception is complete

		if (NRF_RADIO->CRCSTATUS) {}
		if (NRF_RADIO->PDUSTAT & 1)
		{

			//TODO: Packet truncated to MAXLEN

		}
	}
}
