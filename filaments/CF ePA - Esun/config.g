M140 S90      ; Set bed temperature without waiting
G10 R0 S240   ; set hotend temperature (R is standby)
M221 S90      ; extrusion factor
M207 F4000 S2 Z0 R0