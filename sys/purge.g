;Purge Hemera on right
G1 X315 Y110 F50000

;brush in
G1 X{331.0-5} Y120
G1 X{331.0+5} Y125
G1 X{331.0-5} Y130
G1 X{331.0+5} Y135
G1 X{331.0-5} Y140
G1 X{331.0+5} Y145
G1 X{331.0-5} Y150
G1 X{331.0+5} Y155
G1 X331.0 Y160

;Park for purge
M98 P"/macros/Park Head"

;Purge/retract
G11          ; unretract
G1 E-10 F500 ; jam all the things??
G1 E8  F750
G1 E-8 F1000
G1 E6  F1500
G1 E-6 F1750
G1 E4  F2000
G1 E-4 F2500
G1 E-2 F3000
G4 S2        ; wait for ooze

;Run Out
G1 X331 Y160 F50000

;Brush Out
G1 X{331.0+4} Y155
G1 X{331.0+2} Y125
G1 X{331.0-2} Y155
G1 X{331.0-4} Y125
G1 X315