G91 ; rel
G1 Z1 F50000 ; drop bed
G90 ; abs

G29 S2                    ; mesh levelling off
M106 S0                   ; part fan off
G53 G1 Y150 F50000        ; Safe Y
M98 P"purge.g"            ; purge nozzle