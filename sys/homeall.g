; homeall.g
; called to home all axes
;
; generated by RepRapFirmware Configuration Tool v2.0.4 on Tue Sep 17 2019 17:14:15 GMT-0400 (Eastern Daylight Time)
G91                     ; relative positioning
G1 Z5 F6000 S2          ; lift Z relative to current position
G1 S1 X-235 Y-215 F1800 ; move quickly to X and Y axis endstops and stop there (first pass)
G1 X5 Y5 F6000          ; go back a few mm
G1 S1 X-235 Y-215 F360  ; move slowly to X and Y axis endstops once more (second pass)
G1 S1 Z-205 F1800       ; move Z down stopping at the endstop
G90                     ; absolute positioning
G92 Z0                  ; set Z to axis minimum (you may want to adjust this)

; Uncomment the following lines to lift Z after probing
G91                    ; relative positioning
G1 S2 Z5 F100          ; lift Z relative to current position
G90                    ; absolute positioning


