M140 S85        ; Set bed temperature without waiting
G10 R150 S230   ; set hotend temperature (R is standby)
M572 D0 S0.07   ; pressure advance
M221 S110       ; extrusion factor