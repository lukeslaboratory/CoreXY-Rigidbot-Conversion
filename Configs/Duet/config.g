; Configuration file for Duet 3 (firmware version 3)
; executed by the firmware on start-up
;
; generated by RepRapFirmware Configuration Tool v2.1.4 on Thu Dec 26 2019 17:05:21 GMT-0600 (Central Standard Time)

; General preferences
G90                                          ; send absolute coordinates...
M83                                          ; ...but relative extruder moves
M550 P"StableBot"                               ; set printer name

M667 S1                                      ; select CoreXY mode

; Drives
M569 P0.1 S1                                 ; physical drive 0.1 goes forwards
M569 P0.0 S1                                 ; physical drive 0.0 goes forwards
M569 P0.2 S1                                 ; physical drive 0.2 goes forwards
M569 P0.3 S1				                          ; physical drive 0.3 goes backwards
M569 P0.4 S1				                          ; physical drive 0.4 goes backwards
M569 P0.5 S0                                 ; physical drive 0.5 goes backwards
M584 X0.1 Y0.0 Z0.3:4:5 E0.2                     ; set drive mapping
M350 X16 Y16 Z16 E16 I1                      ; configure microstepping with interpolation
M92 X160.00 Y160.00 Z1600.00 E409.00         ; set steps per mm
M566 X900.00 Y900.00 Z12.00 E120.00          ; set maximum instantaneous speed changes (mm/min)
M203 X18000.00 Y18000.00 Z300.00 E3000.00    ; set maximum speeds (mm/min)
M201 X1000.00 Y1000.00 Z20.00 E250.00        ; set accelerations (mm/s^2)
M906 X1800 Y1800 Z1800 E1100 I30             ; set motor currents (mA) and motor idle factor in per cent
M84 S30                                      ; Set idle timeout

; Axis Limits
M208 X0 Y0 Z0 S1                             ; set axis minima
M208 X622 Y622 Z950 S0                       ; set axis maxima
M671 X311:-44.45:666.45 Y-57.15:164.8:164.8 S1 ; leadscrews at rear middle, front left+right

; Endstops
M574 X1 S0 P"io2.in"                         ; configure active-low endstop for low end on X via pin io2.in
M574 Y1 S0 P"io0.in"                         ; configure active-low endstop for low end on Y via pin io0.in
;M574 Y2 S0 P"io1.in"			                   ; configure active-low endstop for high end on Y via pin io1.in
M574 Z1 S2                                   ; configure Z-probe endstop for low end on Z

; Z-Probe
M950 S0 C"io8.out"                           ; create servo pin 0 for BLTouch
M558 P9 C"io8.in" H5 F120 T3600      ; set Z probe type to bltouch and the dive height + speeds
M558 H30                                     ;*** Remove this line after delta calibration has been done and new delta parameters have been saved
G31 P500 X-5 Y48 Z2.6                        ; set Z probe trigger value, offset and trigger height
M557 X15:600 Y15:600 S30                     ; define mesh grid

; Heaters
M308 S0 P"temp0" Y"thermistor" T100000 B4138 ; configure sensor 0 as thermistor on pin temp0
M950 H0 C"out1" T0                           ; create bed heater output on out1 and map it to sensor 0
M143 H0 S120                                 ; set temperature limit for heater 0 to 120C
M307 H0 B0 S0.66                             ; disable bang-bang mode for the bed heater and set PWM limit
M140 H0                                      ; map heated bed to heater 0
M308 S1 P"temp2" Y"thermistor" T100000 B4138 ; configure sensor 1 as thermistor on pin temp2
M950 H1 C"out2" T1                           ; create nozzle heater output on out2 and map it to sensor 1
M143 H1 S280                                 ; set temperature limit for heater 1 to 280C
M307 H1 B0 S1.00                             ; disable bang-bang mode for the nozzle heater and set PWM limit

; Fans
M950 F0 C"out7" Q500                         ; create fan 0 on pin out7 and set its frequency
M106 P0 S0 H-1                               ; set fan 0 value. Thermostatic control is turned off
M950 F1 C"out8" Q500                         ; create fan 1 on pin out8 and set its frequency
M106 P1 S1 H1 T45                            ; set fan 1 value. Thermostatic control is turned on

; Tools
M563 P0 D0 H1 F0                             ; define tool 0
G10 P0 X0 Y0 Z0                              ; set tool 0 axis offsets
G10 P0 R0 S0                                 ; set initial tool 0 active and standby temperatures to 0C

; Custom settings are not defined