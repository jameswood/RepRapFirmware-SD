; PRIME
; M280 P7 S600					; Launch previous Pebble
; G4 P500							; Wait for servo
; M280 P7 S2200					; Reset Servo

M98 P"0:/macros/Park Head"
M116 P{state.currentTool}		; Wait for tool temp

;G4 P200							; Wait for servo
G1 X335 Y132 F24000				; Move head to Pebbletowne

M106 S255						; Cooling 100%
G1 E24 F300	 					; Prime head and produce Pebble!
G4 P1000						; Dwell for 1s
M106 S0							; Fan Off
G1 X326 F24000					; Move to brush
G10								; Retract

G1 Y168 F10000					; Brush 1
G1 Y130 						; Back
G1 Y168 F15000					; Brush 2
G1 Y130 						; Back
G1 Y168 F20000					; Brush 3
G1 Y130 						; Back
G1 Y188 F50000					; Brush 4
G1 Y130 						; Back

G92 E0							; Reset extruder