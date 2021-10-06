;PURGE

;M98 P"/macros/Park Head"
G11 ; unretract

;Purge/retract
G1 E-8 F1000
G1 E6  F1500
G1 E-6 F1750
G1 E4  F2000
G1 E-4 F2500
G1 E-2 F3000

;G1 X{global.parkX - ((global.brushWidth / 2) + 1)} Y{global.parkY + global.brushGap + ((global.brushLength/8) * 1)} F50000
;G1 X{global.parkX + ((global.brushWidth / 2) + 1)} Y{global.parkY + global.brushGap + ((global.brushLength/8) * 2)}
;G1 X{global.parkX - ((global.brushWidth / 2) + 1)} Y{global.parkY + global.brushGap + ((global.brushLength/8) * 3)}
;G1 X{global.parkX + ((global.brushWidth / 2) + 1)} Y{global.parkY + global.brushGap + ((global.brushLength/8) * 4)}
;G1 X{global.parkX - ((global.brushWidth / 2) + 1)} Y{global.parkY + global.brushGap + ((global.brushLength/8) * 5)}
;G1 X{global.parkX + ((global.brushWidth / 2) + 1)} Y{global.parkY + global.brushGap + ((global.brushLength/8) * 6)}
;G1 X{global.parkX - ((global.brushWidth / 2) + 1)} Y{global.parkY + global.brushGap + ((global.brushLength/8) * 7)}
;G1 X{global.parkX + ((global.brushWidth / 2) + 1)} Y{global.parkY + global.brushGap + ((global.brushLength/8) * 8)}