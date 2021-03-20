; tpre1.g
; called before tool 1 is selected

M98 P"/macros/Coupler - Unlock" ; Unlock Coupler
G1 X77.4 Y210 F50000            ; Move to safe location
G1 Y{227.5-10}                  ; danger zone (no more X moves)
G1 Y227.5 F2500                 ; collect tool
M98 P"tpre.g"                   ; standard steps