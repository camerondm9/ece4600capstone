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
P 5200 3300
F 0 "U?" H 5200 4465 50  0000 C CNN
F 1 "BMD-360" H 5200 4374 50  0000 C CNN
F 2 "Parts:BMD-360" H 5200 2100 50  0001 C BNN
F 3 "https://www.u-blox.com/en/product/bmd-360-open-cpu" H 5300 2000 50  0001 L BNN
	1    5200 3300
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0125
U 1 1 5DCF44EC
P 6000 2400
F 0 "#PWR0125" H 6000 2250 50  0001 C CNN
F 1 "+3V3" H 6015 2573 50  0000 C CNN
F 2 "" H 6000 2400 50  0001 C CNN
F 3 "" H 6000 2400 50  0001 C CNN
	1    6000 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 2400 6000 2400
$Comp
L power:GND #PWR0126
U 1 1 5DCF5A78
P 6000 4300
F 0 "#PWR0126" H 6000 4050 50  0001 C CNN
F 1 "GND" H 6005 4127 50  0000 C CNN
F 2 "" H 6000 4300 50  0001 C CNN
F 3 "" H 6000 4300 50  0001 C CNN
	1    6000 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 4300 6000 4300
Text GLabel 5950 4000 2    50   Input ~ 0
MICRO-SWCLK
Text GLabel 5950 4100 2    50   Input ~ 0
MICRO-SWDIO
Wire Wire Line
	5900 4000 5950 4000
Wire Wire Line
	5950 4100 5900 4100
$Comp
L power:+3V3 #PWR0127
U 1 1 5DCF6F82
P 1750 3200
F 0 "#PWR0127" H 1750 3050 50  0001 C CNN
F 1 "+3V3" H 1765 3373 50  0000 C CNN
F 2 "" H 1750 3200 50  0001 C CNN
F 3 "" H 1750 3200 50  0001 C CNN
	1    1750 3200
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
P 7250 4650
F 0 "SW?" H 7250 4935 50  0000 C CNN
F 1 "SW_Push" H 7250 4844 50  0000 C CNN
F 2 "Parts:PTS645SK43SM" H 7250 4850 50  0001 C CNN
F 3 "https://www.ckswitches.com/products/tactile/PTS645/" H 7250 4850 50  0001 C CNN
	1    7250 4650
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
Text GLabel 5600 5000 0    50   Input ~ 0
MICRO-TX
Text GLabel 5600 5100 0    50   Input ~ 0
MICRO-RX
Text GLabel 5950 2800 2    50   Input ~ 0
MICRO-nRESET
Wire Wire Line
	5950 2800 5900 2800
Text GLabel 4450 4100 0    50   Input ~ 0
FPGA-nSTATUS
Text GLabel 4450 3700 0    50   Input ~ 0
FPGA-DCLK
Text GLabel 4450 3800 0    50   Input ~ 0
FPGA-DIN
Text GLabel 4450 4200 0    50   Input ~ 0
FPGA-nCONFIG
Text GLabel 4450 3900 0    50   Input ~ 0
FPGA-CONF_DONE
Text GLabel 4450 4300 0    50   Input ~ 0
FPGA-INIT_DONE
Text GLabel 4450 4000 0    50   Input ~ 0
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
Text Label 5950 2600 0    50   ~ 0
SCL
Text Label 5950 2700 0    50   ~ 0
SDA
Wire Wire Line
	5950 2600 5900 2600
Wire Wire Line
	5900 2700 5950 2700
Wire Wire Line
	4450 4300 4500 4300
Wire Wire Line
	4500 4200 4450 4200
Wire Wire Line
	4450 4100 4500 4100
Wire Wire Line
	4500 4000 4450 4000
Wire Wire Line
	4450 3900 4500 3900
Wire Wire Line
	4500 3800 4450 3800
Wire Wire Line
	4450 3700 4500 3700
Text GLabel 4450 3600 0    50   Input ~ 0
FPGA-DOUT
Wire Wire Line
	4450 3600 4500 3600
Wire Wire Line
	1750 3200 1800 3200
Text Notes 4200 2050 0    50   ~ 0
Note: Low-speed is defined by Nordic Semi as < 10kHz
$Comp
L Device:R R?
U 1 1 5DF9D7B6
P 2650 3200
F 0 "R?" V 2443 3200 50  0000 C CNN
F 1 "47" V 2534 3200 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 2580 3200 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT47R0/RMCF0603FT47R0CT-ND/1942954" H 2650 3200 50  0001 C CNN
	1    2650 3200
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5DF9DA34
P 2400 3000
F 0 "R?" V 2193 3000 50  0000 C CNN
F 1 "30" V 2284 3000 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 2330 3000 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT30R0/RMCF0603FT30R0CT-ND/4425092" H 2400 3000 50  0001 C CNN
	1    2400 3000
	0    1    1    0   
$EndComp
$Comp
L Parts:LED_ABGR D?
U 1 1 5DCF3816
P 2000 3200
F 0 "D?" H 2000 3697 50  0000 C CNN
F 1 "LED_ABGR" H 2000 3606 50  0000 C CNN
F 2 "Parts:CLMVC-FKA" H 2000 2775 50  0001 C CNN
F 3 "https://www.cree.com/led-components/media/documents/1273-CLMVC-FKA.pdf" H 2000 3150 50  0001 C CNN
	1    2000 3200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2200 3000 2250 3000
Wire Wire Line
	2200 3200 2500 3200
Wire Wire Line
	4500 3200 2800 3200
Wire Wire Line
	3050 3400 3100 3400
Wire Wire Line
	3100 3400 3100 3300
Wire Wire Line
	3100 3300 4500 3300
Wire Wire Line
	2550 3000 3100 3000
Wire Wire Line
	3100 3000 3100 3100
Wire Wire Line
	3100 3100 4500 3100
$Comp
L Device:R R?
U 1 1 5DFB4959
P 2400 3400
F 0 "R?" V 2193 3400 50  0000 C CNN
F 1 "30" V 2284 3400 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 2330 3400 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT30R0/RMCF0603FT30R0CT-ND/4425092" H 2400 3400 50  0001 C CNN
	1    2400 3400
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5DFB4DBC
P 2900 3400
F 0 "R?" V 2693 3400 50  0000 C CNN
F 1 "47" V 2784 3400 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 2830 3400 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT47R0/RMCF0603FT47R0CT-ND/1942954" H 2900 3400 50  0001 C CNN
	1    2900 3400
	0    1    1    0   
$EndComp
Wire Wire Line
	2550 3400 2750 3400
Wire Wire Line
	2250 3400 2200 3400
$EndSCHEMATC
