#ifndef DEVKIT
//		Pin			Net				Direction
//----------------------------------------------------------------------
//DEBUG:
//		P0.21		nRESET				IO
//		SWDIO		SWDIO				IO
//		SWCLK		SWCLK				I
#define PIN_nRESET (21)
//GPIO:
//		P0.01		ACC-INT2			I
//		P0.03		ACC-INT1			I
//		P0.22		HV-EN				 O
//		P0.23		HV-OK				I
//		P0.25		SW1					I
//		P0.26		SW2					I
//		P0.27		FPGA-nCONFIG		 O
//		P0.28		FPGA-nSTATUS		I
//		P0.29		FPGA-CONF_DONE		I
//		P0.30		FPGA-INIT_DONE		I
//		P0.31		FPGA-CRC_ERROR		I
//		(Chip selects for SPI will also be controlled as GPIO)
#define PIN_ACC_INT2 (1)
#define PIN_ACC_INT1 (3)
#define PIN_HV_EN (22)
#define PIN_HV_OK (23)
#define PIN_SW1 (25)
#define PIN_SW2 (26)
#define PIN_FPGA_nCONFIG (27)
#define PIN_FPGA_nSTATUS (28)
#define PIN_FPGA_CONF_DONE (29)
#define PIN_FPGA_INIT_DONE (30)
#define PIN_FPGA_CRC_ERROR (31)

//PWM:
//		P0.16		LED-B				 O
//		P0.17		LED-G				 O
//		P0.18		LED-R				 O
#define PIN_LED_B (16)
#define PIN_LED_G (17)
#define PIN_LED_R (18)

//UART:
//		P0.19		MICRO-TX			 O
//		P0.20		MICRO-RX			I
#define PIN_MICRO_TX (19)
#define PIN_MICRO_RX (20)

//SPI:
//		P0.05		FPGA-DIN			IO
//		P0.06		FPGA-CLK			 O
//		P0.07		FPGA-DOUT			IO
//		P0.08		FPGA-CS	(as GPIO)	 O
#define PIN_FPGA_DIN (5)
#define PIN_FPGA_CLK (6)
#define PIN_FPGA_DOUT (7)
#define PIN_FPGA_CS (8)

//I2C:
//		P0.00		SCL					 O
//		P0.02		SDA					IO
#define PIN_SCL (0)
#define PIN_SDA (2)

//ADC:
//		P0.04/AIN2	BATT				I (analog)
#define PIN_BATT (4)

//LINK:
//		P0.09		LINK5				IO
//		P0.10		LINK4				IO
//		P0.11		LINK3				IO
//		P0.12		LINK2				IO
//		P0.13		LINK1				IO
//		P0.14		LINK0				IO
#define PIN_LINK5 (9)
#define PIN_LINK4 (10)
#define PIN_LINK3 (11)
#define PIN_LINK2 (12)
#define PIN_LINK1 (13)
#define PIN_LINK0 (14)

//UNUSED:
//		P0.15
//		P0.24

#else
//		Pin			Net
//--------------------------------
#define PIN_nRESET (21)

//GPIO:
//		P0.13		SW1
//		P0.14		SW2
//		P0.15		SW3
//		P0.16		SW4
#define PIN_SW1 (13)
#define PIN_SW2 (14)

//PWM:
//		P0.17		LED1
//		P0.18		LED2
//		P0.19		LED3
//		P0.20		LED4
#define PIN_LED_G (18)
#define PIN_LED_R (19)

//UART:
//		P0.06		TXD
//		P0.08		RXD
#define PIN_MICRO_TX (6)
#define PIN_MICRO_RX (8)

//SPI: (not connected)
#define PIN_FPGA_DIN (22)
#define PIN_FPGA_CLK (23)
#define PIN_FPGA_DOUT (24)
#define PIN_FPGA_CS (25)

#endif
