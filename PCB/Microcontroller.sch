EESchema Schematic File Version 4
LIBS:Capstone-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 8
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Parts:BMD-360 U?
U 1 1 5DCF155F
P 3250 2600
F 0 "U?" H 3250 3765 50  0000 C CNN
F 1 "BMD-360" H 3250 3674 50  0000 C CNN
F 2 "Parts:BMD-360" H 3250 1400 50  0001 C BNN
F 3 "https://www.u-blox.com/en/product/bmd-360-open-cpu" H 3350 1300 50  0001 L BNN
	1    3250 2600
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0125
U 1 1 5DCF44EC
P 4050 1700
F 0 "#PWR0125" H 4050 1550 50  0001 C CNN
F 1 "+3V3" H 4065 1873 50  0000 C CNN
F 2 "" H 4050 1700 50  0001 C CNN
F 3 "" H 4050 1700 50  0001 C CNN
	1    4050 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 1700 4050 1700
$Comp
L power:GND #PWR0126
U 1 1 5DCF5A78
P 4050 3600
F 0 "#PWR0126" H 4050 3350 50  0001 C CNN
F 1 "GND" H 4055 3427 50  0000 C CNN
F 2 "" H 4050 3600 50  0001 C CNN
F 3 "" H 4050 3600 50  0001 C CNN
	1    4050 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 3600 4050 3600
Text GLabel 4000 3300 2    50   Input ~ 0
MICRO-SWCLK
Text GLabel 4000 3400 2    50   Input ~ 0
MICRO-SWDIO
Wire Wire Line
	3950 3300 4000 3300
Wire Wire Line
	4000 3400 3950 3400
$Comp
L power:+3V3 #PWR0127
U 1 1 5DCF6F82
P 10100 2150
F 0 "#PWR0127" H 10100 2000 50  0001 C CNN
F 1 "+3V3" H 10115 2323 50  0000 C CNN
F 2 "" H 10100 2150 50  0001 C CNN
F 3 "" H 10100 2150 50  0001 C CNN
	1    10100 2150
	1    0    0    -1  
$EndComp
$Comp
L Parts:ENS210 U?
U 1 1 5DD2033C
P 2500 5600
F 0 "U?" H 2500 5990 50  0000 C CNN
F 1 "ENS210" H 2500 5899 50  0000 C CNN
F 2 "Parts:QFN4-PAD" H 2250 5300 50  0001 L BNN
F 3 "https://ams.com/ens210" H 2450 4950 50  0001 L BNN
	1    2500 5600
	1    0    0    -1  
$EndComp
$Comp
L Parts:LIS2DE12 U?
U 1 1 5DD21338
P 2600 6550
F 0 "U?" H 2600 7115 50  0000 C CNN
F 1 "LIS2DE12" H 2600 7024 50  0000 C CNN
F 2 "Parts:LGA12" H 2875 6975 50  0001 L BNN
F 3 "https://www.st.com/content/st_com/en/products/mems-and-sensors/accelerometers/lis2de12.html" H 1800 7700 50  0001 L BNN
	1    2600 6550
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 5DCE5B76
P 9850 3300
F 0 "SW?" H 9850 3585 50  0000 C CNN
F 1 "SW_Push" H 9850 3494 50  0000 C CNN
F 2 "Parts:PTS645SK43SM" H 9850 3500 50  0001 C CNN
F 3 "https://www.ckswitches.com/products/tactile/PTS645/" H 9850 3500 50  0001 C CNN
	1    9850 3300
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5DE86491
P 2950 5550
F 0 "#PWR?" H 2950 5400 50  0001 C CNN
F 1 "+3V3" H 2965 5723 50  0000 C CNN
F 2 "" H 2950 5550 50  0001 C CNN
F 3 "" H 2950 5550 50  0001 C CNN
	1    2950 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 5550 2950 5550
$Comp
L power:GND #PWR?
U 1 1 5DE86F13
P 2950 5750
F 0 "#PWR?" H 2950 5500 50  0001 C CNN
F 1 "GND" H 2955 5577 50  0000 C CNN
F 2 "" H 2950 5750 50  0001 C CNN
F 3 "" H 2950 5750 50  0001 C CNN
	1    2950 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 5650 2900 5650
Wire Wire Line
	2900 5650 2900 5750
Wire Wire Line
	2850 5750 2900 5750
Connection ~ 2900 5750
Wire Wire Line
	2900 5750 2950 5750
$Comp
L power:+3V3 #PWR?
U 1 1 5DE87DD2
P 3200 6550
F 0 "#PWR?" H 3200 6400 50  0001 C CNN
F 1 "+3V3" H 3215 6723 50  0000 C CNN
F 2 "" H 3200 6550 50  0001 C CNN
F 3 "" H 3200 6550 50  0001 C CNN
	1    3200 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 6550 3150 6550
$Comp
L power:GND #PWR?
U 1 1 5DE88898
P 3200 6750
F 0 "#PWR?" H 3200 6500 50  0001 C CNN
F 1 "GND" H 3205 6577 50  0000 C CNN
F 2 "" H 3200 6750 50  0001 C CNN
F 3 "" H 3200 6750 50  0001 C CNN
	1    3200 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 6550 3150 6650
Wire Wire Line
	3150 6650 3100 6650
Connection ~ 3150 6550
Wire Wire Line
	3150 6550 3200 6550
Wire Wire Line
	3100 6750 3200 6750
Text GLabel 2500 2000 0    50   Input ~ 0
MICRO-TX
Text GLabel 2500 2100 0    50   Input ~ 0
MICRO-RX
Text GLabel 8950 3300 0    50   Input ~ 0
MICRO-nRESET
Text GLabel 2500 3400 0    50   Input ~ 0
FPGA-nSTATUS
Text GLabel 2500 3000 0    50   Input ~ 0
FPGA-DCLK
Text GLabel 2500 3100 0    50   Input ~ 0
FPGA-DIN
Text GLabel 2500 3500 0    50   Input ~ 0
FPGA-nCONFIG
Text GLabel 2500 3200 0    50   Input ~ 0
FPGA-CONF_DONE
Text GLabel 2500 3600 0    50   Input ~ 0
FPGA-INIT_DONE
Text GLabel 2500 3300 0    50   Input ~ 0
FPGA-CRC_ERROR
Text Label 1950 5550 0    50   ~ 0
SCL
Text Label 1950 5650 0    50   ~ 0
SDA
Text Label 1900 6350 0    50   ~ 0
SCL
Text Label 1900 6450 0    50   ~ 0
SDA
Wire Wire Line
	1950 5550 2150 5550
Wire Wire Line
	2150 5650 1950 5650
Wire Wire Line
	2100 6350 1900 6350
Wire Wire Line
	1900 6450 2100 6450
Text Label 4000 1900 0    50   ~ 0
SCL
Text Label 4000 2000 0    50   ~ 0
SDA
Wire Wire Line
	2500 3600 2550 3600
Wire Wire Line
	2550 3500 2500 3500
Wire Wire Line
	2500 3400 2550 3400
Wire Wire Line
	2550 3300 2500 3300
Wire Wire Line
	2500 3200 2550 3200
Wire Wire Line
	2550 3100 2500 3100
Wire Wire Line
	2500 3000 2550 3000
Text GLabel 2500 2900 0    50   Input ~ 0
FPGA-DOUT
Wire Wire Line
	2500 2900 2550 2900
Text Notes 2250 1350 0    50   ~ 0
Note: Low-speed is defined by Nordic Semi as < 10kHz
$Comp
L Device:R R?
U 1 1 5DF9D7B6
P 9200 2150
F 0 "R?" V 8993 2150 50  0000 C CNN
F 1 "47" V 9084 2150 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 9130 2150 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT47R0/RMCF0603FT47R0CT-ND/1942954" H 9200 2150 50  0001 C CNN
	1    9200 2150
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5DF9DA34
P 9450 1950
F 0 "R?" V 9243 1950 50  0000 C CNN
F 1 "30" V 9334 1950 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 9380 1950 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT30R0/RMCF0603FT30R0CT-ND/4425092" H 9450 1950 50  0001 C CNN
	1    9450 1950
	0    1    1    0   
$EndComp
$Comp
L Parts:LED_ABGR D?
U 1 1 5DCF3816
P 9850 2150
F 0 "D?" H 9850 2647 50  0000 C CNN
F 1 "LED_ABGR" H 9850 2556 50  0000 C CNN
F 2 "Parts:CLMVC-FKA" H 9850 1725 50  0001 C CNN
F 3 "https://www.cree.com/led-components/media/documents/1273-CLMVC-FKA.pdf" H 9850 2100 50  0001 C CNN
	1    9850 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DFB4959
P 9450 2350
F 0 "R?" V 9243 2350 50  0000 C CNN
F 1 "30" V 9334 2350 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 9380 2350 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT30R0/RMCF0603FT30R0CT-ND/4425092" H 9450 2350 50  0001 C CNN
	1    9450 2350
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5DFB4DBC
P 8950 2350
F 0 "R?" V 8743 2350 50  0000 C CNN
F 1 "47" V 8834 2350 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 8880 2350 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT47R0/RMCF0603FT47R0CT-ND/1942954" H 8950 2350 50  0001 C CNN
	1    8950 2350
	0    1    1    0   
$EndComp
Wire Wire Line
	10050 2150 10100 2150
Wire Wire Line
	9600 1950 9650 1950
Wire Wire Line
	9650 2350 9600 2350
Wire Wire Line
	9650 2150 9350 2150
Wire Wire Line
	9300 2350 9100 2350
Wire Wire Line
	3950 2400 4000 2400
Wire Wire Line
	3950 2200 4000 2200
Wire Wire Line
	3950 2300 4000 2300
Text Label 4000 2200 0    50   ~ 0
LED-R
Text Label 4000 2300 0    50   ~ 0
LED-G
Text Label 4000 2400 0    50   ~ 0
LED-B
Text Label 8550 2350 0    50   ~ 0
LED-R
Wire Wire Line
	8550 1950 9300 1950
Wire Wire Line
	8800 2350 8550 2350
Wire Wire Line
	8550 2150 9050 2150
Text Label 8550 2150 0    50   ~ 0
LED-G
Text Label 8550 1950 0    50   ~ 0
LED-B
Text Label 4000 2100 0    50   ~ 0
nRESET
Wire Wire Line
	3950 2100 4250 2100
$Comp
L Device:R R?
U 1 1 5DFF7E66
P 4400 2100
F 0 "R?" V 4193 2100 50  0000 C CNN
F 1 "10k" V 4284 2100 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4330 2100 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT10K0/RMCF0603FT10K0CT-ND/1943057" H 4400 2100 50  0001 C CNN
	1    4400 2100
	0    1    1    0   
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5DFFAB56
P 4600 2100
F 0 "#PWR?" H 4600 1950 50  0001 C CNN
F 1 "+3V3" V 4600 2300 50  0000 C CNN
F 2 "" H 4600 2100 50  0001 C CNN
F 3 "" H 4600 2100 50  0001 C CNN
	1    4600 2100
	0    1    1    0   
$EndComp
Wire Wire Line
	4550 2100 4600 2100
Text Label 9000 3300 0    50   ~ 0
nRESET
$Comp
L power:GND #PWR?
U 1 1 5DFFDC40
P 10100 3300
F 0 "#PWR?" H 10100 3050 50  0001 C CNN
F 1 "GND" V 10100 3125 50  0000 C CNN
F 2 "" H 10100 3300 50  0001 C CNN
F 3 "" H 10100 3300 50  0001 C CNN
	1    10100 3300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10050 3300 10100 3300
$Comp
L Device:R R?
U 1 1 5E0004EB
P 9450 3300
F 0 "R?" V 9243 3300 50  0000 C CNN
F 1 "1k" V 9334 3300 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 9380 3300 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT1K00/RMCF0603FT1K00CT-ND/1942996" H 9450 3300 50  0001 C CNN
	1    9450 3300
	0    1    1    0   
$EndComp
Wire Wire Line
	9600 3300 9650 3300
Wire Wire Line
	8950 3300 9300 3300
$Comp
L Switch:SW_Push SW?
U 1 1 5E0092F1
P 9850 3800
F 0 "SW?" H 9850 4085 50  0000 C CNN
F 1 "SW_Push" H 9850 3994 50  0000 C CNN
F 2 "Parts:PTS645SK43SM" H 9850 4000 50  0001 C CNN
F 3 "https://www.ckswitches.com/products/tactile/PTS645/" H 9850 4000 50  0001 C CNN
	1    9850 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E009307
P 9450 3800
F 0 "R?" V 9243 3800 50  0000 C CNN
F 1 "1k" V 9334 3800 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 9380 3800 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT1K00/RMCF0603FT1K00CT-ND/1942996" H 9450 3800 50  0001 C CNN
	1    9450 3800
	0    1    1    0   
$EndComp
Wire Wire Line
	9600 3800 9650 3800
$Comp
L power:GND #PWR?
U 1 1 5E010FCC
P 10100 3800
F 0 "#PWR?" H 10100 3550 50  0001 C CNN
F 1 "GND" V 10100 3625 50  0000 C CNN
F 2 "" H 10100 3800 50  0001 C CNN
F 3 "" H 10100 3800 50  0001 C CNN
	1    10100 3800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10050 3800 10100 3800
$Comp
L Switch:SW_Push SW?
U 1 1 5E014F90
P 9850 4300
F 0 "SW?" H 9850 4585 50  0000 C CNN
F 1 "SW_Push" H 9850 4494 50  0000 C CNN
F 2 "Parts:PTS645SK43SM" H 9850 4500 50  0001 C CNN
F 3 "https://www.ckswitches.com/products/tactile/PTS645/" H 9850 4500 50  0001 C CNN
	1    9850 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E014F9A
P 9450 4300
F 0 "R?" V 9243 4300 50  0000 C CNN
F 1 "1k" V 9334 4300 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 9380 4300 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT1K00/RMCF0603FT1K00CT-ND/1942996" H 9450 4300 50  0001 C CNN
	1    9450 4300
	0    1    1    0   
$EndComp
Wire Wire Line
	9600 4300 9650 4300
$Comp
L power:GND #PWR?
U 1 1 5E014FA5
P 10100 4300
F 0 "#PWR?" H 10100 4050 50  0001 C CNN
F 1 "GND" V 10100 4125 50  0000 C CNN
F 2 "" H 10100 4300 50  0001 C CNN
F 3 "" H 10100 4300 50  0001 C CNN
	1    10100 4300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10050 4300 10100 4300
Text Label 4000 2500 0    50   ~ 0
SW1
Text Label 4000 2600 0    50   ~ 0
SW2
Wire Wire Line
	3950 2500 4000 2500
Wire Wire Line
	4000 2600 3950 2600
$Comp
L power:+3V3 #PWR?
U 1 1 5E0201C5
P 2000 6250
F 0 "#PWR?" H 2000 6100 50  0001 C CNN
F 1 "+3V3" H 2015 6423 50  0000 C CNN
F 2 "" H 2000 6250 50  0001 C CNN
F 3 "" H 2000 6250 50  0001 C CNN
	1    2000 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 6250 2100 6250
$Comp
L power:GND #PWR?
U 1 1 5E022CDD
P 2000 6750
F 0 "#PWR?" H 2000 6500 50  0001 C CNN
F 1 "GND" H 2005 6577 50  0000 C CNN
F 2 "" H 2000 6750 50  0001 C CNN
F 3 "" H 2000 6750 50  0001 C CNN
	1    2000 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 6750 2100 6750
Text Notes 1800 4750 0    50   ~ 0
TODO: Add decoupling capacitors to all ICs
$Comp
L power:+3V3 #PWR?
U 1 1 5E02953A
P 2050 6550
F 0 "#PWR?" H 2050 6400 50  0001 C CNN
F 1 "+3V3" V 2050 6750 50  0000 C CNN
F 2 "" H 2050 6550 50  0001 C CNN
F 3 "" H 2050 6550 50  0001 C CNN
	1    2050 6550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2050 6550 2100 6550
$Comp
L Device:R R?
U 1 1 5E02C855
P 4650 2000
F 0 "R?" V 4443 2000 50  0000 C CNN
F 1 "3.3k" V 4534 2000 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4580 2000 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT3K30/RMCF0603FT3K30CT-ND/1943024" H 4650 2000 50  0001 C CNN
	1    4650 2000
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5E033214
P 4900 1900
F 0 "R?" V 4693 1900 50  0000 C CNN
F 1 "3.3k" V 4784 1900 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4830 1900 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT3K30/RMCF0603FT3K30CT-ND/1943024" H 4900 1900 50  0001 C CNN
	1    4900 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	3950 2000 4500 2000
Wire Wire Line
	3950 1900 4750 1900
$Comp
L power:+3V3 #PWR?
U 1 1 5E03E227
P 4850 2000
F 0 "#PWR?" H 4850 1850 50  0001 C CNN
F 1 "+3V3" V 4850 2200 50  0000 C CNN
F 2 "" H 4850 2000 50  0001 C CNN
F 3 "" H 4850 2000 50  0001 C CNN
	1    4850 2000
	0    1    1    0   
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5E03E918
P 5100 1900
F 0 "#PWR?" H 5100 1750 50  0001 C CNN
F 1 "+3V3" V 5100 2100 50  0000 C CNN
F 2 "" H 5100 1900 50  0001 C CNN
F 3 "" H 5100 1900 50  0001 C CNN
	1    5100 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	5050 1900 5100 1900
Wire Wire Line
	4800 2000 4850 2000
Text Label 9100 3800 0    50   ~ 0
SW1
Wire Wire Line
	9100 3800 9300 3800
Text Label 9100 4300 0    50   ~ 0
SW2
Wire Wire Line
	9100 4300 9300 4300
Text Label 3150 6250 0    50   ~ 0
ACC-INT1
Text Label 3150 6350 0    50   ~ 0
ACC-INT2
Wire Wire Line
	3100 6250 3150 6250
Wire Wire Line
	3100 6350 3150 6350
Text Label 2150 1700 0    50   ~ 0
ACC-INT1
Text Label 2150 1800 0    50   ~ 0
ACC-INT2
Wire Wire Line
	2150 1700 2550 1700
Wire Wire Line
	2550 1800 2150 1800
Wire Wire Line
	2500 2100 2550 2100
Wire Wire Line
	2500 2000 2550 2000
Text GLabel 2500 2400 0    50   Input ~ 0
FPGA-LINK0
Text GLabel 2500 2500 0    50   Input ~ 0
FPGA-LINK1
Text GLabel 2500 2600 0    50   Input ~ 0
FPGA-LINK2
Text GLabel 2500 2700 0    50   Input ~ 0
FPGA-LINK3
Text GLabel 2500 2800 0    50   Input ~ 0
FPGA-LINK4
Wire Wire Line
	2500 2800 2550 2800
Wire Wire Line
	2550 2700 2500 2700
Wire Wire Line
	2500 2600 2550 2600
Wire Wire Line
	2550 2500 2500 2500
Wire Wire Line
	2500 2400 2550 2400
$EndSCHEMATC
