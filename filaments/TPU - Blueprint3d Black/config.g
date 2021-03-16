M140 S85         ; Set bed temperature without waiting
G10 P0 R150 S235 ; set hotend temperature (R is standby)
M572 D0 S0.07    ; pressure advance
M221 S110        ; extrusion factor
M220 S75         ; speed