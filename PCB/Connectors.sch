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
P 2750 2200
F 0 "#PWR0130" H 2750 1950 50  0001 C CNN
F 1 "GND" H 2755 2027 50  0000 C CNN
F 2 "" H 2750 2200 50  0001 C CNN
F 3 "" H 2750 2200 50  0001 C CNN
	1    2750 2200
	1    0    0    -1  
$EndComp
$Comp
L Parts:S2B-PH-SM4-TB J?
U 1 1 5DCEC85E
P 2400 2100
F 0 "J?" H 2342 2465 50  0000 C CNN
F 1 "S2B-PH-SM4-TB" H 2342 2374 50  0000 C CNN
F 2 "Parts:JST_S2B-PH-SM4-TB" H 2400 1750 50  0001 C CNN
F 3 "http://www.jst-mfg.com/product/detail_e.php?series=199" H 2450 2100 50  0001 L BNN
	1    2400 2100
	-1   0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR0131
U 1 1 5DCED91D
P 3000 2000
F 0 "#PWR0131" H 3000 1850 50  0001 C CNN
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
L Device:R R?
U 1 1 5DE80022
P 5700 2800
F 0 "R?" H 5770 2846 50  0000 L CNN
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
L power:GND #PWR?
U 1 1 5DE80E0C
P 5700 3050
F 0 "#PWR?" H 5700 2800 50  0001 C CNN
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
Text GLabel 2750 5850 0    50   Input ~ 0
FPGA-TDI
Text GLabel 2750 5650 0    50   Input ~ 0
FPGA-TCK
Text GLabel 2750 5950 0    50   Input ~ 0
FPGA-TMS
Text GLabel 2750 6050 0    50   Input ~ 0
FPGA-TDO
$Comp
L power:+3V3 #PWR?
U 1 1 5DED008E
P 2700 3900
F 0 "#PWR?" H 2700 3750 50  0001 C CNN
F 1 "+3V3" H 2715 4073 50  0000 C CNN
F 2 "" H 2700 3900 50  0001 C CNN
F 3 "" H 2700 3900 50  0001 C CNN
	1    2700 3900
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x08_Male J?
U 1 1 5DD08B5F
P 3000 4200
F 0 "J?" H 2972 4174 50  0000 R CNN
F 1 "PH1-08-UA" H 2972 4083 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x08_Pitch2.54mm" H 3000 4200 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/adam-tech/PH1-08-UA/2057-PH1-08-UA-ND/9830442" H 3000 4200 50  0001 C CNN
	1    3000 4200
	-1   0    0    -1  
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
$Comp
L Connector:Conn_01x08_Male J?
U 1 1 5DD1A649
P 3000 5850
F 0 "J?" H 2972 5824 50  0000 R CNN
F 1 "PH1-08-UA" H 2972 5733 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x08_Pitch2.54mm" H 3000 5850 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/adam-tech/PH1-08-UA/2057-PH1-08-UA-ND/9830442" H 3000 5850 50  0001 C CNN
	1    3000 5850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2750 4500 2800 4500
Wire Wire Line
	2800 4600 2750 4600
$Comp
L power:GND #PWR?
U 1 1 5DD2AB1C
P 2050 4450
F 0 "#PWR?" H 2050 4200 50  0001 C CNN
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
Wire Wire Line
	2700 5550 2800 5550
$Comp
L power:GND #PWR?
U 1 1 5DD3A2BB
P 2050 6200
F 0 "#PWR?" H 2050 5950 50  0001 C CNN
F 1 "GND" H 2055 6027 50  0000 C CNN
F 2 "" H 2050 6200 50  0001 C CNN
F 3 "" H 2050 6200 50  0001 C CNN
	1    2050 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 5650 2800 5650
Wire Wire Line
	2750 6050 2800 6050
Wire Wire Line
	2800 5950 2750 5950
Wire Wire Line
	2750 5850 2800 5850
Wire Wire Line
	2050 6200 2050 6150
Wire Wire Line
	2050 6150 2800 6150
Wire Wire Line
	2050 6150 2050 5750
Wire Wire Line
	2050 5750 2800 5750
Connection ~ 2050 6150
$Comp
L Connector:Conn_01x02_Male J?
U 1 1 5DD491B4
P 6150 2550
F 0 "J?" H 6122 2524 50  0000 R CNN
F 1 "TRANSDUCER" H 6122 2433 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 6150 2550 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/adam-tech/PH1-02-UA/2057-PH1-02-UA-ND/9830266" H 6150 2550 50  0001 C CNN
	1    6150 2550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5950 2650 5950 3000
$Comp
L power:+2V5 #PWR?
U 1 1 5DDAEE31
P 2700 5550
F 0 "#PWR?" H 2700 5400 50  0001 C CNN
F 1 "+2V5" H 2715 5723 50  0000 C CNN
F 2 "" H 2700 5550 50  0001 C CNN
F 3 "" H 2700 5550 50  0001 C CNN
	1    2700 5550
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x08_Male J?
U 1 1 5DF84ABE
P 5050 4200
F 0 "J?" H 5022 4174 50  0000 R CNN
F 1 "DNP" H 5022 4083 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x08_Pitch2.54mm" H 5050 4200 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/adam-tech/PH1-08-UA/2057-PH1-08-UA-ND/9830442" H 5050 4200 50  0001 C CNN
	1    5050 4200
	-1   0    0    -1  
$EndComp
Text GLabel 4800 3900 0    50   Input ~ 0
FPGA-DOUT
Text GLabel 4800 4400 0    50   Input ~ 0
FPGA-nSTATUS
Text GLabel 4800 4000 0    50   Input ~ 0
FPGA-DCLK
Text GLabel 4800 4100 0    50   Input ~ 0
FPGA-DIN
Text GLabel 4800 4500 0    50   Input ~ 0
FPGA-nCONFIG
Text GLabel 4800 4200 0    50   Input ~ 0
FPGA-CONF_DONE
Text GLabel 4800 4600 0    50   Input ~ 0
FPGA-INIT_DONE
Text GLabel 4800 4300 0    50   Input ~ 0
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
L Connector:Conn_01x02_Male J?
U 1 1 5DEC9B64
P 6500 4000
F 0 "J?" H 6472 3882 50  0000 R CNN
F 1 "DNP" H 6472 3973 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 6500 4000 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/adam-tech/PH1-02-UA/2057-PH1-02-UA-ND/9830266" H 6500 4000 50  0001 C CNN
	1    6500 4000
	-1   0    0    1   
$EndComp
$Comp
L power:+1V2 #PWR?
U 1 1 5DECE3B1
P 6200 3900
F 0 "#PWR?" H 6200 3750 50  0001 C CNN
F 1 "+1V2" H 6215 4073 50  0000 C CNN
F 2 "" H 6200 3900 50  0001 C CNN
F 3 "" H 6200 3900 50  0001 C CNN
	1    6200 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 3900 6300 3900
$Comp
L power:GND #PWR?
U 1 1 5DECF8CC
P 6200 4000
F 0 "#PWR?" H 6200 3750 50  0001 C CNN
F 1 "GND" H 6205 3827 50  0000 C CNN
F 2 "" H 6200 4000 50  0001 C CNN
F 3 "" H 6200 4000 50  0001 C CNN
	1    6200 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 4000 6300 4000
$Comp
L Connector:Conn_01x02_Male J?
U 1 1 5DED29C8
P 6500 5300
F 0 "J?" H 6472 5182 50  0000 R CNN
F 1 "DNP" H 6472 5273 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 6500 5300 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/adam-tech/PH1-02-UA/2057-PH1-02-UA-ND/9830266" H 6500 5300 50  0001 C CNN
	1    6500 5300
	-1   0    0    1   
$EndComp
Wire Wire Line
	6200 5200 6300 5200
$Comp
L power:GND #PWR?
U 1 1 5DED29DD
P 6200 5300
F 0 "#PWR?" H 6200 5050 50  0001 C CNN
F 1 "GND" H 6205 5127 50  0000 C CNN
F 2 "" H 6200 5300 50  0001 C CNN
F 3 "" H 6200 5300 50  0001 C CNN
	1    6200 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 5300 6300 5300
$Comp
L power:+12V #PWR?
U 1 1 5DED51C9
P 6200 5200
F 0 "#PWR?" H 6200 5050 50  0001 C CNN
F 1 "+12V" H 6215 5373 50  0000 C CNN
F 2 "" H 6200 5200 50  0001 C CNN
F 3 "" H 6200 5200 50  0001 C CNN
	1    6200 5200
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J?
U 1 1 5DED5F02
P 6500 5950
F 0 "J?" H 6472 5832 50  0000 R CNN
F 1 "DNP" H 6472 5923 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 6500 5950 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/adam-tech/PH1-02-UA/2057-PH1-02-UA-ND/9830266" H 6500 5950 50  0001 C CNN
	1    6500 5950
	-1   0    0    1   
$EndComp
Wire Wire Line
	6200 5850 6300 5850
$Comp
L power:GND #PWR?
U 1 1 5DED5F0D
P 6200 5950
F 0 "#PWR?" H 6200 5700 50  0001 C CNN
F 1 "GND" H 6205 5777 50  0000 C CNN
F 2 "" H 6200 5950 50  0001 C CNN
F 3 "" H 6200 5950 50  0001 C CNN
	1    6200 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 5950 6300 5950
$Comp
L Parts:+50V #PWR?
U 1 1 5DED7ED3
P 6200 5850
F 0 "#PWR?" H 6200 5700 50  0001 C CNN
F 1 "+50V" H 6215 6023 50  0000 C CNN
F 2 "" H 6200 5850 50  0001 C CNN
F 3 "" H 6200 5850 50  0001 C CNN
	1    6200 5850
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x08_Male J?
U 1 1 5DEE094B
P 5050 5850
F 0 "J?" H 5022 5824 50  0000 R CNN
F 1 "DNP" H 5022 5733 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x08_Pitch2.54mm" H 5050 5850 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/adam-tech/PH1-08-UA/2057-PH1-08-UA-ND/9830442" H 5050 5850 50  0001 C CNN
	1    5050 5850
	-1   0    0    -1  
$EndComp
Text GLabel 4800 5550 0    50   Input ~ 0
FPGA-LINK0
Text GLabel 4800 5650 0    50   Input ~ 0
FPGA-LINK1
Text GLabel 4800 5750 0    50   Input ~ 0
FPGA-LINK2
Text GLabel 4800 5850 0    50   Input ~ 0
FPGA-LINK3
Text GLabel 4800 5950 0    50   Input ~ 0
FPGA-LINK4
Text GLabel 4800 6050 0    50   Input ~ 0
FPGA-LINK5
Wire Wire Line
	4800 5550 4850 5550
Wire Wire Line
	4850 5650 4800 5650
Wire Wire Line
	4800 5750 4850 5750
Wire Wire Line
	4800 5850 4850 5850
Wire Wire Line
	4850 5950 4800 5950
Wire Wire Line
	4800 6050 4850 6050
$Comp
L Connector:Conn_01x02_Male J?
U 1 1 5DEFA66E
P 6500 4650
F 0 "J?" H 6472 4532 50  0000 R CNN
F 1 "DNP" H 6472 4623 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 6500 4650 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/adam-tech/PH1-02-UA/2057-PH1-02-UA-ND/9830266" H 6500 4650 50  0001 C CNN
	1    6500 4650
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DEFAC45
P 6200 4650
F 0 "#PWR?" H 6200 4400 50  0001 C CNN
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
$Comp
L power:+9V #PWR?
U 1 1 5DEFE9A9
P 6200 4550
F 0 "#PWR?" H 6200 4400 50  0001 C CNN
F 1 "+9V" H 6215 4723 50  0000 C CNN
F 2 "" H 6200 4550 50  0001 C CNN
F 3 "" H 6200 4550 50  0001 C CNN
	1    6200 4550
	1    0    0    -1  
$EndComp
$EndSCHEMATC
