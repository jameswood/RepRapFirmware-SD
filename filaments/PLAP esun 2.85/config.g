;M140 S60       ; Set bed temperature without waiting
M572 S0.0384
G10 S200 R200   ; set hotend temperature (R is standby)
M207 S5 Z0.5 R0 F3000 ; retracts
;M221 S60
M221 S95        ; set flow