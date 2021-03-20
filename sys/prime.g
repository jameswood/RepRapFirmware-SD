;Safe target
G1 X315 Y110 F50000

;Brush in
G1 X315 Y110
G1 X{331.0-4} Y110
G1 X{331.0-4} Y125
G1 X{331.0-2} Y155
G1 X{331.0+2} Y125
G1 X{331.0+4} Y155

;Park for prime
M98 P"/macros/Park Head"

;Prime
G1 E20 F1000 ; fill 'er up
G10          ; retract
G4 S2        ; wait for ooze

;Run Out
G1 X331 Y160 F50000

;Brush Out
G1 X{331.0-5} Y155
G1 X{331.0+5} Y150
G1 X{331.0-5} Y145
G1 X{331.0+5} Y140
G1 X{331.0-5} Y135
G1 X{331.0+5} Y130
G1 X{331.0-5} Y125
G1 X{331.0+5} Y120
G1 X331.0 Y110
G2 X315 Y94 R16