; Called at the end of tpost#.g after tool selected
M98 P"prime.g" ; prime nozzle
G29 S1         ; mesh levelling on
M106 R2        ; fan on
G1 R0 X0 Y0 Z4 F50000 ; return to 4mm above saved point
G11            ; unretract