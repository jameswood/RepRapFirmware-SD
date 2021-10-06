; tpre3.g
; called before tool 3 is selected
M98 P"/macros/Coupler - Unlock" ; Unlock Coupler
G53 G1 X303.0 Y210 F50000           ; Move to safe location
G53 G1 Y{227.6-10}                  ; danger zone (no more X moves)
G53 G1 Y227.6 F2500                 ; collect tool
M98 P"tpre.g"                   ; standard steps