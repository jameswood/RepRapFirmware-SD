; tfree.g
; called by each tool when deselected

G10													; retract

G91													; rel
G1 Z1 F50000										; drop bed
G90													; abs

G29 S2												; mesh levelling off
M106 S0												; part fan off

G53 G1 X{global.dockX} Y{global.safeYloaded} F50000	; Safe dropoff
G53 G1 Y{global.dockY - 30}							; move closer
G53 G1 Y{global.dockY} F5000						; dock

M98 P"/macros/Coupler - Unlock"						; open Coupler
G53 G1 Y{global.safeYunloaded} F5000				; move toolhead out

M98 P"purge.g"										; purge nozzle