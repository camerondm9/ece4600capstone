EESchema Schematic File Version 4
LIBS:Capstone-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 8 8
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
L power:GND #PWR0130
U 1 1 5DCE40E5
P 1450 1350
F 0 "#PWR0130" H 1450 1100 50  0001 C CNN
F 1 "GND" H 1455 1177 50  0000 C CNN
F 2 "" H 1450 1350 50  0001 C CNN
F 3 "" H 1450 1350 50  0001 C CNN
	1    1450 1350
	1    0    0    -1  
$EndComp
$Comp
L Parts:S2B-PH-SM4-TB J?
U 1 1 5DCEC85E
P 1100 1250
F 0 "J?" H 1042 1615 50  0000 C CNN
F 1 "S2B-PH-SM4-TB" H 1042 1524 50  0000 C CNN
F 2 "Parts:JST_S2B-PH-SM4-TB" H 1100 900 50  0001 C CNN
F 3 "http://www.jst-mfg.com/product/detail_e.php?series=199" H 1150 1250 50  0001 L BNN
	1    1100 1250
	-1   0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR0131
U 1 1 5DCED91D
P 1700 1150
F 0 "#PWR0131" H 1700 1000 50  0001 C CNN
F 1 "+BATT" H 1715 1323 50  0000 C CNN
F 2 "" H 1700 1150 50  0001 C CNN
F 3 "" H 1700 1150 50  0001 C CNN
	1    1700 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 1150 1700 1150
Wire Wire Line
	1350 1350 1400 1350
Wire Wire Line
	1350 1250 1400 1250
Wire Wire Line
	1400 1250 1400 1350
Connection ~ 1400 1350
Wire Wire Line
	1400 1350 1450 1350
Text GLabel 8400 3000 0    50   Input ~ 0
TRANSDUCER
$Comp
L Device:R R?
U 1 1 5DE80022
P 8450 3250
F 0 "R?" H 8520 3296 50  0000 L CNN
F 1 "R" H 8520 3205 50  0000 L CNN
F 2 "" V 8380 3250 50  0001 C CNN
F 3 "~" H 8450 3250 50  0001 C CNN
	1    8450 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 3000 8450 3000
Wire Wire Line
	8450 3000 8450 3100
$Comp
L power:GND #PWR?
U 1 1 5DE80E0C
P 8450 3500
F 0 "#PWR?" H 8450 3250 50  0001 C CNN
F 1 "GND" H 8455 3327 50  0000 C CNN
F 2 "" H 8450 3500 50  0001 C CNN
F 3 "" H 8450 3500 50  0001 C CNN
	1    8450 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 3400 8450 3450
Wire Wire Line
	8450 3000 8650 3000
Connection ~ 8450 3000
Wire Wire Line
	8450 3450 8650 3450
Connection ~ 8450 3450
Wire Wire Line
	8450 3450 8450 3500
Text GLabel 1300 3200 0    50   Input ~ 0
FPGA-TDI
Text GLabel 1300 3300 0    50   Input ~ 0
FPGA-TCK
Text GLabel 1300 3400 0    50   Input ~ 0
FPGA-TMS
Text GLabel 1300 3500 0    50   Input ~ 0
FPGA-TDO
$Comp
L Device:R R?
U 1 1 5DECCF2C
P 1800 3800
F 0 "R?" H 1870 3846 50  0000 L CNN
F 1 "1k" H 1870 3755 50  0000 L CNN
F 2 "" V 1730 3800 50  0001 C CNN
F 3 "~" H 1800 3800 50  0001 C CNN
	1    1800 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DECD846
P 1950 2950
F 0 "R?" H 2020 2996 50  0000 L CNN
F 1 "10k" H 2020 2905 50  0000 L CNN
F 2 "" V 1880 2950 50  0001 C CNN
F 3 "~" H 1950 2950 50  0001 C CNN
	1    1950 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DECDBAC
P 1650 2950
F 0 "R?" H 1720 2996 50  0000 L CNN
F 1 "10k" H 1720 2905 50  0000 L CNN
F 2 "" V 1580 2950 50  0001 C CNN
F 3 "~" H 1650 2950 50  0001 C CNN
	1    1650 2950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DECF0AC
P 1800 4050
F 0 "#PWR?" H 1800 3800 50  0001 C CNN
F 1 "GND" H 1805 3877 50  0000 C CNN
F 2 "" H 1800 4050 50  0001 C CNN
F 3 "" H 1800 4050 50  0001 C CNN
	1    1800 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 4050 1800 4000
$Comp
L power:+3V3 #PWR?
U 1 1 5DED008E
P 1650 2700
F 0 "#PWR?" H 1650 2550 50  0001 C CNN
F 1 "+3V3" H 1665 2873 50  0000 C CNN
F 2 "" H 1650 2700 50  0001 C CNN
F 3 "" H 1650 2700 50  0001 C CNN
	1    1650 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 3400 1650 3100
Wire Wire Line
	1950 3200 1950 3100
Wire Wire Line
	1650 2800 1650 2750
Wire Wire Line
	1650 2750 1950 2750
Wire Wire Line
	1950 2750 1950 2800
Wire Wire Line
	1650 2700 1650 2750
Connection ~ 1650 2750
Wire Wire Line
	1950 3200 2600 3200
Connection ~ 1950 3200
Wire Wire Line
	1650 3400 2600 3400
Connection ~ 1650 3400
Connection ~ 1800 3300
Wire Wire Line
	1800 3300 2600 3300
Text Notes 800  4350 0    50   ~ 0
TODO: Confirm that JTAG is configured correctly. Hopefully we won't need to use it, and can just program the FPGA from the microcontroller. If not, then we might require the JTAG pins.
Text Notes 800  4450 0    50   ~ 0
If the microcontroller pins are tri-stated by default, then we can expose the other FPGA control signals as well, which would allow programming the FPGA fully without uC interaction.
Text Notes 800  4550 0    50   ~ 0
Use the highest value pull- resistors possible to minimize wasted power.
Text GLabel 1300 3600 0    50   Input ~ 0
FPGA-nCONFIG
$Comp
L Device:R R?
U 1 1 5DFBD8B8
P 1350 2950
F 0 "R?" H 1420 2996 50  0000 L CNN
F 1 "10k" H 1420 2905 50  0000 L CNN
F 2 "" V 1280 2950 50  0001 C CNN
F 3 "~" H 1350 2950 50  0001 C CNN
	1    1350 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 3200 1950 3200
Wire Wire Line
	1300 3300 1800 3300
Wire Wire Line
	1300 3400 1650 3400
Wire Wire Line
	1350 2800 1350 2750
Wire Wire Line
	1350 2750 1650 2750
Wire Wire Line
	1350 3100 1350 3500
Wire Wire Line
	1300 3500 1350 3500
Connection ~ 1350 3500
Wire Wire Line
	1350 3500 2600 3500
$Comp
L Device:R R?
U 1 1 5DFC540A
P 1500 3800
F 0 "R?" H 1570 3846 50  0000 L CNN
F 1 "10k" H 1570 3755 50  0000 L CNN
F 2 "" V 1430 3800 50  0001 C CNN
F 3 "~" H 1500 3800 50  0001 C CNN
	1    1500 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 4000 1500 4000
Wire Wire Line
	1500 4000 1500 3950
Connection ~ 1800 4000
Wire Wire Line
	1800 4000 1800 3950
Wire Wire Line
	1500 3600 1300 3600
Wire Wire Line
	1500 3600 1500 3650
Wire Wire Line
	1800 3300 1800 3650
$EndSCHEMATC
