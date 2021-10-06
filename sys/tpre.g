; tpre.g
; called from the end of tpre#.g

M98 P"/macros/Coupler - Lock" ; close coupler

; WARNING: ensure the bed is lowered enough before undocking the tool or it will crash *hard*
if move.axes[2].userPosition < 20
	G1 Z20 F50000
G53 G1 Y150 F4000 ; ease it out