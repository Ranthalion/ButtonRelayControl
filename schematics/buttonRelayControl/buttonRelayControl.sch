EESchema Schematic File Version 4
LIBS:buttonRelayControl-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "2 Channel Float Switch"
Date ""
Rev "0.1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "Controls 2 channels of relays based on the states of 2 push buttons and 2 float switches"
$EndDescr
$Comp
L remoteSwitch_custom:TSP-03 U2
U 1 1 5B5E5DB0
P 2200 1300
F 0 "U2" H 2200 1300 60  0000 C CNN
F 1 "TSP-05" H 2200 1550 60  0000 C CNN
F 2 "Connectors_JST:JST_SH_BM04B-SRSS-TB_04x1.00mm_Straight" H 2200 1300 60  0001 C CNN
F 3 "" H 2200 1300 60  0000 C CNN
	1    2200 1300
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 5B5E5E9C
P 850 1350
F 0 "J1" H 770 1025 50  0000 C CNN
F 1 "Conn_AC_MAINS" H 800 1100 50  0000 C CNN
F 2 "Connectors:PINHEAD1-2" H 850 1350 50  0001 C CNN
F 3 "~" H 850 1350 50  0001 C CNN
	1    850  1350
	-1   0    0    1   
$EndComp
$Comp
L Device:Fuse F1
U 1 1 5B5E5FCF
P 1300 1150
F 0 "F1" V 1103 1150 50  0000 C CNN
F 1 "Fuse" V 1194 1150 50  0000 C CNN
F 2 "Fuse_Holders_and_Fuses:Fuse_SMD1206_HandSoldering" V 1230 1150 50  0001 C CNN
F 3 "~" H 1300 1150 50  0001 C CNN
F 4 "Surface Mount Fuses 125V .125A VFA Slimline" H 1300 1150 50  0001 C CNN "Description"
F 5 "0466.125NR" H 1300 1150 50  0001 C CNN "Part No"
	1    1300 1150
	0    1    1    0   
$EndComp
$Comp
L Device:Varistor RV1
U 1 1 5B5E607C
P 1550 1300
F 0 "RV1" H 1300 1350 50  0000 L CNN
F 1 "Varistor" H 1150 1250 50  0000 L CNN
F 2 "Varistors:RV_Disc_D7_W3.4_P5" V 1480 1300 50  0001 C CNN
F 3 "~" H 1550 1300 50  0001 C CNN
F 4 "Varistors 200V 50A CLAMP" H 1550 1300 50  0001 C CNN "Description"
F 5 "ERZ-V14D241" H 1550 1300 50  0001 C CNN "Part No"
	1    1550 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  1350 850  1450
Wire Wire Line
	850  1250 850  1150
Wire Wire Line
	1450 1150 1550 1150
Wire Wire Line
	1550 1150 1700 1150
Wire Wire Line
	1700 1150 1700 1200
Connection ~ 1550 1150
Wire Wire Line
	1550 1450 1700 1450
Wire Wire Line
	1700 1450 1700 1400
$Comp
L Device:C C3
U 1 1 5B5E62D8
P 3200 1300
F 0 "C3" H 3315 1346 50  0000 L CNN
F 1 "0.1uF" H 3315 1255 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210_HandSoldering" H 3238 1150 50  0001 C CNN
F 3 "~" H 3200 1300 50  0001 C CNN
	1    3200 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C2
U 1 1 5B5E6340
P 2800 1300
F 0 "C2" H 2918 1346 50  0000 L CNN
F 1 "10uF" H 2918 1255 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D10.0mm_P7.50mm" H 2838 1150 50  0001 C CNN
F 3 "~" H 2800 1300 50  0001 C CNN
	1    2800 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 1150 2800 1150
Wire Wire Line
	2700 1450 2800 1450
Wire Wire Line
	3200 1150 3600 1150
Wire Wire Line
	3600 1150 3600 1050
Connection ~ 3200 1150
Wire Wire Line
	3200 1450 3600 1450
Wire Wire Line
	3600 1450 3600 1500
Connection ~ 3200 1450
$Comp
L power:GND #PWR0101
U 1 1 5B5E66E1
P 3600 1500
F 0 "#PWR0101" H 3600 1250 50  0001 C CNN
F 1 "GND" H 3605 1327 50  0000 C CNN
F 2 "" H 3600 1500 50  0001 C CNN
F 3 "" H 3600 1500 50  0001 C CNN
	1    3600 1500
	1    0    0    -1  
$EndComp
Connection ~ 2800 1150
Connection ~ 2800 1450
Wire Wire Line
	2800 1150 3200 1150
Wire Wire Line
	2800 1450 3200 1450
$Comp
L Switch:SW_Push_LED SW1
U 1 1 5B5E6A97
P 2250 3050
F 0 "SW1" H 2250 3435 50  0000 C CNN
F 1 "SW_Push_LED" H 2250 3344 50  0000 C CNN
F 2 "Connectors_JST:JST_SH_BM04B-SRSS-TB_04x1.00mm_Straight" H 2250 3350 50  0001 C CNN
F 3 "" H 2250 3350 50  0001 C CNN
	1    2250 3050
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push_LED SW2
U 1 1 5B5E6BA9
P 2250 3900
F 0 "SW2" H 2250 4285 50  0000 C CNN
F 1 "SW_Push_LED" H 2250 4194 50  0000 C CNN
F 2 "Connectors_JST:JST_SH_BM04B-SRSS-TB_04x1.00mm_Straight" H 2250 4200 50  0001 C CNN
F 3 "" H 2250 4200 50  0001 C CNN
	1    2250 3900
	1    0    0    -1  
$EndComp
$Comp
L Relay:FINDER-40.11 K1
U 1 1 5B5E6E78
P 9450 1700
F 0 "K1" V 9950 1650 50  0000 L CNN
F 1 "SRD-03VDC-SL-C" V 10050 1400 50  0000 L CNN
F 2 "Relays_THT:Relay_SPDT_SANYOU_SRD_Series_Form_C" H 10590 1660 50  0001 C CNN
F 3 "https://www.finder-relais.net/de/finder-relais-serie-40.pdf" H 9450 1700 50  0001 C CNN
	1    9450 1700
	1    0    0    -1  
$EndComp
$Comp
L MCU_Microchip_ATmega:ATmega328PB-AU U3
U 1 1 5B5E6ED7
P 5000 3350
F 0 "U3" H 5000 3400 50  0000 R CNN
F 1 "ATmega328PB-AU" H 5750 1900 50  0000 R CNN
F 2 "Housings_DFN_QFN:QFN-32-1EP_4x4mm_Pitch0.4mm" H 5000 3350 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/40001906C.pdf" H 5000 3350 50  0001 C CNN
	1    5000 3350
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J2
U 1 1 5B5E705A
P 4850 6150
F 0 "J2" H 4900 6467 50  0000 C CNN
F 1 "Programmer" H 4900 6376 50  0000 C CNN
F 2 "Connectors_Molex:Molex_Microfit3_Header_02x03_Straight_43045-0628" H 4850 6150 50  0001 C CNN
F 3 "~" H 4850 6150 50  0001 C CNN
	1    4850 6150
	1    0    0    -1  
$EndComp
$Comp
L Diode:B120-E3 D2
U 1 1 5B5E74EE
P 8600 1700
F 0 "D2" H 8550 1850 50  0000 L CNN
F 1 "RB060M-60TR" H 8350 1950 50  0000 L CNN
F 2 "Diode_SMD:D_SMA" H 8600 1525 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88946/b120.pdf" H 8600 1700 50  0001 C CNN
	1    8600 1700
	0    1    1    0   
$EndComp
Wire Wire Line
	9250 1400 9250 1350
Wire Wire Line
	9250 1350 8600 1350
Wire Wire Line
	8600 1350 8600 1550
$Comp
L power:GND #PWR0104
U 1 1 5B5FBF33
P 1650 4150
F 0 "#PWR0104" H 1650 3900 50  0001 C CNN
F 1 "GND" H 1655 3977 50  0000 C CNN
F 2 "" H 1650 4150 50  0001 C CNN
F 3 "" H 1650 4150 50  0001 C CNN
	1    1650 4150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5B5FBF80
P 2000 3800
F 0 "#PWR0105" H 2000 3550 50  0001 C CNN
F 1 "GND" H 2005 3627 50  0000 C CNN
F 2 "" H 2000 3800 50  0001 C CNN
F 3 "" H 2000 3800 50  0001 C CNN
	1    2000 3800
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5B5FBFA9
P 1650 3300
F 0 "#PWR0106" H 1650 3050 50  0001 C CNN
F 1 "GND" H 1655 3127 50  0000 C CNN
F 2 "" H 1650 3300 50  0001 C CNN
F 3 "" H 1650 3300 50  0001 C CNN
	1    1650 3300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 5B5FBFD2
P 2000 2950
F 0 "#PWR0107" H 2000 2700 50  0001 C CNN
F 1 "GND" H 2005 2777 50  0000 C CNN
F 2 "" H 2000 2950 50  0001 C CNN
F 3 "" H 2000 2950 50  0001 C CNN
	1    2000 2950
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R1
U 1 1 5B5FE18D
P 2650 3050
F 0 "R1" V 2750 3050 50  0000 C CNN
F 1 "1k" V 2850 3050 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2690 3040 50  0001 C CNN
F 3 "~" H 2650 3050 50  0001 C CNN
	1    2650 3050
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R2
U 1 1 5B5FE21C
P 2650 3900
F 0 "R2" V 2750 3900 50  0000 C CNN
F 1 "1k" V 2850 3900 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2690 3890 50  0001 C CNN
F 3 "~" H 2650 3900 50  0001 C CNN
	1    2650 3900
	0    1    1    0   
$EndComp
Wire Wire Line
	2450 3900 2500 3900
Wire Wire Line
	2800 3900 2900 3900
Wire Wire Line
	2450 3050 2500 3050
Wire Wire Line
	2800 3050 2900 3050
Wire Wire Line
	2450 2950 2600 2950
Wire Wire Line
	2450 3800 2600 3800
$Comp
L power:GND #PWR0110
U 1 1 5B601352
P 5000 4900
F 0 "#PWR0110" H 5000 4650 50  0001 C CNN
F 1 "GND" H 5005 4727 50  0000 C CNN
F 2 "" H 5000 4900 50  0001 C CNN
F 3 "" H 5000 4900 50  0001 C CNN
	1    5000 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 4850 5000 4900
$Comp
L Device:C C4
U 1 1 5B603071
P 4650 1500
F 0 "C4" H 4765 1546 50  0000 L CNN
F 1 "0.1uF" H 4765 1455 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210_HandSoldering" H 4688 1350 50  0001 C CNN
F 3 "~" H 4650 1500 50  0001 C CNN
	1    4650 1500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 5B603217
P 4650 1700
F 0 "#PWR0112" H 4650 1450 50  0001 C CNN
F 1 "GND" H 4655 1527 50  0000 C CNN
F 2 "" H 4650 1700 50  0001 C CNN
F 3 "" H 4650 1700 50  0001 C CNN
	1    4650 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 1650 4650 1700
Wire Wire Line
	4650 1300 4650 1350
Wire Wire Line
	4650 1350 5000 1350
Wire Wire Line
	5000 1350 5000 1850
Connection ~ 4650 1350
Wire Wire Line
	5100 1850 5100 1350
Wire Wire Line
	5100 1350 5000 1350
Connection ~ 5000 1350
$Comp
L Device:R_US R3
U 1 1 5B605473
P 6300 3500
F 0 "R3" V 6400 3500 50  0000 C CNN
F 1 "10k" V 6500 3500 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6340 3490 50  0001 C CNN
F 3 "~" H 6300 3500 50  0001 C CNN
	1    6300 3500
	-1   0    0    1   
$EndComp
Wire Wire Line
	5600 2550 5850 2550
Wire Wire Line
	5600 2450 5850 2450
Wire Wire Line
	5600 2650 5850 2650
Wire Wire Line
	6300 3650 5600 3650
Connection ~ 6300 3650
$Comp
L power:GND #PWR0115
U 1 1 5B60FD8D
P 5400 6250
F 0 "#PWR0115" H 5400 6000 50  0001 C CNN
F 1 "GND" H 5405 6077 50  0000 C CNN
F 2 "" H 5400 6250 50  0001 C CNN
F 3 "" H 5400 6250 50  0001 C CNN
	1    5400 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 6050 4650 6050
Wire Wire Line
	4450 6150 4650 6150
Wire Wire Line
	4450 6250 4650 6250
Wire Wire Line
	5150 6150 5400 6150
Wire Wire Line
	5400 6050 5150 6050
Wire Wire Line
	5400 6250 5150 6250
Connection ~ 8600 1350
Wire Wire Line
	9250 2000 9250 2100
Wire Wire Line
	9250 2100 8600 2100
Wire Wire Line
	8600 2100 8600 1850
$Comp
L Connector:Screw_Terminal_01x02 J3
U 1 1 5B635EAD
P 10700 1650
F 0 "J3" H 10620 1325 50  0000 C CNN
F 1 "Conn_01x02" H 10650 1400 50  0000 C CNN
F 2 "Connectors_Molex:Molex_MegaFit_2x01x5.70mm_Straight" H 10700 1650 50  0001 C CNN
F 3 "~" H 10700 1650 50  0001 C CNN
	1    10700 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 2000 9650 2100
Wire Wire Line
	9650 2100 10500 2100
Wire Wire Line
	10500 2100 10500 1750
Wire Wire Line
	10500 1650 10500 1200
Wire Wire Line
	10500 1200 9750 1200
Wire Wire Line
	9750 1200 9750 1400
Text Notes 3650 2250 2    157  ~ 0
Power
Text Notes 3650 4750 2    157  ~ 0
Switches
Text Notes 3650 7600 2    157  ~ 0
Float Switches
Text Notes 10800 6300 2    157  ~ 0
Relays
Text Notes 5850 7600 2    157  ~ 0
Controller
NoConn ~ 4400 2150
NoConn ~ 5600 2750
NoConn ~ 5600 2850
NoConn ~ 5600 3350
NoConn ~ 5600 3450
NoConn ~ 5600 3550
NoConn ~ 5600 4250
NoConn ~ 5600 4350
NoConn ~ 4400 3850
NoConn ~ 9550 1400
Text Label 5900 4450 2    50   ~ 0
RELAY1
Text Label 5900 4550 2    50   ~ 0
RELAY2
Text Label 5400 6150 2    50   ~ 0
MOSI0
Text Label 4450 6050 0    50   ~ 0
MISO0
Text Label 4450 6150 0    50   ~ 0
SCK0
Text Label 4450 6250 0    50   ~ 0
RESET
Text Label 2600 3800 2    50   ~ 0
SW2
Text Label 2600 2950 2    50   ~ 0
SW1
Text Label 5850 3250 2    50   ~ 0
SW2
Text Label 6550 3650 2    50   ~ 0
RESET
Text Label 5850 2450 2    50   ~ 0
MOSI0
Text Label 5850 2550 2    50   ~ 0
MISO0
Text Label 5850 2650 2    50   ~ 0
SCK0
$Comp
L Device:Q_NMOS_GDS Q1
U 1 1 5B6A25F9
P 8150 2300
F 0 "Q1" H 8355 2346 50  0000 L CNN
F 1 "BSS138" H 8355 2255 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 8350 2400 50  0001 C CNN
F 3 "~" H 8150 2300 50  0001 C CNN
	1    8150 2300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 5B6A29A2
P 8250 2750
F 0 "#PWR0119" H 8250 2500 50  0001 C CNN
F 1 "GND" H 8255 2577 50  0000 C CNN
F 2 "" H 8250 2750 50  0001 C CNN
F 3 "" H 8250 2750 50  0001 C CNN
	1    8250 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 1150 1050 1150
Wire Wire Line
	1050 1150 1050 1250
Wire Wire Line
	1050 1350 1050 1450
Wire Wire Line
	1050 1450 1550 1450
Connection ~ 1550 1450
Wire Notes Line
	3850 500  3850 7750
Wire Notes Line
	3850 2500 500  2500
Wire Notes Line
	3850 4950 500  4950
Wire Notes Line
	6950 6500 6950 500 
Text Label 7650 2300 0    50   ~ 0
RELAY2
Wire Wire Line
	8600 2100 8250 2100
Connection ~ 8600 2100
$Comp
L Device:R_US R4
U 1 1 5B6CF688
P 7950 2500
F 0 "R4" H 8018 2546 50  0000 L CNN
F 1 "4.7k" H 8018 2455 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7990 2490 50  0001 C CNN
F 3 "~" H 7950 2500 50  0001 C CNN
	1    7950 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 2650 7950 2700
Wire Wire Line
	7950 2700 8250 2700
Wire Wire Line
	8250 2500 8250 2700
Wire Wire Line
	8250 2750 8250 2700
Connection ~ 8250 2700
Wire Wire Line
	7950 2350 7950 2300
$Comp
L Device:R_US R6
U 1 1 5B6D7D19
P 8250 1500
F 0 "R6" H 8318 1546 50  0000 L CNN
F 1 "470" H 8318 1455 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8290 1490 50  0001 C CNN
F 3 "~" H 8250 1500 50  0001 C CNN
	1    8250 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 1350 8250 1350
$Comp
L Device:LED D1
U 1 1 5B6DAB76
P 8250 1850
F 0 "D1" V 8288 1733 50  0000 R CNN
F 1 "LED" V 8197 1733 50  0000 R CNN
F 2 "LEDs:LED_0603_HandSoldering" H 8250 1850 50  0001 C CNN
F 3 "~" H 8250 1850 50  0001 C CNN
	1    8250 1850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8250 1650 8250 1700
Wire Wire Line
	8250 2000 8250 2100
Connection ~ 8250 2100
$Comp
L Relay:FINDER-40.11 K2
U 1 1 5B6EFC7D
P 9450 4200
F 0 "K2" V 9950 4200 50  0000 L CNN
F 1 "SRD-03VDC-SL-C" V 10050 3900 50  0000 L CNN
F 2 "Relays_THT:Relay_SPDT_SANYOU_SRD_Series_Form_C" H 10590 4160 50  0001 C CNN
F 3 "https://www.finder-relais.net/de/finder-relais-serie-40.pdf" H 9450 4200 50  0001 C CNN
	1    9450 4200
	1    0    0    -1  
$EndComp
$Comp
L Diode:B120-E3 D4
U 1 1 5B6EFC84
P 8600 4200
F 0 "D4" H 8550 4350 50  0000 L CNN
F 1 "RB060M-60TR" H 8350 4450 50  0000 L CNN
F 2 "Diode_SMD:D_SMA" H 8600 4025 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88946/b120.pdf" H 8600 4200 50  0001 C CNN
	1    8600 4200
	0    1    1    0   
$EndComp
Wire Wire Line
	9250 3900 9250 3850
Wire Wire Line
	9250 3850 8600 3850
Wire Wire Line
	8600 3850 8600 4050
Connection ~ 8600 3850
Wire Wire Line
	9250 4500 9250 4600
Wire Wire Line
	9250 4600 8600 4600
Wire Wire Line
	8600 4600 8600 4350
$Comp
L Connector:Screw_Terminal_01x02 J4
U 1 1 5B6EFC98
P 10700 4150
F 0 "J4" H 10620 3825 50  0000 C CNN
F 1 "Conn_01x02" H 10650 3900 50  0000 C CNN
F 2 "Connectors_Molex:Molex_MegaFit_2x01x5.70mm_Straight" H 10700 4150 50  0001 C CNN
F 3 "~" H 10700 4150 50  0001 C CNN
	1    10700 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 4500 9650 4600
Wire Wire Line
	9650 4600 10500 4600
Wire Wire Line
	10500 4600 10500 4250
Wire Wire Line
	10500 4150 10500 3700
Wire Wire Line
	10500 3700 9750 3700
Wire Wire Line
	9750 3700 9750 3900
NoConn ~ 9550 3900
$Comp
L Device:Q_NMOS_GDS Q2
U 1 1 5B6EFCA6
P 8150 4800
F 0 "Q2" H 8355 4846 50  0000 L CNN
F 1 "BSS138" H 8355 4755 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 8350 4900 50  0001 C CNN
F 3 "~" H 8150 4800 50  0001 C CNN
	1    8150 4800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0122
U 1 1 5B6EFCAD
P 8250 5250
F 0 "#PWR0122" H 8250 5000 50  0001 C CNN
F 1 "GND" H 8255 5077 50  0000 C CNN
F 2 "" H 8250 5250 50  0001 C CNN
F 3 "" H 8250 5250 50  0001 C CNN
	1    8250 5250
	1    0    0    -1  
$EndComp
Text Label 7650 4800 0    50   ~ 0
RELAY1
Wire Wire Line
	8600 4600 8250 4600
Connection ~ 8600 4600
$Comp
L Device:R_US R5
U 1 1 5B6EFCB7
P 7950 5000
F 0 "R5" H 8018 5046 50  0000 L CNN
F 1 "4.7k" H 8018 4955 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7990 4990 50  0001 C CNN
F 3 "~" H 7950 5000 50  0001 C CNN
	1    7950 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 5150 7950 5200
Wire Wire Line
	7950 5200 8250 5200
Wire Wire Line
	8250 5000 8250 5200
Wire Wire Line
	8250 5250 8250 5200
Connection ~ 8250 5200
Wire Wire Line
	7950 4850 7950 4800
$Comp
L Device:R_US R7
U 1 1 5B6EFCC5
P 8250 4000
F 0 "R7" H 8318 4046 50  0000 L CNN
F 1 "470" H 8318 3955 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8290 3990 50  0001 C CNN
F 3 "~" H 8250 4000 50  0001 C CNN
	1    8250 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 3850 8250 3850
$Comp
L Device:LED D3
U 1 1 5B6EFCCD
P 8250 4350
F 0 "D3" V 8288 4233 50  0000 R CNN
F 1 "LED" V 8197 4233 50  0000 R CNN
F 2 "LEDs:LED_0603_HandSoldering" H 8250 4350 50  0001 C CNN
F 3 "~" H 8250 4350 50  0001 C CNN
	1    8250 4350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8250 4150 8250 4200
Wire Wire Line
	8250 4500 8250 4600
Connection ~ 8250 4600
Text Label 5950 2250 2    50   ~ 0
LED_SW1
Text Label 5950 2350 2    50   ~ 0
LED_SW2
Wire Wire Line
	2000 2950 2050 2950
Wire Wire Line
	2050 3050 1800 3050
Wire Wire Line
	1650 3250 1650 3300
Text Label 1400 2850 0    50   ~ 0
LED_SW1
Wire Wire Line
	2050 3800 2000 3800
Wire Wire Line
	2050 3900 1800 3900
Wire Wire Line
	1650 4100 1650 4150
Text Label 1400 3700 0    50   ~ 0
LED_SW2
$Comp
L Jumper:SolderJumper_3_Open JP2
U 1 1 5B74373A
P 1650 3900
F 0 "JP2" V 1696 3968 50  0000 L CNN
F 1 "SolderJumper_3_Open" V 1605 3968 50  0000 L CNN
F 2 "" H 1650 3900 50  0001 C CNN
F 3 "~" H 1650 3900 50  0001 C CNN
	1    1650 3900
	0    -1   -1   0   
$EndComp
$Comp
L Jumper:SolderJumper_3_Open JP1
U 1 1 5B743823
P 1650 3050
F 0 "JP1" V 1696 3118 50  0000 L CNN
F 1 "SolderJumper_3_Open" V 1605 3118 50  0000 L CNN
F 2 "" H 1650 3050 50  0001 C CNN
F 3 "~" H 1650 3050 50  0001 C CNN
	1    1650 3050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5600 4450 5900 4450
Wire Wire Line
	5600 4550 5900 4550
Wire Wire Line
	5600 2250 5950 2250
Wire Wire Line
	5600 2350 5950 2350
Wire Wire Line
	6300 3650 6550 3650
Wire Wire Line
	1400 2850 1650 2850
Wire Wire Line
	1650 3700 1400 3700
Connection ~ 7950 2300
Wire Wire Line
	7950 4800 7650 4800
Connection ~ 7950 4800
Wire Wire Line
	7650 2300 7950 2300
Wire Wire Line
	5600 2150 5850 2150
Text Label 5850 2150 2    50   ~ 0
SW1
Wire Wire Line
	5600 3250 5850 3250
NoConn ~ 5600 3850
NoConn ~ 5600 3950
NoConn ~ 5600 3050
NoConn ~ 5600 3150
NoConn ~ 4400 3950
NoConn ~ 4400 4050
NoConn ~ 4400 4150
$Comp
L power:GND #PWR0116
U 1 1 5BD00F4B
P 2400 5600
F 0 "#PWR0116" H 2400 5350 50  0001 C CNN
F 1 "GND" H 2405 5427 50  0000 C CNN
F 2 "" H 2400 5600 50  0001 C CNN
F 3 "" H 2400 5600 50  0001 C CNN
	1    2400 5600
	0    -1   -1   0   
$EndComp
$Comp
L remoteSwitch_custom:FLOAT U1
U 1 1 5BD15753
P 1500 5500
F 0 "U1" H 1706 5965 50  0000 C CNN
F 1 "FLOAT" H 1706 5874 50  0000 C CNN
F 2 "" H 1650 5495 50  0001 C CNN
F 3 "" H 1650 5495 50  0001 C CNN
	1    1500 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 5450 2600 5450
Text Label 2600 5450 2    50   ~ 0
SENS2
$Comp
L power:GND #PWR0118
U 1 1 5BD2CEEE
P 2400 6800
F 0 "#PWR0118" H 2400 6550 50  0001 C CNN
F 1 "GND" H 2405 6627 50  0000 C CNN
F 2 "" H 2400 6800 50  0001 C CNN
F 3 "" H 2400 6800 50  0001 C CNN
	1    2400 6800
	0    -1   -1   0   
$EndComp
$Comp
L remoteSwitch_custom:FLOAT U4
U 1 1 5BD2CEF4
P 1500 6700
F 0 "U4" H 1706 7165 50  0000 C CNN
F 1 "FLOAT" H 1706 7074 50  0000 C CNN
F 2 "" H 1650 6695 50  0001 C CNN
F 3 "" H 1650 6695 50  0001 C CNN
	1    1500 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 6650 2600 6650
Text Label 2600 6650 2    50   ~ 0
SENS1
Wire Wire Line
	2350 6950 2600 6950
Wire Wire Line
	5600 4150 5900 4150
Text Label 5900 4150 2    50   ~ 0
SENS1
Wire Wire Line
	5600 4050 5900 4050
Text Label 5900 4050 2    50   ~ 0
SENS2
$Comp
L power:+5V #PWR07
U 1 1 5BD3D48A
P 3600 1050
F 0 "#PWR07" H 3600 900 50  0001 C CNN
F 1 "+5V" H 3615 1223 50  0000 C CNN
F 2 "" H 3600 1050 50  0001 C CNN
F 3 "" H 3600 1050 50  0001 C CNN
	1    3600 1050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR08
U 1 1 5BD3D51D
P 4650 1300
F 0 "#PWR08" H 4650 1150 50  0001 C CNN
F 1 "+5V" H 4665 1473 50  0000 C CNN
F 2 "" H 4650 1300 50  0001 C CNN
F 3 "" H 4650 1300 50  0001 C CNN
	1    4650 1300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR010
U 1 1 5BD3D829
P 6300 3350
F 0 "#PWR010" H 6300 3200 50  0001 C CNN
F 1 "+5V" H 6315 3523 50  0000 C CNN
F 2 "" H 6300 3350 50  0001 C CNN
F 3 "" H 6300 3350 50  0001 C CNN
	1    6300 3350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR011
U 1 1 5BD3D975
P 8600 1350
F 0 "#PWR011" H 8600 1200 50  0001 C CNN
F 1 "+5V" H 8615 1523 50  0000 C CNN
F 2 "" H 8600 1350 50  0001 C CNN
F 3 "" H 8600 1350 50  0001 C CNN
	1    8600 1350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR012
U 1 1 5BD3DDA1
P 8600 3850
F 0 "#PWR012" H 8600 3700 50  0001 C CNN
F 1 "+5V" H 8615 4023 50  0000 C CNN
F 2 "" H 8600 3850 50  0001 C CNN
F 3 "" H 8600 3850 50  0001 C CNN
	1    8600 3850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR05
U 1 1 5BD3E28E
P 2900 3050
F 0 "#PWR05" H 2900 2900 50  0001 C CNN
F 1 "+5V" H 2915 3223 50  0000 C CNN
F 2 "" H 2900 3050 50  0001 C CNN
F 3 "" H 2900 3050 50  0001 C CNN
	1    2900 3050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR06
U 1 1 5BD3E2D9
P 2900 3900
F 0 "#PWR06" H 2900 3750 50  0001 C CNN
F 1 "+5V" H 2915 4073 50  0000 C CNN
F 2 "" H 2900 3900 50  0001 C CNN
F 3 "" H 2900 3900 50  0001 C CNN
	1    2900 3900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01
U 1 1 5BD3E9B3
P 2750 5250
F 0 "#PWR01" H 2750 5100 50  0001 C CNN
F 1 "+5V" H 2765 5423 50  0000 C CNN
F 2 "" H 2750 5250 50  0001 C CNN
F 3 "" H 2750 5250 50  0001 C CNN
	1    2750 5250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR03
U 1 1 5BD3EDFF
P 2750 6450
F 0 "#PWR03" H 2750 6300 50  0001 C CNN
F 1 "+5V" H 2765 6623 50  0000 C CNN
F 2 "" H 2750 6450 50  0001 C CNN
F 3 "" H 2750 6450 50  0001 C CNN
	1    2750 6450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR09
U 1 1 5BD3F54B
P 5400 6050
F 0 "#PWR09" H 5400 5900 50  0001 C CNN
F 1 "+5V" H 5415 6223 50  0000 C CNN
F 2 "" H 5400 6050 50  0001 C CNN
F 3 "" H 5400 6050 50  0001 C CNN
	1    5400 6050
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_3_Open JP4
U 1 1 5BD41178
P 2750 6950
F 0 "JP4" V 2796 7018 50  0000 L CNN
F 1 "SolderJumper_3_Open" V 2705 7018 50  0000 L CNN
F 2 "" H 2750 6950 50  0001 C CNN
F 3 "~" H 2750 6950 50  0001 C CNN
	1    2750 6950
	0    1    1    0   
$EndComp
Wire Wire Line
	2400 6800 2350 6800
$Comp
L power:GND #PWR04
U 1 1 5BD44F36
P 2750 7150
F 0 "#PWR04" H 2750 6900 50  0001 C CNN
F 1 "GND" H 2755 6977 50  0000 C CNN
F 2 "" H 2750 7150 50  0001 C CNN
F 3 "" H 2750 7150 50  0001 C CNN
	1    2750 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 6500 2750 6450
Wire Wire Line
	2350 6500 2750 6500
Wire Wire Line
	2750 6750 2750 6500
Connection ~ 2750 6500
$Comp
L Jumper:SolderJumper_3_Open JP3
U 1 1 5BD53D18
P 2750 5750
F 0 "JP3" V 2796 5818 50  0000 L CNN
F 1 "SolderJumper_3_Open" V 2705 5818 50  0000 L CNN
F 2 "" H 2750 5750 50  0001 C CNN
F 3 "~" H 2750 5750 50  0001 C CNN
	1    2750 5750
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5BD53F24
P 2750 5950
F 0 "#PWR02" H 2750 5700 50  0001 C CNN
F 1 "GND" H 2755 5777 50  0000 C CNN
F 2 "" H 2750 5950 50  0001 C CNN
F 3 "" H 2750 5950 50  0001 C CNN
	1    2750 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 5250 2750 5300
Wire Wire Line
	2600 5750 2350 5750
Wire Wire Line
	2400 5600 2350 5600
Wire Wire Line
	2350 5300 2750 5300
Connection ~ 2750 5300
Wire Wire Line
	2750 5300 2750 5550
$EndSCHEMATC
