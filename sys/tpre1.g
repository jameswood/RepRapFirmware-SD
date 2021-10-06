; tpre1.g
; called before tool 1 is selected

M98 P"/macros/Coupler - Unlock" ; Unlock Coupler

;G53 G1 X77.4 Y210 F50000            ; Move to safe location HEMERA
;G53 G1 Y{227.5-10}                  ; danger zone (no more X moves) HEMERA
;G53 G1 Y227.5 F2500                 ; collect tool HEMERA

G53 G1 X79 Y210 F50000              ; Move to safe location V6
G53 G1 Y{243-10}                    ; danger zone (no more X moves) V6
G53 G1 Y243 F2500                   ; collect tool V6
G91                          
G1 Z12 F9000                	; Drop Z for safety
G90  
M98 P"tpre.g"                   ; standard steps