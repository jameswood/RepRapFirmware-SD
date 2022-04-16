; homeall.g
; called to home all axes

M98 P"homec.g"			; Home C (ToolHead)
M98 P"homey.g"			; Home Y
M98 P"homex.g"			; Home X
M98 P"homez.g"			; Home Z
G60 S2					; Save position for toolchange
;G4 P200 ; wait for 200 milliseconds
M98 P"/macros/Park Head"