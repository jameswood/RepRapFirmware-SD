; tpre.g
; called from the end of tpre#.g

M98 P"/macros/Coupler - Lock" ; close coupler

; WARNING: ensure the bed is lowered enough before undocking the tool or it will crash *hard*
;if move.axes[2].userPosition < 5
G91					; relative
G1 Z5 F50000		; drop bed
G90					; absolute
G53 G1 Y150 F4000	; ease tool out