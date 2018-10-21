EESchema Schematic File Version 4
LIBS:buttonRelayModuleControl-cache
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
F 2 "Power_Supply:HLK-PM05" H 2200 1300 60  0001 C CNN
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
F 2 "Connector_Molex:Molex_Mega-Fit_76829-0102_2x01_P5.70mm_Vertical" H 850 1350 50  0001 C CNN
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
F 2 "Fuse:Fuse_Bourns_MF-RG300" V 1230 1150 50  0001 C CNN
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
F 2 "Varistor:RV_Disc_D7mm_W3.4mm_P5mm" V 1480 1300 50  0001 C CNN
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
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 3238 1150 50  0001 C CNN
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
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P1.50mm" H 2838 1150 50  0001 C CNN
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
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 2250 3350 50  0001 C CNN
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
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 2250 4200 50  0001 C CNN
F 3 "" H 2250 4200 50  0001 C CNN
	1    2250 3900
	1    0    0    -1  
$EndComp
$Comp
L MCU_Microchip_ATmega:ATmega328PB-AU U3
U 1 1 5B5E6ED7
P 5000 3350
F 0 "U3" H 5000 3400 50  0000 R CNN
F 1 "ATmega328PB-AU" H 5750 1900 50  0000 R CNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 5000 3350 50  0001 C CIN
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
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical_SMD" H 4850 6150 50  0001 C CNN
F 3 "~" H 4850 6150 50  0001 C CNN
	1    4850 6150
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
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2690 3040 50  0001 C CNN
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
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2690 3890 50  0001 C CNN
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
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 4688 1350 50  0001 C CNN
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
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 6340 3490 50  0001 C CNN
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
Text Notes 3650 2250 2    157  ~ 0
Power
Text Notes 3700 4400 2    157  ~ 0
Switches
Text Notes 3650 7600 2    157  ~ 0
Float Switches
Text Notes 10800 6300 2    157  ~ 0
Relays
Text Notes 5850 7600 2    157  ~ 0
Controller
NoConn ~ 4400 2150
NoConn ~ 5600 2850
NoConn ~ 5600 3350
NoConn ~ 5600 3450
NoConn ~ 5600 3550
NoConn ~ 5600 4250
NoConn ~ 5600 4350
NoConn ~ 4400 3850
Text Label 5850 2750 2    50   ~ 0
RELAY1
Text Label 4100 3950 0    50   ~ 0
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
Text Label 5900 4550 2    50   ~ 0
SW2
Text Label 6550 3650 2    50   ~ 0
RESET
Text Label 5850 2450 2    50   ~ 0
MOSI0
Text Label 5850 2550 2    50   ~ 0
MISO0
Text Label 5850 2650 2    50   ~ 0
SCK0
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
	3850 4450 500  4450
Wire Notes Line
	6950 6500 6950 500 
Text Label 7650 2300 0    50   ~ 0
RELAY2
Text Label 7650 3900 0    50   ~ 0
RELAY1
Text Label 5950 2250 2    50   ~ 0
LED_SW1
Text Label 5950 4450 2    50   ~ 0
LED_SW2
Wire Wire Line
	2000 2950 2050 2950
Text Label 1400 3050 0    50   ~ 0
LED_SW1
Wire Wire Line
	2050 3800 2000 3800
Text Label 1400 3900 0    50   ~ 0
LED_SW2
Wire Wire Line
	6300 3650 6550 3650
Wire Wire Line
	7650 2300 7950 2300
Text Label 5850 2350 2    50   ~ 0
SW1
NoConn ~ 5600 3850
NoConn ~ 5600 3950
NoConn ~ 5600 3050
NoConn ~ 5600 3150
NoConn ~ 4400 4050
NoConn ~ 4400 4150
$Comp
L remoteSwitch_custom:FLOAT FLT1
U 1 1 5BD15753
P 1350 5200
F 0 "FLT1" H 1556 5665 50  0000 C CNN
F 1 "FLOAT" H 1556 5574 50  0000 C CNN
F 2 "Connectors_JST:JST_PH_B4B-PH-K_1x04_P2.00mm_Vertical" H 1500 5195 50  0001 C CNN
F 3 "" H 1500 5195 50  0001 C CNN
	1    1350 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 5150 2450 5150
Text Label 2450 5150 2    50   ~ 0
SENS1
Wire Wire Line
	5600 4150 5900 4150
Wire Wire Line
	5600 4050 5900 4050
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
P 2600 4700
F 0 "#PWR01" H 2600 4550 50  0001 C CNN
F 1 "+5V" H 2615 4873 50  0000 C CNN
F 2 "" H 2600 4700 50  0001 C CNN
F 3 "" H 2600 4700 50  0001 C CNN
	1    2600 4700
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
L power:GND #PWR02
U 1 1 5BD53F24
P 2600 5750
F 0 "#PWR02" H 2600 5500 50  0001 C CNN
F 1 "GND" H 2605 5577 50  0000 C CNN
F 2 "" H 2600 5750 50  0001 C CNN
F 3 "" H 2600 5750 50  0001 C CNN
	1    2600 5750
	1    0    0    -1  
$EndComp
$Comp
L remoteSwitch_custom:RELAY RLY2
U 1 1 5BCC1595
P 8450 2300
F 0 "RLY2" H 8828 2346 50  0000 L CNN
F 1 "RELAY" H 8828 2255 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 8550 2300 50  0001 C CNN
F 3 "" H 8550 2300 50  0001 C CNN
	1    8450 2300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR011
U 1 1 5BCC93F2
P 8450 1800
F 0 "#PWR011" H 8450 1650 50  0001 C CNN
F 1 "+5V" H 8465 1973 50  0000 C CNN
F 2 "" H 8450 1800 50  0001 C CNN
F 3 "" H 8450 1800 50  0001 C CNN
	1    8450 1800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5BCC9879
P 8450 2800
F 0 "#PWR012" H 8450 2550 50  0001 C CNN
F 1 "GND" H 8455 2627 50  0000 C CNN
F 2 "" H 8450 2800 50  0001 C CNN
F 3 "" H 8450 2800 50  0001 C CNN
	1    8450 2800
	1    0    0    -1  
$EndComp
$Comp
L remoteSwitch_custom:RELAY RLY1
U 1 1 5BCCF162
P 8450 3900
F 0 "RLY1" H 8828 3946 50  0000 L CNN
F 1 "RELAY" H 8828 3855 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 8550 3900 50  0001 C CNN
F 3 "" H 8550 3900 50  0001 C CNN
	1    8450 3900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR013
U 1 1 5BCCF168
P 8450 3400
F 0 "#PWR013" H 8450 3250 50  0001 C CNN
F 1 "+5V" H 8465 3573 50  0000 C CNN
F 2 "" H 8450 3400 50  0001 C CNN
F 3 "" H 8450 3400 50  0001 C CNN
	1    8450 3400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR014
U 1 1 5BCCF16E
P 8450 4400
F 0 "#PWR014" H 8450 4150 50  0001 C CNN
F 1 "GND" H 8455 4227 50  0000 C CNN
F 2 "" H 8450 4400 50  0001 C CNN
F 3 "" H 8450 4400 50  0001 C CNN
	1    8450 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 3900 7650 3900
Wire Wire Line
	1800 4700 2600 4700
Wire Wire Line
	1800 5750 2600 5750
Connection ~ 2600 5750
$Comp
L remoteSwitch_custom:FLOAT FLT2
U 1 1 5BCE51EF
P 1650 6600
F 0 "FLT2" H 1856 7065 50  0000 C CNN
F 1 "FLOAT" H 1856 6974 50  0000 C CNN
F 2 "Connectors_JST:JST_PH_B4B-PH-K_1x04_P2.00mm_Vertical" H 1800 6595 50  0001 C CNN
F 3 "" H 1800 6595 50  0001 C CNN
	1    1650 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 6550 2750 6550
Text Label 2750 6550 2    50   ~ 0
SENS2
$Comp
L power:+5V #PWR03
U 1 1 5BCE51F7
P 2900 6100
F 0 "#PWR03" H 2900 5950 50  0001 C CNN
F 1 "+5V" H 2915 6273 50  0000 C CNN
F 2 "" H 2900 6100 50  0001 C CNN
F 3 "" H 2900 6100 50  0001 C CNN
	1    2900 6100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5BCE5203
P 2900 7150
F 0 "#PWR04" H 2900 6900 50  0001 C CNN
F 1 "GND" H 2905 6977 50  0000 C CNN
F 2 "" H 2900 7150 50  0001 C CNN
F 3 "" H 2900 7150 50  0001 C CNN
	1    2900 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 6100 2900 6100
Wire Wire Line
	2100 7150 2900 7150
Connection ~ 2900 7150
Text Label 5900 4050 2    50   ~ 0
SENS2
Text Label 5900 4150 2    50   ~ 0
SENS1
Wire Wire Line
	1400 3900 2050 3900
Wire Wire Line
	1400 3050 2050 3050
Wire Wire Line
	2500 6650 2900 6650
Wire Wire Line
	2900 6650 2900 7150
Wire Wire Line
	2200 5250 2600 5250
Wire Wire Line
	2600 5250 2600 5750
Wire Wire Line
	4400 3950 4100 3950
Wire Wire Line
	5600 2750 5850 2750
Wire Wire Line
	5600 4450 5950 4450
Wire Wire Line
	5600 2250 5950 2250
Wire Wire Line
	5600 2350 5850 2350
NoConn ~ 5600 2150
Wire Wire Line
	5600 4550 5900 4550
NoConn ~ 5600 3250
$EndSCHEMATC
