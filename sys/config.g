; Configuration file for Duet WiFi / Ethernet
; executed by the firmware on start-up

; M587 S"hifi-wifi" P"password"         ; Wifi only. Comment this out after the network has been connected once (it is saved)

G21                                   ; Work in millimetres
G90                                   ; Absolute coordinates
M83                                   ; Relative extrusion

; Network
M550 P"Bowie"                         ; Set machine name
M552 S1                               ; Enable Networking
M586 P0 S1                            ; Enable HTTP
M586 P1 S0                            ; Disable FTP
M586 P2 S0                            ; Disable Telnet

M667 S1                               ; Select CoreXY mode

; Endstops
M574 X1 Y1 S3                         ; Set X/Y endstop stall detection
M915 X S4                             ; X stall sensitivity
M915 Y S3                             ; Y stall sensitivity
M574 Z1 S2                            ; Set Z endstop probe
M558 P7 X0 Y0 Z2 H3 F360 I0 T20000    ; Set Z probe type to switch, the axes for which it is used and the dive height + speeds
G31 P200 X0 Y0 Z0                     ; Set Z probe trigger value, offset and trigger height
M557 X10:290 Y20:180 S40              ; Define mesh grid

; Drive direction
M569 P0 S0                            ; Drive 0 X
M569 P1 S0                            ; Drive 1 Y
M569 P2 S1                            ; Drive 2 Z
M569 P3 S0                            ; Drive 3 E0
M569 P4 S0                            ; Drive 4 E1
M569 P5 S0                            ; Drive 5 E2
M569 P6 S0                            ; Drive 6 E3
M569 P7 S0                            ; Drive 7 Coupler

M584 X0 Y1 Z2 E3:4:5:6 C7             ; Apply custom drive mapping

M208 X-35:328.5 Y-49:243 Z0:300 C0:260 S0                       ; Set axis limits
M350 C8 I0                                                      ; Configure microstepping without interpolation
M350 X16 Y16 Z16 E16:16:16:16 I1                                ; Configure microstepping with interpolation
M92  X100 Y100 Z1600 C100 E395.5:395.5:395.5:395.5              ; Set steps per mm
M566 X600 Y600 Z20 C2 E200:200:200:200                          ; Set maximum instantaneous speed changes (mm/min)
M203 X35000 Y35000 Z1200 C5000 E5000:5000:5000:5000             ; Set maximum speeds (mm/min)
M201 X6000 Y6000 Z400 C400 E2500:2500:2500:2500                 ; Set accelerations (mm/s^2)
M906 X2000 Y2000 Z1330 C400 E800:800:800:800 I30                ; Set motor currents (mA) and motor idle factor in percent
M84  S120                                                       ; Set idle timeout

; Heaters
M308 S0 P"bedtemp" Y"thermistor" A"Bed" T100000 B4725 C7.06e-8  ; Set bed thermistor
M308 S1 P"e0temp"  Y"thermistor" A"T0" T100000 B4725 C7.06e-8   ; set T0 thermistor
M308 S2 P"e1temp"  Y"thermistor" A"T1" T100000 B4725 C7.06e-8   ; set T1 thermistor
M308 S3 P"e2temp"  Y"thermistor" A"T2" T100000 B4725 C7.06e-8   ; set T2 thermistor
M308 S4 P"e3temp"  Y"thermistor" A"T3" T100000 B4725 C7.06e-8   ; set T3 thermistor

M307 H0 B0                            ; Activate bed PID mode

; Map sensors to heaters
M140 H0                               ; bed, heater 0
M950 H1 C"e0heat" T1                  ; T0, sensor 1
M950 H2 C"e1heat" T2                  ; T1, sensor 2
M950 H3 C"e2heat" T3                  ; T2, sensor 3
M950 H4 C"e3heat" T4                  ; T3, sensor 4

; Temp limits
M143 H0 S225                          ; Bed
M143 H1 S300                          ; T0
M143 H2 S300                          ; T1
M143 H3 S300                          ; T2
M143 H4 S300                          ; T3

; Define tools
M563 P0 S"T0" D0 H1 F2                ; T0
M563 P1 S"T1" D1 H2 F4                ; T1
M563 P2 S"T2" D2 H3 F6                ; T2
M563 P3 S"T3" D3 H4 F8                ; T3

; Tool offsets
G10 P0 X-37.5 Y43.5 Z-6               ; T0
G10 P1 X-37.5 Y43.5 Z-6               ; T1
G10 P2 X-37.5 Y43.5 Z-6               ; T2
G10 P3 X-37.5 Y43.5 Z-6               ; T3

; Set default temps to zero
G10 P0 R0 S0                          ; T0
G10 P1 R0 S0                          ; T1
G10 P2 R0 S0                          ; T2
G10 P3 R0 S0                          ; T3

; Fans
M106 P0 S0                            ; Unused
M106 P1 S255 H1 T70                   ; T0 Heatsink Fan (auto)
M106 P3 S255 H2 T70                   ; T1 Heatsink Fan (auto)
M106 P5 S255 H3 T70                   ; T2 Heatsink Fan (auto)
M106 P7 S255 H4 T70                   ; T3 Heatsink Fan (auto)
M106 P2 S0                            ; T0 Part Fan
M106 P4 S0                            ; T1 Part Fan
M106 P6 S0                            ; T2 Part Fan
M106 P8 S0                            ; T3 Part Fan

T-1                                   ; no tool selected

M501                                  ; load config-override.g
