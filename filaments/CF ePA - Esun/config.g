M140 S90       ; Set bed temperature without waiting
G10 P0 R0 S240 ; set hotend temperature (R is standby)
;M220 S75       ; 75% speed
M221 S90       ; extrusion factor
;M106 P0 X0     ; disable fan
M207 F4000 S2 Z0 R0