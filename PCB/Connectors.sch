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
L power:GND #PWR0182
U 1 1 5DCE40E5
P 2750 2200
F 0 "#PWR0182" H 2750 1950 50  0001 C CNN
F 1 "GND" H 2755 2027 50  0000 C CNN
F 2 "" H 2750 2200 50  0001 C CNN
F 3 "" H 2750 2200 50  0001 C CNN
	1    2750 2200
	1    0    0    -1  
$EndComp
$Comp
L Parts:S2B-PH-SM4-TB J1
U 1 1 5DCEC85E
P 2400 2100
F 0 "J1" H 2342 2465 50  0000 C CNN
F 1 "S2B-PH-SM4-TB" H 2342 2374 50  0000 C CNN
F 2 "Parts:JST_S2B-PH-SM4-TB" H 2400 1750 50  0001 C CNN
F 3 "http://www.jst-mfg.com/product/detail_e.php?series=199" H 2450 2100 50  0001 L BNN
	1    2400 2100
	-1   0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR0180
U 1 1 5DCED91D
P 3000 2000
F 0 "#PWR0180" H 3000 1850 50  0001 C CNN
F 1 "+BATT" H 3015 2173 50  0000 C CNN
F 2 "" H 3000 2000 50  0001 C CNN
F 3 "" H 3000 2000 50  0001 C CNN
	1    3000 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 2000 3000 2000
Wire Wire Line
	2650 2200 2700 2200
Wire Wire Line
	2650 2100 2700 2100
Wire Wire Line
	2700 2100 2700 2200
Connection ~ 2700 2200
Wire Wire Line
	2700 2200 2750 2200
Text GLabel 5650 2550 0    50   Input ~ 0
TRANSDUCER
$Comp
L Device:R R65
U 1 1 5DE80022
P 5700 2800
F 0 "R65" H 5770 2846 50  0000 L CNN
F 1 "10k" H 5770 2755 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 5630 2800 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RNCP1206FTD10K0/RNCP1206FTD10K0CT-ND/2240708" H 5700 2800 50  0001 C CNN
	1    5700 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 2550 5700 2550
Wire Wire Line
	5700 2550 5700 2650
$Comp
L power:GND #PWR0186
U 1 1 5DE80E0C
P 5700 3050
F 0 "#PWR0186" H 5700 2800 50  0001 C CNN
F 1 "GND" H 5705 2877 50  0000 C CNN
F 2 "" H 5700 3050 50  0001 C CNN
F 3 "" H 5700 3050 50  0001 C CNN
	1    5700 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 2950 5700 3000
Wire Wire Line
	5700 2550 5950 2550
Connection ~ 5700 2550
Wire Wire Line
	5700 3000 5950 3000
Connection ~ 5700 3000
Wire Wire Line
	5700 3000 5700 3050
Text GLabel 2500 5950 0    50   Input ~ 0
FPGA-TDI
Text GLabel 2500 5550 0    50   Input ~ 0
FPGA-TCK
Text GLabel 2500 5750 0    50   Input ~ 0
FPGA-TMS
Text GLabel 2500 5650 0    50   Input ~ 0
FPGA-TDO
$Comp
L power:+3V3 #PWR0187
U 1 1 5DED008E
P 2700 3900
F 0 "#PWR0187" H 2700 3750 50  0001 C CNN
F 1 "+3V3" H 2715 4073 50  0000 C CNN
F 2 "" H 2700 3900 50  0001 C CNN
F 3 "" H 2700 3900 50  0001 C CNN
	1    2700 3900
	1    0    0    -1  
$EndComp
Text GLabel 2750 4000 0    50   Input ~ 0
MICRO-SWCLK
Text GLabel 2750 4200 0    50   Input ~ 0
MICRO-SWDIO
Text GLabel 2750 4500 0    50   Input ~ 0
MICRO-RX
Text GLabel 2750 4600 0    50   Input ~ 0
MICRO-TX
Text GLabel 2750 4300 0    50   Input ~ 0
MICRO-nRESET
Wire Wire Line
	2700 3900 2800 3900
Wire Wire Line
	2750 4000 2800 4000
Wire Wire Line
	2750 4200 2800 4200
Wire Wire Line
	2750 4300 2800 4300
Wire Wire Line
	2750 4500 2800 4500
Wire Wire Line
	2800 4600 2750 4600
$Comp
L power:GND #PWR0190
U 1 1 5DD2AB1C
P 2050 4450
F 0 "#PWR0190" H 2050 4200 50  0001 C CNN
F 1 "GND" H 2055 4277 50  0000 C CNN
F 2 "" H 2050 4450 50  0001 C CNN
F 3 "" H 2050 4450 50  0001 C CNN
	1    2050 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 4400 2050 4400
Wire Wire Line
	2050 4400 2050 4450
Wire Wire Line
	2050 4400 2050 4100
Wire Wire Line
	2050 4100 2800 4100
Connection ~ 2050 4400
$Comp
L power:GND #PWR0198
U 1 1 5DD3A2BB
P 3150 6000
F 0 "#PWR0198" H 3150 5750 50  0001 C CNN
F 1 "GND" H 3155 5827 50  0000 C CNN
F 2 "" H 3150 6000 50  0001 C CNN
F 3 "" H 3150 6000 50  0001 C CNN
	1    3150 6000
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J2
U 1 1 5DD491B4
P 6150 2550
F 0 "J2" H 6122 2524 50  0000 R CNN
F 1 "TRANSDUCER" H 6122 2433 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 6150 2550 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/adam-tech/PH1-02-UA/2057-PH1-02-UA-ND/9830266" H 6150 2550 50  0001 C CNN
	1    6150 2550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5950 2650 5950 3000
$Comp
L power:+2V5 #PWR0195
U 1 1 5DDAEE31
P 3250 5650
F 0 "#PWR0195" H 3250 5500 50  0001 C CNN
F 1 "+2V5" H 3265 5823 50  0000 C CNN
F 2 "" H 3250 5650 50  0001 C CNN
F 3 "" H 3250 5650 50  0001 C CNN
	1    3250 5650
	1    0    0    -1  
$EndComp
Text GLabel 4800 5000 0    50   Input ~ 0
FPGA-DOUT
Text GLabel 4800 4900 0    50   Input ~ 0
FPGA-nSTATUS
Text GLabel 4800 5100 0    50   Input ~ 0
FPGA-DCLK
Text GLabel 4800 5200 0    50   Input ~ 0
FPGA-DIN
Text GLabel 4800 5300 0    50   Input ~ 0
FPGA-nCONFIG
Text GLabel 4800 3900 0    50   Input ~ 0
FPGA-CONF_DONE
Text GLabel 4800 4000 0    50   Input ~ 0
FPGA-INIT_DONE
Text GLabel 4800 4100 0    50   Input ~ 0
FPGA-CRC_ERROR
Wire Wire Line
	4800 3900 4850 3900
Wire Wire Line
	4850 4000 4800 4000
Wire Wire Line
	4800 4100 4850 4100
Wire Wire Line
	4850 4200 4800 4200
Wire Wire Line
	4800 4300 4850 4300
Wire Wire Line
	4850 4400 4800 4400
Wire Wire Line
	4800 4500 4850 4500
Wire Wire Line
	4850 4600 4800 4600
$Comp
L Connector:Conn_01x02_Male J3
U 1 1 5DEC9B64
P 6500 4000
F 0 "J3" H 6472 3882 50  0000 R CNN
F 1 "DNP" H 6472 3973 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 6500 4000 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/adam-tech/PH1-02-UA/2057-PH1-02-UA-ND/9830266" H 6500 4000 50  0001 C CNN
	1    6500 4000
	-1   0    0    1   
$EndComp
$Comp
L power:+1V2 #PWR0188
U 1 1 5DECE3B1
P 6200 3900
F 0 "#PWR0188" H 6200 3750 50  0001 C CNN
F 1 "+1V2" H 6215 4073 50  0000 C CNN
F 2 "" H 6200 3900 50  0001 C CNN
F 3 "" H 6200 3900 50  0001 C CNN
	1    6200 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 3900 6300 3900
$Comp
L power:GND #PWR0189
U 1 1 5DECF8CC
P 6200 4000
F 0 "#PWR0189" H 6200 3750 50  0001 C CNN
F 1 "GND" H 6205 3827 50  0000 C CNN
F 2 "" H 6200 4000 50  0001 C CNN
F 3 "" H 6200 4000 50  0001 C CNN
	1    6200 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 4000 6300 4000
$Comp
L Connector:Conn_01x02_Male J9
U 1 1 5DED29C8
P 6500 5300
F 0 "J9" H 6472 5182 50  0000 R CNN
F 1 "DNP" H 6472 5273 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 6500 5300 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/adam-tech/PH1-02-UA/2057-PH1-02-UA-ND/9830266" H 6500 5300 50  0001 C CNN
	1    6500 5300
	-1   0    0    1   
$EndComp
Wire Wire Line
	6200 5200 6300 5200
$Comp
L power:GND #PWR0194
U 1 1 5DED29DD
P 6200 5300
F 0 "#PWR0194" H 6200 5050 50  0001 C CNN
F 1 "GND" H 6205 5127 50  0000 C CNN
F 2 "" H 6200 5300 50  0001 C CNN
F 3 "" H 6200 5300 50  0001 C CNN
	1    6200 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 5300 6300 5300
$Comp
L power:+12V #PWR0193
U 1 1 5DED51C9
P 6200 5200
F 0 "#PWR0193" H 6200 5050 50  0001 C CNN
F 1 "+12V" H 6215 5373 50  0000 C CNN
F 2 "" H 6200 5200 50  0001 C CNN
F 3 "" H 6200 5200 50  0001 C CNN
	1    6200 5200
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J11
U 1 1 5DED5F02
P 6500 5950
F 0 "J11" H 6472 5832 50  0000 R CNN
F 1 "DNP" H 6472 5923 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 6500 5950 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/adam-tech/PH1-02-UA/2057-PH1-02-UA-ND/9830266" H 6500 5950 50  0001 C CNN
	1    6500 5950
	-1   0    0    1   
$EndComp
Wire Wire Line
	6200 5850 6300 5850
$Comp
L power:GND #PWR0197
U 1 1 5DED5F0D
P 6200 5950
F 0 "#PWR0197" H 6200 5700 50  0001 C CNN
F 1 "GND" H 6205 5777 50  0000 C CNN
F 2 "" H 6200 5950 50  0001 C CNN
F 3 "" H 6200 5950 50  0001 C CNN
	1    6200 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 5950 6300 5950
$Comp
L Parts:+50V #PWR0196
U 1 1 5DED7ED3
P 6200 5850
F 0 "#PWR0196" H 6200 5700 50  0001 C CNN
F 1 "+50V" H 6215 6023 50  0000 C CNN
F 2 "" H 6200 5850 50  0001 C CNN
F 3 "" H 6200 5850 50  0001 C CNN
	1    6200 5850
	1    0    0    -1  
$EndComp
Text GLabel 4800 4200 0    50   Input ~ 0
FPGA-LINK0
Text GLabel 4800 4300 0    50   Input ~ 0
FPGA-LINK1
Text GLabel 4800 4400 0    50   Input ~ 0
FPGA-LINK2
Text GLabel 4800 4500 0    50   Input ~ 0
FPGA-LINK3
Text GLabel 4800 4600 0    50   Input ~ 0
FPGA-LINK4
Text GLabel 4800 4700 0    50   Input ~ 0
FPGA-LINK5
Wire Wire Line
	4800 4700 4850 4700
Wire Wire Line
	4850 4800 4800 4800
Wire Wire Line
	4800 4900 4850 4900
Wire Wire Line
	4800 5000 4850 5000
Wire Wire Line
	4850 5100 4800 5100
Wire Wire Line
	4800 5200 4850 5200
$Comp
L Connector:Conn_01x02_Male J7
U 1 1 5DEFA66E
P 6500 4650
F 0 "J7" H 6472 4532 50  0000 R CNN
F 1 "DNP" H 6472 4623 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 6500 4650 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/adam-tech/PH1-02-UA/2057-PH1-02-UA-ND/9830266" H 6500 4650 50  0001 C CNN
	1    6500 4650
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0192
U 1 1 5DEFAC45
P 6200 4650
F 0 "#PWR0192" H 6200 4400 50  0001 C CNN
F 1 "GND" H 6205 4477 50  0000 C CNN
F 2 "" H 6200 4650 50  0001 C CNN
F 3 "" H 6200 4650 50  0001 C CNN
	1    6200 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 4650 6300 4650
Wire Wire Line
	6300 4550 6200 4550
Text GLabel 4800 4800 0    50   Input ~ 0
FPGA-CS
Text GLabel 8800 4600 0    50   Input ~ 0
MICRO-SCL
Text GLabel 8800 4500 0    50   Input ~ 0
MICRO-SDA
Text GLabel 8800 4800 0    50   Input ~ 0
ADC-~CS
Text GLabel 8800 5000 0    50   Input ~ 0
ADC-SCK
Text GLabel 8800 4900 0    50   Input ~ 0
ADC-SDO
Text GLabel 8800 5500 0    50   Input ~ 0
VGA-~CS0
Text GLabel 8800 5400 0    50   Input ~ 0
VGA-D0
Text GLabel 8800 5300 0    50   Input ~ 0
VGA-SCK
Text GLabel 8800 5100 0    50   Input ~ 0
VGA-D1
Text GLabel 8800 5200 0    50   Input ~ 0
VGA-~CS1
Text GLabel 8800 6100 0    50   Input ~ 0
DAC-~CS
Text GLabel 8800 5900 0    50   Input ~ 0
DAC-SCK
Text GLabel 8800 6000 0    50   Input ~ 0
DAC-SDI
Text GLabel 8800 5800 0    50   Input ~ 0
TRANSMIT-ENABLE
$Comp
L Connector:Conn_01x02_Male J6
U 1 1 5E2272DF
P 9050 4600
F 0 "J6" H 9022 4482 50  0000 R CNN
F 1 "DNP" H 9022 4573 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 9050 4600 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/adam-tech/PH1-02-UA/2057-PH1-02-UA-ND/9830266" H 9050 4600 50  0001 C CNN
	1    9050 4600
	-1   0    0    1   
$EndComp
Wire Wire Line
	8850 4500 8800 4500
Wire Wire Line
	8800 4600 8850 4600
Wire Wire Line
	8800 4800 8850 4800
Wire Wire Line
	8850 4900 8800 4900
Wire Wire Line
	8800 5000 8850 5000
Wire Wire Line
	8800 5100 8850 5100
Wire Wire Line
	8800 5200 8850 5200
Wire Wire Line
	8800 5300 8850 5300
Wire Wire Line
	8800 5400 8850 5400
Wire Wire Line
	8850 5500 8800 5500
Wire Wire Line
	8800 5800 8850 5800
Wire Wire Line
	8800 5900 8850 5900
Wire Wire Line
	8800 6000 8850 6000
Wire Wire Line
	8800 6100 8850 6100
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 5E24249E
P 3750 2250
F 0 "H2" V 3704 2400 50  0000 L CNN
F 1 "MountingHole_Pad" V 3795 2400 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_4mm_Pad_Via" H 3750 2250 50  0001 C CNN
F 3 "~" H 3750 2250 50  0001 C CNN
	1    3750 2250
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0183
U 1 1 5E243B36
P 3550 2250
F 0 "#PWR0183" H 3550 2000 50  0001 C CNN
F 1 "GND" H 3555 2077 50  0000 C CNN
F 2 "" H 3550 2250 50  0001 C CNN
F 3 "" H 3550 2250 50  0001 C CNN
	1    3550 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 2250 3650 2250
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 5E246FF3
P 3750 2000
F 0 "H1" V 3704 2150 50  0000 L CNN
F 1 "MountingHole_Pad" V 3795 2150 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_4mm_Pad_Via" H 3750 2000 50  0001 C CNN
F 3 "~" H 3750 2000 50  0001 C CNN
	1    3750 2000
	0    1    1    0   
$EndComp
$Comp
L power:+BATT #PWR0181
U 1 1 5E24725E
P 3550 2000
F 0 "#PWR0181" H 3550 1850 50  0001 C CNN
F 1 "+BATT" H 3565 2173 50  0000 C CNN
F 2 "" H 3550 2000 50  0001 C CNN
F 3 "" H 3550 2000 50  0001 C CNN
	1    3550 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 2000 3650 2000
$Comp
L power:+10V #PWR0191
U 1 1 5E281EB9
P 6200 4550
F 0 "#PWR0191" H 6200 4400 50  0001 C CNN
F 1 "+10V" H 6215 4723 50  0000 C CNN
F 2 "" H 6200 4550 50  0001 C CNN
F 3 "" H 6200 4550 50  0001 C CNN
	1    6200 4550
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J10
U 1 1 5E09FA0E
P 2750 5750
F 0 "J10" H 2800 6167 50  0000 C CNN
F 1 "DNP" H 2800 6076 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x05_Pitch2.54mm" H 2750 5750 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/adam-tech/PH2-10-UA/2057-PH2-10-UA-ND/9830654" H 2750 5750 50  0001 C CNN
	1    2750 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 5550 2550 5550
Wire Wire Line
	2500 5650 2550 5650
Wire Wire Line
	2500 5750 2550 5750
Wire Wire Line
	2500 5950 2550 5950
Wire Wire Line
	3050 5950 3150 5950
Wire Wire Line
	3150 5950 3150 6000
Wire Wire Line
	3050 5550 3150 5550
Wire Wire Line
	3150 5550 3150 5950
Connection ~ 3150 5950
Wire Wire Line
	3050 5650 3250 5650
NoConn ~ 3050 5750
NoConn ~ 3050 5850
NoConn ~ 2550 5850
$Comp
L Connector:Conn_01x04_Male J12
U 1 1 5E5FD68B
P 9050 6000
F 0 "J12" H 9022 5882 50  0000 R CNN
F 1 "DNP" H 9022 5973 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 9050 6000 50  0001 C CNN
F 3 "~" H 9050 6000 50  0001 C CNN
	1    9050 6000
	-1   0    0    1   
$EndComp
Wire Wire Line
	4850 5300 4800 5300
$Comp
L Connector:Conn_01x15_Male J5
U 1 1 5E135391
P 5050 4600
F 0 "J5" H 5022 4624 50  0000 R CNN
F 1 "DNP" H 5022 4533 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x15_Pitch2.54mm" H 5050 4600 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/adam-tech/PH1-15-UA/2057-PH1-15-UA-ND/9830359" H 5050 4600 50  0001 C CNN
	1    5050 4600
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x08_Male J4
U 1 1 5DD08B5F
P 3000 4200
F 0 "J4" H 2972 4174 50  0000 R CNN
F 1 "PH1-08-UA" H 2972 4083 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x08_Pitch2.54mm" H 3000 4200 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/adam-tech/PH1-08-UA/2057-PH1-08-UA-ND/9830442" H 3000 4200 50  0001 C CNN
	1    3000 4200
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x08_Male J8
U 1 1 5E2E1494
P 9050 5200
F 0 "J8" H 9022 5174 50  0000 R CNN
F 1 "PH1-08-UA" H 9022 5083 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x08_Pitch2.54mm" H 9050 5200 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/adam-tech/PH1-08-UA/2057-PH1-08-UA-ND/9830442" H 9050 5200 50  0001 C CNN
	1    9050 5200
	-1   0    0    1   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 5E3FBDE7
P 3750 2500
F 0 "H3" V 3704 2650 50  0000 L CNN
F 1 "MountingHole_Pad" V 3795 2650 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_4mm_Pad_Via" H 3750 2500 50  0001 C CNN
F 3 "~" H 3750 2500 50  0001 C CNN
	1    3750 2500
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0184
U 1 1 5E3FBDF1
P 3550 2500
F 0 "#PWR0184" H 3550 2250 50  0001 C CNN
F 1 "GND" H 3555 2327 50  0000 C CNN
F 2 "" H 3550 2500 50  0001 C CNN
F 3 "" H 3550 2500 50  0001 C CNN
	1    3550 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 2500 3650 2500
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 5E3FEDB8
P 3750 2750
F 0 "H4" V 3704 2900 50  0000 L CNN
F 1 "MountingHole_Pad" V 3795 2900 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_4mm_Pad_Via" H 3750 2750 50  0001 C CNN
F 3 "~" H 3750 2750 50  0001 C CNN
	1    3750 2750
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0185
U 1 1 5E3FEDC2
P 3550 2750
F 0 "#PWR0185" H 3550 2500 50  0001 C CNN
F 1 "GND" H 3555 2577 50  0000 C CNN
F 2 "" H 3550 2750 50  0001 C CNN
F 3 "" H 3550 2750 50  0001 C CNN
	1    3550 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 2750 3650 2750
$EndSCHEMATC
