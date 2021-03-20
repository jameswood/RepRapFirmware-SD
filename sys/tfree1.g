; tfree1.g
; called when tool 1 is freed
M98 P"tfree.g"
G53 G1 X77.4 F50000        ; align safely with dock
G53 G1 Y{227.5-30}  ; move closer
G53 G1 Y227.5 F5000 ; dock
M98 P"/macros/Coupler - Unlock" ; open Coupler
G53 G1 Y150 F50000  ; move toolhead out