; File "0:/gcodes/Blower Mount 0.2mm Normal 1h11m.gcode" resume print after print paused at 2021-10-05 15:16
G21
M140 P0 S70.0
T-1 P0
G92 X139.421 Y143.810 Z-10.750 C33.000
G60 S1
G10 P0 S0 R0
G10 P2 S210 R0
G10 P3 S210 R0
G10 P1 S250 R250
T1 P0
M98 P"resurrect-prologue.g"
M116
M290 X0.000 Y0.000 Z0.000 C0.000 R0
T-1 P0
T1 P6
; Workplace coordinates
G10 L2 P1 X0.00 Y0.00 Z0.00 C0.00
G10 L2 P2 X0.00 Y0.00 Z0.00 C0.00
G10 L2 P3 X0.00 Y0.00 Z0.00 C0.00
G10 L2 P4 X0.00 Y0.00 Z0.00 C0.00
G10 L2 P5 X0.00 Y0.00 Z0.00 C0.00
G10 L2 P6 X0.00 Y0.00 Z0.00 C0.00
G10 L2 P7 X0.00 Y0.00 Z0.00 C0.00
G10 L2 P8 X0.00 Y0.00 Z0.00 C0.00
G10 L2 P9 X0.00 Y0.00 Z0.00 C0.00
G54
M106 S0.89
M106 P2 S0.00
M106 P4 S0.89
M106 P6 S0.00
M106 P8 S0.00
M116
G92 E0.00000
M83
M486 S0 A"C:/Users/james/AppData/Local/Temp/Neutron/Blower Mount.stl id:0 copy 0"
M486 S0G17
M23 "0:/gcodes/Blower Mount 0.2mm Normal 1h11m.gcode"
M26 S324038
G0 F6000 Z4.200
G0 F6000 X148.371 Y104.510 C33.000
G0 F6000 Z2.200
G1 F4800.0 P0
G21
M24
