; homex.g
; called to home the X axis
;
; generated by RepRapFirmware Configuration Tool v2.1.4 on Thu Dec 26 2019 17:05:22 GMT-0600 (Central Standard Time)
G91               ; relative positioning
G1 H2 Z5 F3600    ; lift Z relative to current position
G1 H1 X-627 F1800 ; move quickly to X axis endstop and stop there (first pass)
G1 X5 F3600       ; go back a few mm
G1 H1 X-627 F360  ; move slowly to X axis endstop once more (second pass)
G1 H2 Z-5 F3600   ; lower Z again
G90               ; absolute positioning

