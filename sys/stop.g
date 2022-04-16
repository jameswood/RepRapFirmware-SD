G10                 ; retract
T-1                 ; put tool away
M98 P"0:/macros/Park Head"
if move.axes[2].userPosition < 150
	G1 Z150 F50000
M106 S0             ; fans off
M140 S-273.1		; switch off bed heater
M568 P0 A0			; Tool heater off
M568 P1 A0			; Tool heater off
M568 P2 A0			; Tool heater off
M568 P3 A0			; Tool heater off
;M18                 ; steppers off