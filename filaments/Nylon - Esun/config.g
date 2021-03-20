M140 S85      ; Set bed temperature without waiting
G10 R0 S280   ; set hotend temperature (R is standby)
M221 S90      ; 90% flow
M207 F4000 S0.5 Z0 R0