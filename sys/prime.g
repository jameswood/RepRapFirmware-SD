; PRIME
;M98 P"/macros/Park Head"

G1 E10 F200		; fill 'er up
G10				; Retract
G4 S2			; wait for ooze

;Brush Out
G1 X{global.parkX - ((global.brushWidth / 2) + 1)} Y{global.parkY + global.brushGap + ((global.brushLength/6) * 1)} F50000
G1 X{global.parkX + ((global.brushWidth / 2) + 1)} Y{global.parkY + global.brushGap + ((global.brushLength/6) * 2)}
G1 X{global.parkX - ((global.brushWidth / 2) + 1)} Y{global.parkY + global.brushGap + ((global.brushLength/6) * 3)}
G1 X{global.parkX + ((global.brushWidth / 2) + 1)} Y{global.parkY + global.brushGap + ((global.brushLength/6) * 4)}
G1 X{global.parkX - ((global.brushWidth / 2) + 1)} Y{global.parkY + global.brushGap + ((global.brushLength/6) * 5)}
G1 X{global.parkX + ((global.brushWidth / 2) + 1)} Y{global.parkY + global.brushGap + ((global.brushLength/6) * 6)}
G1 X{global.parkX + ((global.brushWidth / 2) + 1)} Y{global.parkY + global.brushGap + ((global.brushLength/6) * 7)}

;M98 P"/macros/Park Head"