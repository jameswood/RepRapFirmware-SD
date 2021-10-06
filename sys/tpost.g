; Called at the end of tpost#.g after tool selected
M703			; run config.g for selected filament
M106 S255		; blast fan
M98 P"0:/macros/Filament/pebble"
G29 S1			; mesh levelling on
M106 R2			; fan on
G1 F50000		; warp speed