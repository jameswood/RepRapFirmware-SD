; tpre.g
; called from the end of tpre#.g

M280 P7 S600									; Launch Pebble
M98 P"/macros/Coupler - Unlock"					; Unlock Coupler
G53 G1 Y{global.safeYunloaded} F50000			; Move to safe location
G53 G1 X{global.dockX}							; align X with tool
G53 G1 Y{global.dockY - 10}						; danger zone (no more X moves)
G53 G1 Y{global.dockY} F2500					; collect tool
M280 P7 S2200									; Reset Servo
M98 P"/macros/Coupler - Lock"					; close coupler

; WARNING: ensure the bed is lowered before undocking

G91					; relative
G1 Z5 F50000		; drop bed
G90					; absolute

G53 G1 Y{global.safeYloaded} F4000				; ease tool out