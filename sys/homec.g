; homec.g
; called to home the C axis (coupler)

G92 C260                 ; Set C-axis to 260
M913 C40                 ; C motor to 40% current
G1 C-260 F2400           ; drive the C-axis to the stop
M913 C100                ; C motor to full current
G1 C1 F50000             ; Move C-axis to 1
G92 C0                   ; Set C-axis to 0

M98 P"/macros/Coupler - Unlock"