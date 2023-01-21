
# 16UP
16UP is an Open Hardware Expansion board that will add a User Port to the Commodore 16, 116 and Plus/4 home computers.

![Board](https://raw.githubusercontent.com/SukkoPera/16up/master/img/render-top.png)

## Summary
The biggest difference between the Commodore 16/116 and the Plus/4, besides the different amount of RAM installed, is that the former lacks a User Port. In the past there were numerous attempts at making a cartridge for the Expansion Port that would fill this gap, but apparently none of them succeeded...

... None of them except this project, of course! :) 16UP will plug into the Expansion Port and "convert" it to a User Port that will be mostly compatible with that featured on the Plus/4. It can also be used on a Plus/4 in order to gain an extra User Port.

If you are interested in this board, **please read this document carefully**, there are a few aspects that you must be aware of.

## Configuration
16UP can be configured to respond to two different address sets through the *JP1* jumper:

### External Address
This configuration will expose the ACIA (Serial port) at address `$fd6x` and the MOS 6529 (Parallel port) at `$fd7x`. These addresses are normally unused in both the C16/116 and +4, thus this setting is the most compatible, but it will need "special" software that either looks for the ports at these addresses or that allows the addresses to be configured manually.

On a +4, this configuration will effectively add a second User Port that can be used independently of the built-in one.

### Internal Address
This configuration will expose the ACIA and MOS 6529 at the same addresses that are normally used on a +4 (`$fd0x` for the ACIA and `$fd10` for the 6529). Of course this means that it cannot be used on a +4 as the port would conflict with the built-in one. It is rather meant to be used on a C16/116, making it ALMOST (see below) compatible with all the +4 software that uses the User Port.

**NOTE: Using this board on a C16/116 requires an internal modification in the machine. While this may sound impractical, it is fairly easy to perform and there are good reasons to perform it even if you are not interested in using this board. Please [see this page](https://github.com/SukkoPera/16up/wiki/Modification) for details.**

## Caveats
If you perform the C16/116 modification, plug 16UP in the Expansion Port and want to use the Datassette, you will notice that the computer will no longer detect when you press Play upon the *Press Play on tape* prompt. This is absolutely normal and is actually a sign that the modification works as intended. If you really want to use the Datassette you can either remove the board from the Expansion Port or make a Y cable with one female and two male MiniDIN-7 connectors: the Datassette will plug into the female connector, while one of the two male ones will plug into the C16/116 and the other one into the MiniDIN-7 connector on the 16up board.
Hint: if you want to save wire and effort, it is enough to bring the *Sense* signal - [Pin 6](doc/tapeport.png) - to the connector that plugs into 16UP.
Another hint: if you use [one of these](https://github.com/SukkoPera/OpenC64TapePortBreakOut) instead of the female connector, you can make an adapter for the C64 (1530) Datassette ;).

Another thing to be aware of is that, since all the serial signals are handled on-board, they are not brought out to the edge connector. This shouldn't be a problem, as there aren't many peripherals using signals from both the parallel and serial ports at the same time. The only one I know are some old Centronics/Printer/PC Parallel Port cables, which need 8 data bits and at least /STROBE and BUSY signals, which are typically tied to /DCD and /RTS: these won't work with this adapter. There was a similar alternative cable designed by Solder/Synergy which only used the parallel port, which will work. Unfortunately I don't know exactly how it was and thus I cannot publish any schematics, but I will investigate. Apart from that, the bottom line is that any odd peripheral that uses any signals besides P1-P8, /ATTN and /RESET just won't work. Please let me know if you happen to stumble into such a thing, as an alternative adapter could be designed.

## Compatibility
The +4 User Port is made up of a few distinct elements, let's analyze them one by one:

### 8-bit parallel port
The 8-bit parallel port can be implemented by a few different hardware components and is fully functional. There are a few caveats though:
- Bit 1 is shared with the */CTS* serial port signal: this should not cause too much concern but you should be aware that it will be forced low whenever you have something connected to the serial port that is not ready to accept data. In this case, just disconnect the device or remove the *JP2* jumper (or set it to the *HW* position). Keep in mind that **bit 1 must be high before using the serial port** (or terminals will probably never know that the other end is ready to accept data), which is the case at reset/power-on.
- Bit 2 is shared with the *Cassette Sense* signal: if you have connected the Datassette Y cable to the board, whenever a key on it is pressed, bit 2 will be forced low. If you need to use the parallel port, press Stop on the Datassette in order to release all keys.

*(Do not blame me for the above, these are questionable design decisions straight from Commodore and those problems also affect a real +4.)*

### Serial port
The +4 User Port has all the signals required by an RS-232 interface, but they are at TTL voltage levels (i.e.: 0/+5V). In order to turn them into a real RS-232 port, they need to be shifted to higher voltages. This is normally the purpose of the [RS-232 serial adapters](https://github.com/SukkoPera/Plus4Serial) that plug into the User Port. 16UP has such an adapter built-in and thus features a full RS-232 port on the onboard DE-9 connector.

All signals on the port are connected and usable, with the exception of *Ring Indicator*. *DCD*, *DSR* and */CTS* are pulled to the asserted level in order to allow communication with devices/cables that do not use those signals.

When using the serial port, you must decide whether you want hardware flow control to be handled by the ACIA or by the KERNAL: this might sound odd but it is due to the fact that ACIA chips of the era have an hardware bug that causes the */CTS* signal to be handled incorrectly. Commodore engineers must have found that out and decided to let the KERNAL handle it (if you look at the +4 schematics, you can clearly see that the signal was rerouted at a later stage). You can make your choice through the *JP2*/*JP3* jumpers (**always move them both to the same side!**): the *SW* setting will pass */CTS* to the KERNAL and is the recommended one as this is the configuration used on the +4. The *HW* position is only recommended if you are using a W65C51S chip (which should have fixed the bug) and is mainly meant as an experimental feature.

If you are looking for a terminal emulator, I recommend [Term-80](https://plus4world.powweb.com/software/Term-80_English) as it is hands down the most feature-rich program of its kind (Hint: press <kbd>CBM+HELP</kbd> when you get lost) and supports communication at 19200 bps (Take that, C64!).

### /RESET signal
This is fully functional as on the original +4.

### /ATTENTION signal
The /ATTENTION signal is not present on the C16/116 Expansion Port. Thus, if you need it, you will need to provide the board with it through the */ATTN* (*J1*) connector. The signal is available on pin 3 of the [IEC (Serial) port](doc/iec_serial.png) and it can be connected in parallel to any other device you already have on that port, just break it out.

### +5VDC power supply
This is directly connected to the main power rails of the C16/116. Use common sense and do not draw "too much" power out of it.

### 9VAC power supply
This is not present on the C16/116 Expansion Port and thus the corresponding pins of the User Port are left unconnected. This should not be a big deal though, as the main use case for this is to provide the higher voltages needed for a fully-compliant RS-232 interface, but 16UP has that built-in and done in a way that does not require an actual higher-voltage supply. Let me know if you find any User Port peripherals that require it.

## Assembly
The parallel port on the +4 is driven through a MOS 6529 (U2 on the board). Since these days that IC is pretty hard to get hold of, an alternative circuit based on a 74LS654 was designed by Daniël Mantione ans was integrated into the board. Depending on what you choose to use:
- If you use an original MOS 6529: do NOT mount RN1.
- If you use a 74LS654: mount RN1.

There are various ICs that can be used as ACIA (U3):
- Original MOS 6551 or 8551 will work but are hard to find.
- The Western Design Center still produces the [W65C51S](https://www.westerndesigncenter.com/wdc/w65c51s-chip.php), which is based on the original MOS design and is fully compatible with it. There is also an -N model but its compatibility is uncertain at this stage.
- Older similar chips recovered from older equipment, such as the Rockwell R6551(A)P, UMC UM6551(A), etc. can be found on Aliexpress, eBay, etc. easily and cheaply and should be perfectly compatible. Prefer models with an *A* in the part number. I did all my testing with an R6551P, by the way.

The board uses a GAL for address decoding. Either a GAL20 or GAL22 can be used and both can be programmed with the ubiquitous TL866 programmers. The required JED files can be found in the relevant directories. The GAL speed shouldn't matter too much, I used a 25ns model with no particular issues.

## License
The 16UP documentation, including the design itself, is copyright &copy; SukkoPera 2022 and is licensed under the [Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License](https://creativecommons.org/licenses/by-nc-sa/4.0/).

This documentation is distributed *as is* and WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES whatsoever with respect to its functionality, operability or use, including, without limitation, any implied warranties OF MERCHANTABILITY, SATISFACTORY QUALITY, FITNESS FOR A PARTICULAR PURPOSE or infringement. We expressly disclaim any liability whatsoever for any direct, indirect, consequential, incidental or special damages, including, without limitation, lost revenues, lost profits, losses resulting from business interruption or loss of data, regardless of the form of action or legal theory under which the liability may be asserted, even if advised of the possibility or likelihood of such damages.

## Support the Project
If you want to get some boards manufactured, you can get them from PCBWay through this link:

[![PCB from PCBWay](https://www.pcbway.com/project/img/images/frompcbway.png)](https://www.pcbway.com/project/shareproject/16UP_User_Port_Cartridge_for_the_Commodore_16_116_and_Plus_4_2d0ad268.html)

You get my gratitude and cheap, professionally-made and good quality PCBs, I get some credit that will help with this and [other projects](https://www.pcbway.com/project/member/shareproject/?bmbid=41100). You won't even have to worry about the various PCB options, it's all pre-configured for you!

Also, if you still have to register, [you can use this link](https://www.pcbway.com/setinvite.aspx?inviteid=41100) to get some bonus initial credit (and yield me some more).

You can also buy me a coffee if you want:

<a href='https://ko-fi.com/L3L0U18L' target='_blank'><img height='36' style='border:0px;height:36px;' src='https://az743702.vo.msecnd.net/cdn/kofi2.png?v=2' border='0' alt='Buy Me a Coffee at ko-fi.com' /></a>

## Thanks
Inspiration for this board came from an uncompleted [project by Solder/Synergy](http://solder-synergy.de/plus4/hardware/index.html).

Other people from the [Plus/4 World Forum](https://plus4world.powweb.com/forum) helped, in particular:
* Daniël Mantione  for the [74LS652/4-based replacement circuit for the MOS 6529](https://www.sellmyretro.com/offer/details/mos-6529-spi-full-equivalent--_-soldering-kit-43923).
* TLC (Levente Hársfalvi) for lots of information about the serial port.
* MCes for helping fine-tuning of the C16 modification.

## Support the Project
You can buy me a coffee if you want:

<a href='https://ko-fi.com/L3L0U18L' target='_blank'><img height='36' style='border:0px;height:36px;' src='https://az743702.vo.msecnd.net/cdn/kofi2.png?v=2' border='0' alt='Buy Me a Coffee at ko-fi.com' /></a>
