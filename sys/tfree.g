G60                       ; save position in S0
G10                       ; retract
G1 R0 X0 Y0 Z4 F50000     ; drop the bed 4mm from saved point
G29 S2                    ; mesh levelling off
M106 S0                   ; part fan off
M98 P"purge.g"            ; purge nozzle
G53 G1 Y150 F50000        ; Safe Y