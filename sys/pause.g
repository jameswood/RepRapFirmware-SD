G10                   ; retract
G91                   ; use relative positioning
G1 H2 Z5 F5000        ; lift Z 5mm
G90                   ; absolute positioning
M98 P"purge.g"
M98 P"/macros/Park Head"