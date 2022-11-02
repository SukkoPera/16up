/* 16up GAL Equations
 * Copyright 2022 SukkoPera <software@sukkology.net>
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <https://www.gnu.org/licenses/>.
 */

/* These equations can be turned into a JED file through the WinCUPL software.
 * Too bad it's Windows-only and full of bugs...
 */

/* Addresses:
 * INTERNAL MODE:
 * - ACIA: $fd00 (-$fd0f)
 * - 6529: $fd10 (-$fd1f)
 *
 * EXTERNAL MODE:
 * - ACIA: $fd60
 * - 6529: $fd70
 */

/** Inputs **/
Pin 1 = a15;
Pin 2 = a14;
Pin 3 = a13;
Pin 4 = a12;
Pin 5 = a11;
Pin 6 = a10;
Pin 7 = a9;
Pin 8 = a8;
Pin 9 = a7;
Pin 10 = a6;
Pin 11 = a5;
Pin 13 = a4;
Pin 23 = phi2;

Pin 19 = rw;

Pin 18 = ctsIn;				// /CTS (active-low)

Pin 14 = intExt;			// Configuration: 0 => Internal, 1 => External


/** Outputs **/
Pin 15 = aciaCs;			// ACIA Enable (Active-low)
Pin 16 = mos6529Cs;			// 6529 Enable (Active-low)

Pin 17 = ctsOut;			// CTS (active-high)

Pin 21 = cba;				// 74LS652 B-A clock
Pin 22 = gab;				// 74LS652 A-B enable

/** Spares **/
//Pin 20 = 


/** Declarations and Intermediate Variable Definitions **/
Field addr = [a15..4];


/** Logic Equations **/
intRange6529 = addr:FD1x;
extRange6529 = addr:FD7x;
mos6529Cs = !(phi2 & ((!intExt & intRange6529) # (intExt & extRange6529)));

intRangeAcia = addr:FD0x;
extRangeAcia = addr:FD6x;
aciaCs = !(phi2 & ((!intExt & intRangeAcia) # (intExt & extRangeAcia)));


/*** /CTS ***/
ctsOut = !ctsIn;


/*** SIGNALS FOR MOS 6529 REPLACEMENT BASED ON 74LS652/4 ***/
/* These are derived from work by Daniel Mantione, thanks! */

/* This is an *active-high* enable for the CPU bus facing side, it should drive the bus when chip is selected (cs = 0)
 * for reading (rw = 1)
 */
gab = rw & !mos6529Cs;

/* This is the clock that stores data that drives the userport-facing side, it shall output a rising edge when chip is
 * selected (cs = 0) for writing (rw = 0) at the end of the cycle (i.e.: when the last of them goes high).
 *
 * I think we are slightly wrong here, as this will go high as soon as *one* of rw or cs goes high, while *I think* the
 * 6529 stores data upon the last rising edge of the two, but it won't matter much in practice.
 */
cba = rw # mos6529Cs;
