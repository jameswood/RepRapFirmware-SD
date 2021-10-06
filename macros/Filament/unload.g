M98 P"0:/macros/Park Head"
M116                            ; wait for hotend temp
G1 E10 F300                     ; Extrude slowly
G1 E-100 F500                   ; Retract 100mm faster
M300 S1000 P100                 ; beep
;M84 E                           ; turn extruder motor off