EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title "16up"
Date "2023-03-07"
Rev "3git"
Comp "SukkoPera & The Folks From The Plus/4 World Forum"
Comment1 "Licensed under CC BY-NC-SA 4.0"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MOS_6529:MOS_6529 U2
U 1 1 64674547
P 10705 2075
F 0 "U2" H 10705 2890 50  0000 C CNN
F 1 "MOS_6529" H 10705 2799 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm_Socket_LongPads" H 10705 2075 50  0001 C CNN
F 3 "DOCUMENTATION" H 10705 2075 50  0001 C CNN
	1    10705 2075
	-1   0    0    -1  
$EndComp
Text Notes 5980 960  0    50   ~ 0
CHIP-SELECT GENERATION\n(INSPIRED BY SOLDER'S SIDCARD)
Wire Wire Line
	9955 1555 9640 1555
Text Label 9640 1555 0    50   ~ 0
~cs_par
Wire Wire Line
	9955 1655 9640 1655
Text Label 9640 1655 0    50   ~ 0
r_~w
$Comp
L PLUS4_USERPORT:PLUS4_USERPORT CN2
U 1 1 646E7EB3
P 14555 1810
F 0 "CN2" H 14555 2725 50  0000 C CNN
F 1 "ALMOST_USERPORT" H 14555 2634 50  0000 C CNN
F 2 "16up:Plus4_UserPort" H 14555 1810 50  0001 C CNN
F 3 "DOCUMENTATION" H 14555 1810 50  0001 C CNN
	1    14555 1810
	1    0    0    -1  
$EndComp
Wire Wire Line
	13805 1260 13715 1260
Wire Wire Line
	13715 1260 13715 2360
Wire Wire Line
	13805 2360 13715 2360
Connection ~ 13715 2360
Wire Wire Line
	13715 2360 13715 2625
$Comp
L power:GND #PWR0110
U 1 1 646F08AB
P 13715 2625
F 0 "#PWR0110" H 13715 2375 50  0001 C CNN
F 1 "GND" H 13720 2452 50  0000 C CNN
F 2 "" H 13715 2625 50  0001 C CNN
F 3 "" H 13715 2625 50  0001 C CNN
	1    13715 2625
	1    0    0    -1  
$EndComp
Wire Wire Line
	15305 1260 15410 1260
Wire Wire Line
	15410 1260 15410 2360
Wire Wire Line
	15305 2360 15410 2360
Connection ~ 15410 2360
Wire Wire Line
	15410 2360 15410 2625
$Comp
L power:GND #PWR0111
U 1 1 646F14E0
P 15410 2625
F 0 "#PWR0111" H 15410 2375 50  0001 C CNN
F 1 "GND" H 15415 2452 50  0000 C CNN
F 2 "" H 15410 2625 50  0001 C CNN
F 3 "" H 15410 2625 50  0001 C CNN
	1    15410 2625
	-1   0    0    -1  
$EndComp
Wire Wire Line
	13805 1360 13540 1360
Wire Wire Line
	13540 1360 13540 895 
$Comp
L power:+5V #PWR0112
U 1 1 646F95B5
P 13540 895
F 0 "#PWR0112" H 13540 745 50  0001 C CNN
F 1 "+5V" H 13555 1068 50  0000 C CNN
F 2 "" H 13540 895 50  0001 C CNN
F 3 "" H 13540 895 50  0001 C CNN
	1    13540 895 
	1    0    0    -1  
$EndComp
Wire Wire Line
	13805 1560 13255 1560
Wire Wire Line
	13805 1660 13255 1660
Wire Wire Line
	13805 1760 13255 1760
Wire Wire Line
	13805 1860 13255 1860
Wire Wire Line
	15305 1360 15780 1360
Wire Wire Line
	15305 2060 15780 2060
Wire Wire Line
	15305 1960 15780 1960
Wire Wire Line
	15305 1760 15780 1760
Entry Wire Line
	13155 1660 13255 1560
Entry Wire Line
	13155 1760 13255 1660
Entry Wire Line
	13155 1860 13255 1760
Entry Wire Line
	13155 1960 13255 1860
Entry Wire Line
	15880 1460 15780 1360
Entry Wire Line
	15880 2160 15780 2060
Entry Wire Line
	15880 2060 15780 1960
Entry Wire Line
	15880 1860 15780 1760
Wire Bus Line
	13155 2990 12505 2990
Text Label 12505 2990 0    50   ~ 0
parallel_port
Text Label 13255 1560 0    50   ~ 0
p2
Text Label 13255 1660 0    50   ~ 0
p3
Text Label 13255 1760 0    50   ~ 0
p4
Text Label 13255 1860 0    50   ~ 0
p5
Text Label 15780 1360 2    50   ~ 0
p0
Text Label 15780 2060 2    50   ~ 0
p1
Text Label 15780 1960 2    50   ~ 0
p6
Text Label 15780 1760 2    50   ~ 0
p7
NoConn ~ 13805 2160
NoConn ~ 13805 2260
Wire Wire Line
	13805 1460 13430 1460
Text Label 13430 1460 0    50   ~ 0
~reset
Wire Bus Line
	13155 2990 15880 2990
Connection ~ 13155 2990
$Comp
L Connector:Conn_01x01_Male J1
U 1 1 65389334
P 12635 2060
F 0 "J1" H 12745 2285 50  0000 C CNN
F 1 "ATTENTION_IN" H 12745 2190 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 12635 2060 50  0001 C CNN
F 3 "~" H 12635 2060 50  0001 C CNN
	1    12635 2060
	1    0    0    -1  
$EndComp
Wire Wire Line
	12835 2060 13805 2060
Text Notes 12980 2465 2    50   ~ 0
WE PROVIDE A PIN\nFOR CONNECTION\nTO REAL ~ATTN~ LINE,\nJUST IN CASE
Text Notes 10385 1050 0    50   ~ 0
"PARALLEL" PORT
Text Notes 14105 745  0    50   ~ 0
USER PORT CONNECTOR
Text Notes 13675 2355 2    50   ~ 0
NO WAY WE\nCAN HAVE\n9VAC HERE!
Wire Wire Line
	9955 1895 9680 1895
Wire Wire Line
	9955 1995 9680 1995
Wire Wire Line
	9955 2095 9680 2095
Wire Wire Line
	9955 2195 9680 2195
Wire Wire Line
	9955 2295 9680 2295
Wire Wire Line
	9955 2395 9680 2395
Wire Wire Line
	9955 2495 9680 2495
Wire Wire Line
	9955 2595 9680 2595
Entry Wire Line
	9580 1995 9680 1895
Entry Wire Line
	9580 2095 9680 1995
Entry Wire Line
	9580 2195 9680 2095
Entry Wire Line
	9580 2295 9680 2195
Entry Wire Line
	9580 2395 9680 2295
Entry Wire Line
	9580 2495 9680 2395
Entry Wire Line
	9580 2595 9680 2495
Entry Wire Line
	9580 2695 9680 2595
Wire Bus Line
	9580 2695 9170 2695
Text Label 9170 2695 0    50   ~ 0
data_bus
Text Label 9680 1895 0    50   ~ 0
d0
Text Label 9680 1995 0    50   ~ 0
d1
Text Label 9680 2095 0    50   ~ 0
d2
Text Label 9680 2195 0    50   ~ 0
d3
Text Label 9680 2295 0    50   ~ 0
d4
Text Label 9680 2395 0    50   ~ 0
d5
Text Label 9680 2495 0    50   ~ 0
d6
Text Label 9680 2595 0    50   ~ 0
d7
Wire Wire Line
	1685 1605 1580 1605
Wire Wire Line
	1580 1605 1580 4005
Wire Wire Line
	1685 4005 1580 4005
Connection ~ 1580 4005
Wire Wire Line
	1580 4005 1580 4255
$Comp
L power:GND #PWR0101
U 1 1 64655433
P 1580 4255
F 0 "#PWR0101" H 1580 4005 50  0001 C CNN
F 1 "GND" H 1585 4082 50  0000 C CNN
F 2 "" H 1580 4255 50  0001 C CNN
F 3 "" H 1580 4255 50  0001 C CNN
	1    1580 4255
	1    0    0    -1  
$EndComp
Wire Wire Line
	3185 1605 3290 1605
Wire Wire Line
	3290 1605 3290 4005
Wire Wire Line
	3185 4005 3290 4005
Connection ~ 3290 4005
Wire Wire Line
	3290 4005 3290 4255
$Comp
L power:GND #PWR0102
U 1 1 646567C8
P 3290 4255
F 0 "#PWR0102" H 3290 4005 50  0001 C CNN
F 1 "GND" H 3295 4082 50  0000 C CNN
F 2 "" H 3290 4255 50  0001 C CNN
F 3 "" H 3290 4255 50  0001 C CNN
	1    3290 4255
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1685 1705 1480 1705
Wire Wire Line
	1480 1705 1480 1230
$Comp
L power:+5V #PWR0103
U 1 1 64657FFD
P 1480 1230
F 0 "#PWR0103" H 1480 1080 50  0001 C CNN
F 1 "+5V" H 1495 1403 50  0000 C CNN
F 2 "" H 1480 1230 50  0001 C CNN
F 3 "" H 1480 1230 50  0001 C CNN
	1    1480 1230
	1    0    0    -1  
$EndComp
Wire Wire Line
	1685 1805 1480 1805
Wire Wire Line
	1480 1805 1480 1705
Connection ~ 1480 1705
NoConn ~ 1685 3705
NoConn ~ 1685 3805
NoConn ~ 3185 1905
NoConn ~ 3185 2005
NoConn ~ 1685 2605
NoConn ~ 1685 2705
NoConn ~ 1685 2805
Wire Wire Line
	3185 2105 3530 2105
Wire Wire Line
	3185 2205 3530 2205
Wire Wire Line
	3185 2305 3530 2305
Wire Wire Line
	3185 2405 3530 2405
Wire Wire Line
	3185 2505 3530 2505
Wire Wire Line
	3185 2605 3530 2605
Wire Wire Line
	3185 2705 3530 2705
Wire Wire Line
	3185 2805 3530 2805
Wire Wire Line
	3185 2905 3530 2905
Wire Wire Line
	3185 3005 3530 3005
Wire Wire Line
	3185 3105 3530 3105
Wire Wire Line
	3185 3205 3530 3205
Wire Wire Line
	3185 3305 3530 3305
Wire Wire Line
	3185 3405 3530 3405
Wire Wire Line
	3185 3505 3530 3505
Wire Wire Line
	3185 3605 3530 3605
Entry Wire Line
	3530 2105 3630 2205
Entry Wire Line
	3530 2205 3630 2305
Entry Wire Line
	3530 2305 3630 2405
Entry Wire Line
	3530 2405 3630 2505
Entry Wire Line
	3530 2505 3630 2605
Entry Wire Line
	3530 2605 3630 2705
Entry Wire Line
	3530 2705 3630 2805
Entry Wire Line
	3530 2805 3630 2905
Entry Wire Line
	3530 2905 3630 3005
Entry Wire Line
	3530 3005 3630 3105
Entry Wire Line
	3530 3105 3630 3205
Entry Wire Line
	3530 3205 3630 3305
Entry Wire Line
	3530 3305 3630 3405
Entry Wire Line
	3530 3405 3630 3505
Entry Wire Line
	3530 3505 3630 3605
Entry Wire Line
	3530 3605 3630 3705
Wire Bus Line
	3630 3705 4155 3705
Text Label 4155 3705 2    50   ~ 0
address_bus
Text Label 3530 2105 2    50   ~ 0
a15
Text Label 3530 2205 2    50   ~ 0
a14
Text Label 3530 2305 2    50   ~ 0
a13
Text Label 3530 2405 2    50   ~ 0
a12
Text Label 3530 2505 2    50   ~ 0
a11
Text Label 3530 2605 2    50   ~ 0
a10
Text Label 3530 2705 2    50   ~ 0
a9
Text Label 3530 2805 2    50   ~ 0
a8
Text Label 3530 2905 2    50   ~ 0
a7
Text Label 3530 3005 2    50   ~ 0
a6
Text Label 3530 3105 2    50   ~ 0
a5
Text Label 3530 3205 2    50   ~ 0
a4
Text Label 3530 3305 2    50   ~ 0
a3
Text Label 3530 3405 2    50   ~ 0
a2
Text Label 3530 3505 2    50   ~ 0
a1
Text Label 3530 3605 2    50   ~ 0
a0
Wire Wire Line
	1685 2905 1410 2905
Wire Wire Line
	1685 3005 1410 3005
Wire Wire Line
	1685 3105 1410 3105
Wire Wire Line
	1685 3205 1410 3205
Wire Wire Line
	1685 3305 1410 3305
Wire Wire Line
	1685 3405 1410 3405
Wire Wire Line
	1685 3505 1410 3505
Wire Wire Line
	1685 3605 1410 3605
Entry Wire Line
	1310 3005 1410 2905
Entry Wire Line
	1310 3105 1410 3005
Entry Wire Line
	1310 3205 1410 3105
Entry Wire Line
	1310 3305 1410 3205
Entry Wire Line
	1310 3405 1410 3305
Entry Wire Line
	1310 3505 1410 3405
Entry Wire Line
	1310 3605 1410 3505
Entry Wire Line
	1310 3705 1410 3605
Wire Bus Line
	1310 3705 900  3705
Text Label 900  3705 0    50   ~ 0
data_bus
Wire Wire Line
	1685 3905 1305 3905
Text Label 1305 3905 0    50   ~ 0
phi2
Wire Wire Line
	1685 1905 1305 1905
Text Label 1305 1905 0    50   ~ 0
~irq
Wire Wire Line
	1685 2005 1305 2005
Text Label 1305 2005 0    50   ~ 0
r_~w
Wire Wire Line
	3185 1805 3630 1805
Text Label 3630 1805 2    50   ~ 0
~reset
$Comp
L C16-Exp-Port:C16-Exp-Port CN1
U 1 1 64651B19
P 2435 2805
F 0 "CN1" H 2435 4370 50  0000 C CNN
F 1 "EXPANSION_PORT" H 2435 4279 50  0000 C CNN
F 2 "16up:C16_Cart_Conn" H 2435 1155 50  0001 C CNN
F 3 "DOCUMENTATION" H 2435 1055 50  0001 C CNN
	1    2435 2805
	1    0    0    -1  
$EndComp
Text Label 1410 2905 0    50   ~ 0
d7
Text Label 1410 3005 0    50   ~ 0
d6
Text Label 1410 3105 0    50   ~ 0
d5
Text Label 1410 3205 0    50   ~ 0
d4
Text Label 1410 3305 0    50   ~ 0
d3
Text Label 1410 3405 0    50   ~ 0
d2
Text Label 1410 3505 0    50   ~ 0
d1
Text Label 1410 3605 0    50   ~ 0
d0
Text Notes 2105 985  0    50   ~ 0
INTERFACE TO C16
NoConn ~ 3185 1705
NoConn ~ 1685 2105
NoConn ~ 1685 2205
NoConn ~ 1685 2305
NoConn ~ 1685 2405
NoConn ~ 1685 2505
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 63505677
P 1140 1705
F 0 "#FLG0101" H 1140 1780 50  0001 C CNN
F 1 "PWR_FLAG" V 1140 1832 50  0000 L CNN
F 2 "" H 1140 1705 50  0001 C CNN
F 3 "~" H 1140 1705 50  0001 C CNN
	1    1140 1705
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1140 1705 1480 1705
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 6351F7AE
P 1240 4005
F 0 "#FLG0102" H 1240 4080 50  0001 C CNN
F 1 "PWR_FLAG" V 1240 4132 50  0000 L CNN
F 2 "" H 1240 4005 50  0001 C CNN
F 3 "~" H 1240 4005 50  0001 C CNN
	1    1240 4005
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1240 4005 1580 4005
Text Notes 13845 3245 0    50   ~ 0
SINCE WE HAVE A MAX238 ONBOARD,\nSERIAL SIGNALS ARE NOT CONNECTED
Text Notes 2795 7005 2    50   ~ 0
NOTE THAT THE +4 USER PORT HAS NO DEDICATED\n~CTS~ PIN. THIS COULD BE BECAUSE OF A BUG IN\nTHE 6551 THAT CAUSED TRANSMISSIONS TO BE ABORTED\n*IMMEDIATELY* WHEN ~CTS~ WAS DEASSERTED, RATHER\nTHAN AFTER THE BYTE CURRENTLY BEING TRANSMITTED.\nTHE SIGNAL IS EXPECTED ON PIN K ON THE USER PORT\nCONNECTOR INSTEAD (EXACTLY WHERE IT WOULD BE ON\nTHE C64), WHICH IS CONNECTED TO D1, AND HANDLED\nBY THE KERNAL.
Wire Wire Line
	4230 5890 3485 5890
Wire Wire Line
	3370 5865 3370 6190
Wire Wire Line
	3175 6290 4230 6290
Text Notes 4340 7980 0    50   ~ 0
IF AN ORIGINAL ACIA (MOS 6551)\nCANNOT BE OBTAINED, THE W65C51S\nIS A DROP-IN REPLACEMENT FOR IT\nTHAT IS STILL IN PRODUCTION.\n\nTHERE IS ALSO THE W65C51N, I'M\nNOT SURE WHAT DIFFERENCES IT\nHAS WRT THE -S MODEL THOUGH.
Text Notes 4610 5080 0    50   ~ 0
RS-232 INTERFACE\n(TTL LEVEL)
Wire Wire Line
	6005 6790 6005 6890
Wire Wire Line
	5875 5365 5875 6990
Text Label 3585 6990 0    50   ~ 0
a1
Text Label 3585 6890 0    50   ~ 0
a0
Text Label 2910 7090 0    50   ~ 0
address_bus
Wire Bus Line
	3485 7090 2910 7090
Wire Bus Line
	3485 6990 3485 7090
Wire Wire Line
	4230 6990 3585 6990
Wire Wire Line
	4230 6890 3585 6890
Entry Wire Line
	3485 7090 3585 6990
Entry Wire Line
	3485 6990 3585 6890
Wire Wire Line
	3485 5990 4230 5990
Text Label 3485 6790 0    50   ~ 0
rxd_ttl
Wire Wire Line
	4230 6790 3485 6790
Text Label 3485 6590 0    50   ~ 0
txd_ttl
Wire Wire Line
	4230 6590 3485 6590
Text Label 6515 6890 2    50   ~ 0
~dsr_ttl
Text Label 6515 6990 2    50   ~ 0
~dcd_ttl
Text Label 3485 6390 0    50   ~ 0
~rts_ttl
Text Label 3485 6690 0    50   ~ 0
~dtr_ttl
$Comp
L power:GND #PWR0123
U 1 1 649AFBBE
P 6330 7875
F 0 "#PWR0123" H 6330 7625 50  0001 C CNN
F 1 "GND" H 6335 7702 50  0000 C CNN
F 2 "" H 6330 7875 50  0001 C CNN
F 3 "" H 6330 7875 50  0001 C CNN
	1    6330 7875
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 649AFBB4
P 6330 7630
F 0 "C3" H 6445 7676 50  0000 L CNN
F 1 "100n" H 6445 7585 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D7.0mm_W2.5mm_P5.00mm" H 6368 7480 50  0001 C CNN
F 3 "~" H 6330 7630 50  0001 C CNN
F 4 "810-FG28X7R1H104KNT0" H 6330 7630 50  0001 C CNN "MouserPN"
	1    6330 7630
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0122
U 1 1 649AFBA9
P 6330 7380
F 0 "#PWR0122" H 6330 7230 50  0001 C CNN
F 1 "+5V" H 6345 7553 50  0000 C CNN
F 2 "" H 6330 7380 50  0001 C CNN
F 3 "" H 6330 7380 50  0001 C CNN
	1    6330 7380
	1    0    0    -1  
$EndComp
Wire Wire Line
	6330 7780 6330 7875
Wire Wire Line
	6330 7480 6330 7380
Text Label 6515 5890 2    50   ~ 0
~irq
Text Label 6515 5790 2    50   ~ 0
phi2
Text Label 6515 5690 2    50   ~ 0
r_~w
Wire Wire Line
	5730 5890 6515 5890
Wire Wire Line
	5730 5790 6515 5790
Wire Wire Line
	5730 6790 6005 6790
Wire Wire Line
	5730 5690 6515 5690
Wire Wire Line
	3175 6290 3175 6220
Wire Wire Line
	3175 5865 3175 5920
Wire Wire Line
	3370 5865 3175 5865
Wire Wire Line
	4230 6190 3370 6190
$Comp
L Device:Crystal Y1
U 1 1 648F7A20
P 3175 6070
F 0 "Y1" V 3221 6200 50  0000 L CNN
F 1 "1.8432M" V 3130 6200 50  0000 L CNN
F 2 "Crystal:Crystal_HC49-U_Vertical" H 3175 6070 50  0001 C CNN
F 3 "~" H 3175 6070 50  0001 C CNN
	1    3175 6070
	0    -1   -1   0   
$EndComp
Text Label 3485 5990 0    50   ~ 0
~reset
Text Label 3485 5890 0    50   ~ 0
~cs_ser
$Comp
L power:GND #PWR0121
U 1 1 648D4D01
P 4085 7315
F 0 "#PWR0121" H 4085 7065 50  0001 C CNN
F 1 "GND" H 4090 7142 50  0000 C CNN
F 2 "" H 4085 7315 50  0001 C CNN
F 3 "" H 4085 7315 50  0001 C CNN
	1    4085 7315
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0120
U 1 1 648D42B8
P 5875 5365
F 0 "#PWR0120" H 5875 5215 50  0001 C CNN
F 1 "+5V" H 5890 5538 50  0000 C CNN
F 2 "" H 5875 5365 50  0001 C CNN
F 3 "" H 5875 5365 50  0001 C CNN
	1    5875 5365
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0119
U 1 1 648D3734
P 3965 5360
F 0 "#PWR0119" H 3965 5210 50  0001 C CNN
F 1 "+5V" H 3980 5533 50  0000 C CNN
F 2 "" H 3965 5360 50  0001 C CNN
F 3 "" H 3965 5360 50  0001 C CNN
	1    3965 5360
	1    0    0    -1  
$EndComp
Wire Wire Line
	3965 5790 3965 5360
Wire Wire Line
	4230 5790 3965 5790
Wire Wire Line
	5730 6990 5875 6990
Wire Wire Line
	4085 5690 4085 7315
Wire Wire Line
	4230 5690 4085 5690
$Comp
L W65C51S:W65C51S U3
U 1 1 648B1695
P 4980 6340
F 0 "U3" H 4980 7355 50  0000 C CNN
F 1 "MOS_6551_ACIA" H 4980 7264 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W15.24mm_Socket_LongPads" H 4980 6340 50  0001 C CNN
F 3 "DOCUMENTATION" H 4980 6340 50  0001 C CNN
	1    4980 6340
	1    0    0    -1  
$EndComp
Text Label 6005 5990 2    50   ~ 0
d7
Text Label 6005 6090 2    50   ~ 0
d6
Text Label 6005 6190 2    50   ~ 0
d5
Text Label 6005 6290 2    50   ~ 0
d4
Text Label 6005 6390 2    50   ~ 0
d3
Text Label 6005 6490 2    50   ~ 0
d2
Text Label 6005 6590 2    50   ~ 0
d1
Text Label 6005 6690 2    50   ~ 0
d0
Text Label 6515 6790 2    50   ~ 0
data_bus
Wire Bus Line
	6105 6790 6515 6790
Entry Wire Line
	6105 6790 6005 6690
Entry Wire Line
	6105 6690 6005 6590
Entry Wire Line
	6105 6590 6005 6490
Entry Wire Line
	6105 6490 6005 6390
Entry Wire Line
	6105 6390 6005 6290
Entry Wire Line
	6105 6290 6005 6190
Entry Wire Line
	6105 6190 6005 6090
Entry Wire Line
	6105 6090 6005 5990
Wire Wire Line
	5730 5990 6005 5990
Wire Wire Line
	5730 6090 6005 6090
Wire Wire Line
	5730 6190 6005 6190
Wire Wire Line
	5730 6290 6005 6290
Wire Wire Line
	5730 6390 6005 6390
Wire Wire Line
	5730 6490 6005 6490
Wire Wire Line
	5730 6590 6005 6590
Wire Wire Line
	5730 6690 6005 6690
NoConn ~ 3185 3305
NoConn ~ 3185 3405
Wire Wire Line
	3485 6390 4230 6390
Wire Wire Line
	3485 6690 4230 6690
Wire Wire Line
	5730 6890 5930 6890
Wire Wire Line
	5930 6890 5930 6990
Text Notes 765  8885 0    50   ~ 0
DECOUPLING & POWER
$Comp
L MOS_6529:MOS_6529 U2
U 2 1 64675352
P 1435 10040
F 0 "U2" H 1703 10086 50  0000 L CNN
F 1 "MOS_6529" H 1703 9995 50  0000 L CNN
F 2 "Package_DIP:DIP-20_W7.62mm_Socket_LongPads" H 1435 10040 50  0001 C CNN
F 3 "DOCUMENTATION" H 1435 10040 50  0001 C CNN
	2    1435 10040
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 646770DB
P 860 10040
F 0 "C2" H 975 10086 50  0000 L CNN
F 1 "100n" H 975 9995 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D7.0mm_W2.5mm_P5.00mm" H 898 9890 50  0001 C CNN
F 3 "~" H 860 10040 50  0001 C CNN
	1    860  10040
	1    0    0    -1  
$EndComp
Wire Wire Line
	860  9890 860  9430
Wire Wire Line
	860  9430 1140 9430
Wire Wire Line
	1435 9430 1435 9590
Wire Wire Line
	1140 9430 1140 9305
Connection ~ 1140 9430
Wire Wire Line
	1140 9430 1435 9430
Wire Wire Line
	860  10190 860  10615
Wire Wire Line
	860  10615 1140 10615
Wire Wire Line
	1435 10615 1435 10490
Wire Wire Line
	1140 10615 1140 10750
Connection ~ 1140 10615
Wire Wire Line
	1140 10615 1435 10615
$Comp
L power:GND #PWR0104
U 1 1 6467E5F8
P 1140 10750
F 0 "#PWR0104" H 1140 10500 50  0001 C CNN
F 1 "GND" H 1145 10577 50  0000 C CNN
F 2 "" H 1140 10750 50  0001 C CNN
F 3 "" H 1140 10750 50  0001 C CNN
	1    1140 10750
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0105
U 1 1 6467ED01
P 1140 9305
F 0 "#PWR0105" H 1140 9155 50  0001 C CNN
F 1 "+5V" H 1155 9478 50  0000 C CNN
F 2 "" H 1140 9305 50  0001 C CNN
F 3 "" H 1140 9305 50  0001 C CNN
	1    1140 9305
	1    0    0    -1  
$EndComp
Text Notes 13895 1150 0    50   ~ 0
TOP
Text Notes 15025 1150 0    50   ~ 0
BOTTOM
Text Notes 4485 3740 0    50   ~ 0
JP1 CONFIGURES MOS 6529/6551 ADDRESSES:\n1-2 = C16 CONFIGURATION: 6529 = $FD1X, 6551 = $FD0X\n        (SAME AS PLUS/4 BUILT-IN PORTS)\n2-3 = PLUS/4 CONFIGURATION: 6529 = $FD7X, 6551 = $FD6X\n        (FOR ADDITIONAL PORTS)
Wire Wire Line
	4650 1660 4650 1560
Wire Wire Line
	4650 1960 4650 2055
$Comp
L power:+5V #PWR0106
U 1 1 646BD3D1
P 4650 1560
F 0 "#PWR0106" H 4650 1410 50  0001 C CNN
F 1 "+5V" H 4665 1733 50  0000 C CNN
F 2 "" H 4650 1560 50  0001 C CNN
F 3 "" H 4650 1560 50  0001 C CNN
	1    4650 1560
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 646BD3D8
P 4650 1810
F 0 "C1" H 4765 1856 50  0000 L CNN
F 1 "100n" H 4765 1765 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D7.0mm_W2.5mm_P5.00mm" H 4688 1660 50  0001 C CNN
F 3 "~" H 4650 1810 50  0001 C CNN
F 4 "810-FG28X7R1H104KNT0" H 4650 1810 50  0001 C CNN "MouserPN"
	1    4650 1810
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 646BD3DE
P 4650 2055
F 0 "#PWR0107" H 4650 1805 50  0001 C CNN
F 1 "GND" H 4655 1882 50  0000 C CNN
F 2 "" H 4650 2055 50  0001 C CNN
F 3 "" H 4650 2055 50  0001 C CNN
	1    4650 2055
	1    0    0    -1  
$EndComp
$Comp
L Logic_Programmable:PAL20L8 U1
U 1 1 6380AE65
P 6600 2275
F 0 "U1" H 6820 3080 50  0000 C CNN
F 1 "GAL20V8" H 6820 1565 50  0000 C CNN
F 2 "Package_DIP:DIP-24_W7.62mm_Socket_LongPads" H 6600 2275 50  0001 C CNN
F 3 "" H 6600 2275 50  0001 C CNN
	1    6600 2275
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 3075 6600 3150
$Comp
L power:GND #PWR0108
U 1 1 6380C937
P 6600 3150
F 0 "#PWR0108" H 6600 2900 50  0001 C CNN
F 1 "GND" H 6605 2977 50  0000 C CNN
F 2 "" H 6600 3150 50  0001 C CNN
F 3 "" H 6600 3150 50  0001 C CNN
	1    6600 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 1375 6600 1265
$Comp
L power:+5V #PWR0109
U 1 1 638263B0
P 6600 1265
F 0 "#PWR0109" H 6600 1115 50  0001 C CNN
F 1 "+5V" H 6615 1438 50  0000 C CNN
F 2 "" H 6600 1265 50  0001 C CNN
F 3 "" H 6600 1265 50  0001 C CNN
	1    6600 1265
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 2375 5600 2375
Wire Wire Line
	6100 2275 5600 2275
Wire Wire Line
	6100 2175 5600 2175
Wire Wire Line
	6100 2075 5600 2075
Wire Wire Line
	6100 1975 5600 1975
Wire Wire Line
	6100 1875 5600 1875
Wire Wire Line
	6100 1775 5600 1775
Wire Wire Line
	6100 1675 5600 1675
Wire Wire Line
	6100 1575 5600 1575
Entry Wire Line
	5500 2275 5600 2375
Entry Wire Line
	5500 2175 5600 2275
Entry Wire Line
	5500 2075 5600 2175
Entry Wire Line
	5500 1975 5600 2075
Entry Wire Line
	5500 1875 5600 1975
Entry Wire Line
	5500 1775 5600 1875
Entry Wire Line
	5500 1675 5600 1775
Entry Wire Line
	5500 1575 5600 1675
Entry Wire Line
	5500 1475 5600 1575
Text Label 5600 2375 0    50   ~ 0
a7
Text Label 5600 2275 0    50   ~ 0
a8
Text Label 5600 2175 0    50   ~ 0
a9
Text Label 5600 2075 0    50   ~ 0
a10
Text Label 5600 1975 0    50   ~ 0
a11
Text Label 5600 1875 0    50   ~ 0
a12
Text Label 5600 1775 0    50   ~ 0
a13
Text Label 5600 1675 0    50   ~ 0
a14
Text Label 5600 1575 0    50   ~ 0
a15
Wire Wire Line
	6100 2575 5600 2575
Wire Wire Line
	6100 2475 5600 2475
Entry Wire Line
	5500 2475 5600 2575
Entry Wire Line
	5500 2375 5600 2475
Text Label 5600 2575 0    50   ~ 0
a5
Text Label 5600 2475 0    50   ~ 0
a6
Wire Wire Line
	6100 2675 5600 2675
Entry Wire Line
	5500 2575 5600 2675
Text Label 5600 2675 0    50   ~ 0
a4
Wire Wire Line
	6100 2875 5600 2875
Text Label 5600 2875 0    50   ~ 0
phi2
Wire Wire Line
	7600 2275 7100 2275
Wire Wire Line
	7600 2175 7100 2175
Text Label 7600 2175 2    50   ~ 0
~cs_par
Text Label 7600 2275 2    50   ~ 0
~cs_ser
Wire Wire Line
	7100 1575 7600 1575
Wire Wire Line
	7100 1675 7600 1675
Wire Wire Line
	7100 1875 7600 1875
Text Label 7600 1575 2    50   ~ 0
gab
Text Label 7600 1675 2    50   ~ 0
cba
Text Label 7600 1875 2    50   ~ 0
r_~w
$Comp
L Connector:Conn_01x03_Male JP1
U 1 1 63A6BB80
P 5050 2775
F 0 "JP1" H 5023 2707 50  0000 R CNN
F 1 "JMP_ADDRESS" H 5023 2798 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 5050 2775 50  0001 C CNN
F 3 "~" H 5050 2775 50  0001 C CNN
	1    5050 2775
	1    0    0    1   
$EndComp
Wire Wire Line
	5250 2775 6100 2775
Wire Wire Line
	5250 2675 5360 2675
Wire Wire Line
	5250 2875 5360 2875
Wire Wire Line
	5360 2875 5360 2950
$Comp
L power:GND #PWR0124
U 1 1 63AF3EDD
P 5360 2950
F 0 "#PWR0124" H 5360 2700 50  0001 C CNN
F 1 "GND" H 5365 2777 50  0000 C CNN
F 2 "" H 5360 2950 50  0001 C CNN
F 3 "" H 5360 2950 50  0001 C CNN
	1    5360 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5360 2595 5360 2675
$Comp
L power:+5V #PWR0125
U 1 1 63B0F986
P 5360 2595
F 0 "#PWR0125" H 5360 2445 50  0001 C CNN
F 1 "+5V" H 5375 2768 50  0000 C CNN
F 2 "" H 5360 2595 50  0001 C CNN
F 3 "" H 5360 2595 50  0001 C CNN
	1    5360 2595
	1    0    0    -1  
$EndComp
Text Label 5000 1475 0    50   ~ 0
address_bus
Wire Bus Line
	5495 1475 5000 1475
Text Notes 6660 3105 0    50   ~ 0
OR GAL22V16
$Comp
L 74LS652:74LS652 U102
U 1 1 63CCDE81
P 8175 4795
F 0 "U102" H 8175 5710 50  0000 C CNN
F 1 "74LS652" H 8175 5619 50  0000 C CNN
F 2 "Package_DIP:DIP-24_W7.62mm_Socket_LongPads" H 8175 4795 50  0001 C CNN
F 3 "DOCUMENTATION" H 8175 4795 50  0001 C CNN
	1    8175 4795
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9070 4245 9070 4345
Wire Wire Line
	8925 4245 9070 4245
Wire Wire Line
	8925 4345 9070 4345
Connection ~ 9070 4345
Wire Wire Line
	9070 4345 9070 5345
$Comp
L power:GND #PWR0127
U 1 1 63D05BAE
P 9070 5660
F 0 "#PWR0127" H 9070 5410 50  0001 C CNN
F 1 "GND" H 9075 5487 50  0000 C CNN
F 2 "" H 9070 5660 50  0001 C CNN
F 3 "" H 9070 5660 50  0001 C CNN
	1    9070 5660
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7425 4245 7285 4245
Wire Wire Line
	7285 4245 7285 4020
$Comp
L power:+5V #PWR0128
U 1 1 63D3BF6E
P 7285 4020
F 0 "#PWR0128" H 7285 3870 50  0001 C CNN
F 1 "+5V" H 7300 4193 50  0000 C CNN
F 2 "" H 7285 4020 50  0001 C CNN
F 3 "" H 7285 4020 50  0001 C CNN
	1    7285 4020
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8925 5345 9070 5345
Connection ~ 9070 5345
Wire Wire Line
	9070 5345 9070 5660
Wire Wire Line
	8925 4445 9260 4445
Wire Wire Line
	7425 4345 7060 4345
Text Label 9260 4445 2    50   ~ 0
gab
Text Label 7060 4345 0    50   ~ 0
cba
Wire Wire Line
	7285 4245 7285 4445
Wire Wire Line
	7285 4445 7425 4445
Connection ~ 7285 4245
Wire Wire Line
	7425 4545 7285 4545
$Comp
L power:GND #PWR0129
U 1 1 63E509B2
P 7285 5660
F 0 "#PWR0129" H 7285 5410 50  0001 C CNN
F 1 "GND" H 7290 5487 50  0000 C CNN
F 2 "" H 7285 5660 50  0001 C CNN
F 3 "" H 7285 5660 50  0001 C CNN
	1    7285 5660
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7285 4545 7285 5660
Entry Wire Line
	10735 4645 10635 4545
Entry Wire Line
	10735 4745 10635 4645
Entry Wire Line
	10735 4845 10635 4745
Entry Wire Line
	10735 4945 10635 4845
Entry Wire Line
	10735 5045 10635 4945
Entry Wire Line
	10735 5145 10635 5045
Entry Wire Line
	10735 5245 10635 5145
Entry Wire Line
	10735 5345 10635 5245
Wire Bus Line
	10735 5345 11370 5345
Text Label 11370 5345 2    50   ~ 0
parallel_port
Text Label 10635 4545 2    50   ~ 0
p0
Text Label 10635 4645 2    50   ~ 0
p1
Text Label 10635 4745 2    50   ~ 0
p2
Text Label 10635 4845 2    50   ~ 0
p3
Text Label 10635 4945 2    50   ~ 0
p4
Text Label 10635 5045 2    50   ~ 0
p5
Text Label 10635 5145 2    50   ~ 0
p6
Text Label 10635 5245 2    50   ~ 0
p7
Wire Wire Line
	7425 4645 7150 4645
Wire Wire Line
	7425 4745 7150 4745
Wire Wire Line
	7425 4845 7150 4845
Wire Wire Line
	7425 4945 7150 4945
Wire Wire Line
	7425 5045 7150 5045
Wire Wire Line
	7425 5145 7150 5145
Wire Wire Line
	7425 5245 7150 5245
Wire Wire Line
	7425 5345 7150 5345
Entry Wire Line
	7050 4745 7150 4645
Entry Wire Line
	7050 4845 7150 4745
Entry Wire Line
	7050 4945 7150 4845
Entry Wire Line
	7050 5045 7150 4945
Entry Wire Line
	7050 5145 7150 5045
Entry Wire Line
	7050 5245 7150 5145
Entry Wire Line
	7050 5345 7150 5245
Entry Wire Line
	7050 5445 7150 5345
Wire Bus Line
	7050 5445 6640 5445
Text Label 6640 5445 0    50   ~ 0
data_bus
Text Label 7150 4645 0    50   ~ 0
d0
Text Label 7150 4745 0    50   ~ 0
d1
Text Label 7150 4845 0    50   ~ 0
d2
Text Label 7150 4945 0    50   ~ 0
d3
Text Label 7150 5045 0    50   ~ 0
d4
Text Label 7150 5145 0    50   ~ 0
d5
Text Label 7150 5245 0    50   ~ 0
d6
Text Label 7150 5345 0    50   ~ 0
d7
$Comp
L Device:R_Network08 RN1
U 1 1 63F3B9D0
P 9875 4125
F 0 "RN1" H 10263 4171 50  0000 L CNN
F 1 "8.2k" H 10263 4080 50  0000 L CNN
F 2 "Resistor_THT:R_Array_SIP9" V 10350 4125 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 9875 4125 50  0001 C CNN
	1    9875 4125
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10275 3925 10275 3845
$Comp
L power:+5V #PWR01
U 1 1 63F60E26
P 10275 3845
F 0 "#PWR01" H 10275 3695 50  0001 C CNN
F 1 "+5V" H 10290 4018 50  0000 C CNN
F 2 "" H 10275 3845 50  0001 C CNN
F 3 "" H 10275 3845 50  0001 C CNN
	1    10275 3845
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9775 4325 9775 5045
Connection ~ 9775 5045
Wire Wire Line
	9775 5045 10635 5045
Wire Wire Line
	9675 4325 9675 5145
Connection ~ 9675 5145
Wire Wire Line
	9675 5145 10635 5145
Wire Wire Line
	9575 4325 9575 5245
Connection ~ 9575 5245
Wire Wire Line
	9575 5245 10635 5245
Text Notes 8430 3735 0    50   ~ 0
MOS 6529 REPLACEMENT CIRCUIT\nBY DANIEL MANTIONE
Text Notes 10400 6330 0    50   ~ 0
THESE COMPONENTS ARE NEEDED TO MAKE THE 74x652 OUTPUTS\nBEHAVE IN AN OPEN-COLLECTOR FASHION, AS THE ORIGINAL MOS\n6529 OUTPUTS DO.\n\nTHEY MUST BE PLACED THIS WAY (I.E. AFTER THE OUTPUTS EVEN IF\nAN ORIGINAL 6529 IS USED) FOR ROUTING REASONS, THEREFORE IF\n74x654 OR ORIGINAL MOS 6529 IS USED, REPLACE D1-8 WITH\n0-OHM RESISTORS.\n\nIF ORIGINAL MOS 6529 IS USED, DO NOT MOUNT RN1 EITHER.
Text Label 11730 2595 2    50   ~ 0
p7
Text Label 11730 2495 2    50   ~ 0
p6
Text Label 11730 2395 2    50   ~ 0
p5
Text Label 11730 2295 2    50   ~ 0
p4
Text Label 11730 2195 2    50   ~ 0
p3
Text Label 11730 2095 2    50   ~ 0
p2
Text Label 11730 1995 2    50   ~ 0
p1
Text Label 11730 1895 2    50   ~ 0
p0
Text Label 12365 2695 2    50   ~ 0
parallel_port
Wire Bus Line
	11830 2695 12365 2695
Entry Wire Line
	11830 2695 11730 2595
Entry Wire Line
	11830 2595 11730 2495
Entry Wire Line
	11830 2495 11730 2395
Entry Wire Line
	11830 2395 11730 2295
Entry Wire Line
	11830 2295 11730 2195
Entry Wire Line
	11830 2195 11730 2095
Entry Wire Line
	11830 2095 11730 1995
Entry Wire Line
	11830 1995 11730 1895
Wire Wire Line
	11455 2595 11730 2595
Wire Wire Line
	11455 2495 11730 2495
Wire Wire Line
	11455 2395 11730 2395
Wire Wire Line
	11455 2295 11730 2295
Wire Wire Line
	11455 2195 11730 2195
Wire Wire Line
	11455 2095 11730 2095
Wire Wire Line
	11455 1995 11730 1995
Wire Wire Line
	11455 1895 11730 1895
Wire Wire Line
	5490 9960 5350 9960
Wire Wire Line
	5350 9960 5350 10485
$Comp
L power:GND #PWR04
U 1 1 6376DC4F
P 5790 10580
F 0 "#PWR04" H 5790 10330 50  0001 C CNN
F 1 "GND" H 5795 10407 50  0000 C CNN
F 2 "" H 5790 10580 50  0001 C CNN
F 3 "" H 5790 10580 50  0001 C CNN
	1    5790 10580
	1    0    0    -1  
$EndComp
Wire Wire Line
	5790 10360 5790 10485
Wire Wire Line
	5790 10485 5350 10485
Wire Wire Line
	5790 10485 5790 10580
Connection ~ 5790 10485
NoConn ~ 6090 10160
NoConn ~ 6090 10060
NoConn ~ 6090 9960
NoConn ~ 5490 10060
NoConn ~ 5490 10160
Wire Wire Line
	5790 9760 5790 9675
NoConn ~ 7100 1775
Text Label 6420 9675 2    50   ~ 0
~cassette_sense
Entry Wire Line
	6840 9775 6740 9675
Wire Bus Line
	6840 9775 7475 9775
Text Label 7475 9775 2    50   ~ 0
parallel_port
Text Label 6740 9675 2    50   ~ 0
p2
Wire Bus Line
	6840 9770 6840 9775
Text Notes 6275 9430 0    50   ~ 0
CASSETTE SENSE
$Comp
L void:Void V0
U 1 1 64272105
P 11000 11025
F 0 "V0" H 11078 11071 50  0000 L CNN
F 1 "LOGO" H 11078 10980 50  0000 L CNN
F 2 "16up:logo" H 11000 11025 50  0001 C CNN
F 3 "" H 11000 11025 50  0001 C CNN
	1    11000 11025
	1    0    0    -1  
$EndComp
$Comp
L void:Void V1
U 1 1 64272908
P 11000 10800
F 0 "V1" H 11078 10846 50  0000 L CNN
F 1 "CC-BY-NC-SA" H 11078 10755 50  0000 L CNN
F 2 "16up:cc_by_nc_sa" H 11000 10800 50  0001 C CNN
F 3 "" H 11000 10800 50  0001 C CNN
	1    11000 10800
	1    0    0    -1  
$EndComp
Text Notes 6350 10750 0    50   ~ 0
THE IDEA HERE IS TO USE A Y-CABLE AND CONNECT\nTHE DATASSETTE BOTH TO THE ORIGINAL PORT AND TO\nTHIS ONE, SO THAT WE CAN PUT THE SENSE SIGNAL ON\nD2 WHEN REQUIRED.\n\nIDEALLY THE SENSE LINE SHOULD BE BROUGHT HERE\nONLY, BUT PROBABLY IT WON'T HARM ANYWAY.\n\nNOTE THAT THIS WILL HOG THE D2 LINE LOW WHENEVER\nA KEY IS PRESSED ON THE DATASSETTE.
Wire Wire Line
	6005 6890 6515 6890
Wire Wire Line
	5930 6990 6515 6990
Wire Wire Line
	5790 9675 6740 9675
$Comp
L mini-din-7:Mini-DIN-7 CN4
U 1 1 63BBDF9F
P 5790 10060
F 0 "CN4" H 6070 9825 50  0000 C CNN
F 1 "TAPE_IN" H 6075 9735 50  0000 C CNN
F 2 "16up:KMDGX-7S-BS" V 5780 10050 50  0001 C CNN
F 3 "" V 5780 10050 50  0001 C CNN
	1    5790 10060
	1    0    0    -1  
$EndComp
Wire Wire Line
	8925 5045 9775 5045
Wire Wire Line
	8925 5245 9575 5245
Wire Wire Line
	8925 5145 9675 5145
Wire Wire Line
	8925 4945 9875 4945
Wire Wire Line
	8925 4845 9975 4845
Wire Wire Line
	8925 4745 10075 4745
Wire Wire Line
	8925 4645 10175 4645
Wire Wire Line
	8925 4545 10275 4545
Wire Wire Line
	9875 4325 9875 4945
Connection ~ 9875 4945
Wire Wire Line
	9875 4945 10635 4945
Wire Wire Line
	9975 4325 9975 4845
Connection ~ 9975 4845
Wire Wire Line
	9975 4845 10635 4845
Wire Wire Line
	10075 4325 10075 4745
Connection ~ 10075 4745
Wire Wire Line
	10075 4745 10635 4745
Wire Wire Line
	10175 4325 10175 4645
Connection ~ 10175 4645
Wire Wire Line
	10175 4645 10635 4645
Wire Wire Line
	10275 4325 10275 4545
Connection ~ 10275 4545
Wire Wire Line
	10275 4545 10635 4545
$Comp
L 74xx:74HCT04 U4
U 1 1 641A6129
P 9045 8860
F 0 "U4" H 9045 8543 50  0000 C CNN
F 1 "74HCT04" H 9045 8634 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 9045 8860 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT04.pdf" H 9045 8860 50  0001 C CNN
	1    9045 8860
	-1   0    0    1   
$EndComp
$Comp
L 74xx:74HCT04 U4
U 2 1 641A6F23
P 9045 7770
F 0 "U4" H 9045 8087 50  0000 C CNN
F 1 "74HCT04" H 9045 7996 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 9045 7770 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT04.pdf" H 9045 7770 50  0001 C CNN
	2    9045 7770
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HCT04 U4
U 3 1 641A7FF2
P 9045 7215
F 0 "U4" H 9045 6898 50  0000 C CNN
F 1 "74HCT04" H 9045 6989 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 9045 7215 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT04.pdf" H 9045 7215 50  0001 C CNN
	3    9045 7215
	1    0    0    1   
$EndComp
$Comp
L 74xx:74HCT04 U4
U 4 1 641A935F
P 15300 9465
F 0 "U4" H 15300 9782 50  0000 C CNN
F 1 "74HCT04" H 15300 9691 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 15300 9465 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT04.pdf" H 15300 9465 50  0001 C CNN
	4    15300 9465
	-1   0    0    -1  
$EndComp
$Comp
L 74xx:74HCT04 U4
U 5 1 641AA758
P 15300 8885
F 0 "U4" H 15300 9202 50  0000 C CNN
F 1 "74HCT04" H 15300 9111 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 15300 8885 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT04.pdf" H 15300 8885 50  0001 C CNN
	5    15300 8885
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HCT04 U4
U 6 1 641AD444
P 9045 8320
F 0 "U4" H 9045 8003 50  0000 C CNN
F 1 "74HCT04" H 9045 8094 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 9045 8320 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT04.pdf" H 9045 8320 50  0001 C CNN
	6    9045 8320
	-1   0    0    1   
$EndComp
$Comp
L 74xx:74HCT04 U4
U 7 1 641AE7FC
P 2930 10035
F 0 "U4" H 3160 10081 50  0000 L CNN
F 1 "74HCT04" H 3160 9990 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 2930 10035 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT04.pdf" H 2930 10035 50  0001 C CNN
	7    2930 10035
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 641B2A0C
P 2355 10040
F 0 "C4" H 2470 10086 50  0000 L CNN
F 1 "100n" H 2470 9995 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D7.0mm_W2.5mm_P5.00mm" H 2393 9890 50  0001 C CNN
F 3 "~" H 2355 10040 50  0001 C CNN
	1    2355 10040
	1    0    0    -1  
$EndComp
Wire Wire Line
	2355 9890 2355 9430
Wire Wire Line
	2355 9430 2635 9430
Wire Wire Line
	2930 9430 2930 9535
Wire Wire Line
	2635 9430 2635 9305
Connection ~ 2635 9430
Wire Wire Line
	2635 9430 2930 9430
Wire Wire Line
	2355 10190 2355 10615
Wire Wire Line
	2355 10615 2635 10615
Wire Wire Line
	2930 10615 2930 10535
Wire Wire Line
	2635 10615 2635 10750
Connection ~ 2635 10615
Wire Wire Line
	2635 10615 2930 10615
$Comp
L power:GND #PWR0113
U 1 1 641B2A22
P 2635 10750
F 0 "#PWR0113" H 2635 10500 50  0001 C CNN
F 1 "GND" H 2640 10577 50  0000 C CNN
F 2 "" H 2635 10750 50  0001 C CNN
F 3 "" H 2635 10750 50  0001 C CNN
	1    2635 10750
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0114
U 1 1 641B2A2C
P 2635 9305
F 0 "#PWR0114" H 2635 9155 50  0001 C CNN
F 1 "+5V" H 2650 9478 50  0000 C CNN
F 2 "" H 2635 9305 50  0001 C CNN
F 3 "" H 2635 9305 50  0001 C CNN
	1    2635 9305
	1    0    0    -1  
$EndComp
NoConn ~ 15000 8885
NoConn ~ 15000 9465
NoConn ~ 15600 9465
NoConn ~ 15600 8885
Text Notes 15125 8350 0    50   ~ 0
SPARES
Text Label 10410 8320 2    50   ~ 0
dsr_ttl
Text Label 10410 8860 2    50   ~ 0
dcd_ttl
Text Label 8420 7215 0    50   ~ 0
~rts_ttl
$Comp
L power:GND #PWR02
U 1 1 6320EC9B
P 3400 6730
F 0 "#PWR02" H 3400 6480 50  0001 C CNN
F 1 "GND" H 3405 6557 50  0000 C CNN
F 2 "" H 3400 6730 50  0001 C CNN
F 3 "" H 3400 6730 50  0001 C CNN
	1    3400 6730
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 6490 4230 6490
Wire Wire Line
	3400 6490 3400 6730
Wire Wire Line
	13805 1960 13430 1960
Text Label 13430 1960 0    50   ~ 0
rxc
Wire Wire Line
	15305 1460 15680 1460
Text Label 15680 1460 2    50   ~ 0
rxd_ttl
Wire Wire Line
	15305 1560 15680 1560
Wire Wire Line
	15305 1660 15680 1660
Wire Wire Line
	15305 1860 15680 1860
Text Label 15680 1560 2    50   ~ 0
rts_ttl
Text Label 15680 1660 2    50   ~ 0
dtr_ttl
Text Label 15680 1860 2    50   ~ 0
dcd_ttl
Wire Wire Line
	15305 2160 15680 2160
Wire Wire Line
	15305 2260 15680 2260
Text Label 15680 2160 2    50   ~ 0
dsr_ttl
Text Label 15680 2260 2    50   ~ 0
txd_ttl
Wire Wire Line
	4230 6090 3485 6090
Text Label 3485 6090 0    50   ~ 0
rxc
Wire Wire Line
	9345 7215 9670 7215
Wire Wire Line
	9345 7770 9670 7770
Wire Wire Line
	9345 8320 9830 8320
Wire Wire Line
	9345 8860 10070 8860
Wire Wire Line
	8420 7215 8745 7215
Wire Wire Line
	8420 7770 8745 7770
Wire Wire Line
	8420 8320 8745 8320
Wire Wire Line
	8420 8860 8745 8860
Text Label 8420 7770 0    50   ~ 0
~dtr_ttl
Text Label 9670 7770 2    50   ~ 0
dtr_ttl
Text Label 9670 7215 2    50   ~ 0
rts_ttl
Text Label 8420 8320 0    50   ~ 0
~dsr_ttl
Text Label 8420 8860 0    50   ~ 0
~dcd_ttl
NoConn ~ 7100 1975
NoConn ~ 7100 2075
$Comp
L Device:R R1
U 1 1 644D8C4C
P 9830 8030
F 0 "R1" H 9760 7984 50  0000 R CNN
F 1 "10k" H 9760 8075 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 9760 8030 50  0001 C CNN
F 3 "~" H 9830 8030 50  0001 C CNN
	1    9830 8030
	1    0    0    1   
$EndComp
$Comp
L Device:R R2
U 1 1 644D97BC
P 10070 8030
F 0 "R2" H 10140 8076 50  0000 L CNN
F 1 "10k" H 10140 7985 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 10000 8030 50  0001 C CNN
F 3 "~" H 10070 8030 50  0001 C CNN
	1    10070 8030
	1    0    0    -1  
$EndComp
Wire Wire Line
	9830 7880 9830 7770
Wire Wire Line
	9830 7770 9950 7770
Wire Wire Line
	10070 7770 10070 7880
Wire Wire Line
	9950 7770 9950 7670
Connection ~ 9950 7770
Wire Wire Line
	9950 7770 10070 7770
Wire Wire Line
	9830 8180 9830 8320
Connection ~ 9830 8320
Wire Wire Line
	9830 8320 10410 8320
Wire Wire Line
	10070 8180 10070 8860
Connection ~ 10070 8860
Wire Wire Line
	10070 8860 10410 8860
$Comp
L power:+5V #PWR0115
U 1 1 6452BBCB
P 9950 7670
F 0 "#PWR0115" H 9950 7520 50  0001 C CNN
F 1 "+5V" H 9965 7843 50  0000 C CNN
F 2 "" H 9950 7670 50  0001 C CNN
F 3 "" H 9950 7670 50  0001 C CNN
	1    9950 7670
	1    0    0    -1  
$EndComp
Wire Bus Line
	15880 1460 15880 2990
Wire Bus Line
	13155 1660 13155 2990
Wire Bus Line
	9580 1995 9580 2695
Wire Bus Line
	1310 3005 1310 3705
Wire Bus Line
	6105 6090 6105 6790
Wire Bus Line
	10735 4645 10735 5345
Wire Bus Line
	7050 4745 7050 5445
Wire Bus Line
	11830 1995 11830 2695
Wire Bus Line
	3630 2205 3630 3705
Wire Bus Line
	5500 1470 5500 2575
$EndSCHEMATC
