; tpre.g
; called from the end of tpre#.g

M98 P"/macros/Coupler - Lock" ; close coupler

; WARNING: ensure the bed is lowered enough before undocking the tool or it will crash *hard*
G91 ; rel
G1 Z10 F1000
G90 ; abs

G53 G1 Y150 F4000 ; ease it out