; tfree3.g
; called when tool 3 is freed
M98 P"tfree.g"
G53 G1 X303.0 F50000       ; align safely with dock
G53 G1 Y{227.6-30}  ; move closer
G53 G1 Y227.6 F5000 ; dock
M98 P"/macros/Coupler - Unlock" ; open Coupler
G53 G1 Y150 F5000  ; move toolhead out