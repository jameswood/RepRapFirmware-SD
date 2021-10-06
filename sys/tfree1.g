; tfree1.g
; called when tool 1 is freed
;M98 P"tfree.g"

G91 ; rel
G1 Z1 F50000 ; drop bed
G90 ; abs

G29 S2                    ; mesh levelling off
M106 S0                   ; part fan off
G53 G1 Y150 F50000        ; Safe Y
;M98 P"purge.g"            ; purge nozzle


; G53 G1 X77.4 F50000        ; align safely with dock HEMERA
; G53 G1 Y{227.5-30}  ; move closer HEMERA
; G53 G1 Y227.5 F5000 ; dock HEMERA

G53 G1 X79 F50000        ; align safely with dock V6
G53 G1 Y{243-30}  ; move closer V6
G53 G1 Y243 F5000 ; dock V6

M98 P"/macros/Coupler - Unlock" ; open Coupler
G53 G1 Y150 F5000  ; move toolhead out