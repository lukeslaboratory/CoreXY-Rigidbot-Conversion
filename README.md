# CoreXY-Rigidbot-Conversion

Alright, here it is. This is essentially V0.9 for this part, I've been using it quite successfully for the past 6 months and feel that its stable enough to do whatever you need it to do reliably. Should just need to print off 1x of more/less everything, except for the braces.

![alt text](Photos/Main.JPG "Logo Title Text 1")

![alt text](Photos/DSC09977.JPG "Logo Title Text 1")

![alt text](Photos/DSC09980.JPG "Logo Title Text 1")

### Assembly Notes
You'll need M3, M4, and M5 Drills and Taps. 
I use Heat-Set inserts in the extruder carrier, should be sized appropriately for the inserts linked.

**I recommend printing from [High-Temp PLA](https://amzn.to/2ZtWItk) or other sturdy materials like ABS.

### Purchased parts 
*Amazon Links are affiliate - I may earn a commission if you purchase thru amazon. Zyltech has a few coupons out there that take 10-15% off, do a search before purchasing.*

623mm 2020 <https://amzn.to/2MC0iw7> (X Axis) - Or wherever else you feel like, Zyltech Stocks 10packs for ~60 or so

609mm Lin Rail MGN12 (X Axis) - China or Zyltech

468x2 Lin Rail MGN12 (Y Axis) - China or Zyltech

2x Pulley GT2 20T - <https://amzn.to/354wVJj>

2x Smooth Idler 6mm - <https://amzn.to/2F0bkqN>

6x Toothed Idler 6mm <https://amzn.to/2EZI83h> - Buy 2x

1x Hemera w/ Omnipack -  <https://amzn.to/358qoNX> - Buy Direct from E3D?

1x Bltouch - I use a clone, but Genuine is always better? <https://amzn.to/2F0hNlE>

5015 - <https://amzn.to/2ZsCG2k>

D2HW_C201H - Digikey or amazon - <https://amzn.to/355iODo>

Assorted M3 Screws <https://amzn.to/2ZFBkS5>

M3 Hammer Nuts <https://amzn.to/2SyZyfg>

Assorted M4 Screws - <https://amzn.to/2suLEQm>

M4 Heat-Set Inserts for Hemera - <https://amzn.to/2rzr29n>

Assorted m5 Screws - <https://amzn.to/2EZIDub>

#### Other Printed Kits I Use
[Hemera OmniPack](https://www.thingiverse.com/thing:4015118)
[MMU2 Filament Sensor](https://www.thingiverse.com/thing:4015190)


### CONFIGs
I currently run a Duet Wifi 2. Configs are Zipped.
<https://www.duet3d.com/DuetWifi> - Genuine
<http://www.zyltech.com/new-zyltech-duet-2-32-bit-board-with-7-touch-screen/> Clone with 7" Touchscreen - Zyltech.

Marlin Config is zipped as well. Likely needs a 32 bit board! 8bit boards can't run fast enough on most coreXY geometries. <https://amzn.to/39nbc2I> SKR1.3 with TMC Drivers should do nicely. 

*All of these files are for the Rigidbot Big with 0.9deg/step XY motors*
To convert this over to the regular rigidbot, it should work by shortening by 6" for X-axis Components and 2" for Y-Axis Components
