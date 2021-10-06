G10                 ; retract
T-1                 ; put tool away
M98 P"0:/macros/Park Head"
if move.axes[2].userPosition < 150
	G1 Z150 F50000
M106 S0             ; fans off
;M18                 ; steppers off