; tpre2.g
; called before tool 2 is selected

M98 P"/macros/Coupler - Unlock" ; Unlock Coupler
G53 G1 X212.9 Y210 F50000           ; Move to safe location
G53 G1 Y{227.8-10}                  ; danger zone (no more X moves)
G53 G1 Y227.8 F2500                 ; collect tool
M98 P"tpre.g"                   ; standard steps