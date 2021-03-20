; tpre0.g
; called before tool 0 is selected

M98 P"/macros/Coupler - Unlock" ; Unlock Coupler
G1 X-12.2 Y210 F50000           ; Move to safe location
G1 Y{227.7-10}                  ; danger zone (no more X moves)
G1 Y227.7 F2500                 ; collect tool
M98 P"tpre.g"                   ; standard steps