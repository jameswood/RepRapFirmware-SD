; Called at the end of tpost#.g after tool selected
M703						; run config.g for selected filament
M98 P"0:/sys/prime.g"
G29 S1						; mesh levelling on
M106 R2						; fan on
G1 R2 Z0 F500000			; restore Z position