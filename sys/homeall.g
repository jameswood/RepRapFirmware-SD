; homeall.g
; called to home all axes

T-1                       ; Unload tool (just in case)

G92 C260                  ; Define C-axis position as 260
M913 C40                  ; C motor to 40% current
G1 C-260 F2400            ; Drive the C-axis to the stop
M913 C100                 ; C motor to full current
G1 C1 F50000              ; Move C-axis to 1
G92 C0                    ; Define C-axis position as 0

M98 P"/macros/Coupler - Unlock"

G91                       ; Relative positioning
G1 H2 X10 Y10 Z5 F5000    ; Lower bed (raise head), move X&Y to improve sensorless triggers
M400                      ; Finish move
M913 X25 Y20              ; Drop XY motor currents
G1 H1 X-400 Y-400 F3000   ; Move to X0 Y0, set as 0
M913 X100 Y100            ; Reset XY motor current
G1 X150 Y100 F10000       ; Head to the centre
M400                      ; Finish move
G1 H1 Z-300 F1000         ; Raise bed to switch (first pass)
G1 Z5 F5000               ; Drop bed 5mm
G4 P100                   ; Wait
G1 H1 Z-300 F300          ; Raise bed to switch (second pass)
G1 Z5 F5000               ; Drop the bed 5mm
G90                       ; Absolute positioning

M98 P"/macros/Park Head"