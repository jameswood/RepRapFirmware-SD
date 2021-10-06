; tpost1.g
; called after tool 1 has been selected
set global.parkX = -38
set global.parkY = 102
M703           ; run config.g for selected filament
;M106 S255      ; blast fan
M98 P"/macros/Park Head"
M116           ; wait for temps

; PRIME
G1 E10 F200  ; fill 'er up
G1 E-2 F2000 ; back off to catch excess ooze
G1 E2 F200   ; refill
G4 S1        ; wait for ooze
G10 ; retract

;Brush Out
G1 X{global.parkX - ((global.brushWidth / 2) + 1)} Y{global.parkY + global.brushGap + ((global.brushLength/6) * 1)} F24000
G1 X{global.parkX + ((global.brushWidth / 2) + 1)} Y{global.parkY + global.brushGap + ((global.brushLength/6) * 2)}
G1 X{global.parkX - ((global.brushWidth / 2) + 1)} Y{global.parkY + global.brushGap + ((global.brushLength/6) * 3)}
G1 X{global.parkX + ((global.brushWidth / 2) + 1)} Y{global.parkY + global.brushGap + ((global.brushLength/6) * 4)}
G1 X{global.parkX - ((global.brushWidth / 2) + 1)} Y{global.parkY + global.brushGap + ((global.brushLength/6) * 5)}
G1 X{global.parkX + ((global.brushWidth / 2) + 1)} Y{global.parkY + global.brushGap + ((global.brushLength/6) * 6)}
G1 X{global.parkX + ((global.brushWidth / 2) + 1)} Y{global.parkY + global.brushGap + ((global.brushLength/6) * 7)}
G1 F50000

G29 S1         ; mesh levelling on
M106 R2        ; fan on
G1 F50000      ; warp speed