; homez.g
; called to home the Z axis
T-1

G91 							; Relative mode
G1 H2 Z5 F5000					; Lower the bed
G90								; back to absolute positioning

G53 G1 X150 Y100 F50000			; Position the endstop above the bed centre

M558 F1000
G30
M558 F300
G30