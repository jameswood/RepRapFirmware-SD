; Configuration file for Duet WiFi / Ethernet
; executed by the firmware on start-up

G21										; Work in millimetres
G90										; Absolute coordinates
M83										; Relative extrusion

; Network
M550 P"Bowie"							; Set machine name
M552 S1   								; Enable Networking
M586 P0 S1								; HTTP
M586 P1 S0								; FTP
M586 P2 S0								; Telnet

M575 P1 S1 B57600						; PanelDue

M667 S1									; CoreXY

; Endstops
M574 X1 Y1 S3							; Set X/Y endstop stall detection
M915 X S3								; X stall sensitivity
M915 Y S3								; Y stall sensitivity
M574 Z0 P"nil"							; No Z endstop switch, release Z endstop input
M558 P5 C"zstop" H1.5 F360 T30000			; Set Z probe type to switch, the dive height + speeds
M557 X10:290 Y20:180 S40				; Define mesh grid
G31 P200 X0 Y0 Z-1						; Set Z probe trigger value, offset and trigger height
M574 Z1 S2								; Set Z endstop probe

; Drive direction
M569 P0 S0								; Drive 0 X
M569 P1 S0								; Drive 1 Y
M569 P2 S1								; Drive 2 Z
M569 P3 S1								; Drive 3 E0
M569 P4 S1								; Drive 4 E1
M569 P9 S1								; Drive 5 E2
M569 P6 S1								; Drive 6 E3
M569 P7 S0								; Drive 7 Coupler
M584 X0 Y1 Z2 E3:4:9:6 C7				; Drive mapping

M208 X-35:328.5 Y-49:243 Z0:300 C0:260 S0							; Set axis limits
M350 C8 I0															; Configure microstepping without interpolation
M350 X16 Y16 Z16 E16:16:16:16 I1									; Configure microstepping with interpolation
M92  X100 Y100 Z1600 C100 E397.5:397.5:397.5:397.5					; Set steps per mm - titan is 433, hemera 397.5
M566 X600 Y600 Z120 C2 E200:200:200:200								; Set maximum instantaneous speed changes (mm/min)
M203 X35000 Y35000 Z1200 C5000 E5000:5000:5000:5000					; Set maximum speeds (mm/min)
M201 X6000 Y6000 Z400 C400 E2500:2500:2500:2500						; Set accelerations (mm/s^2)
M906 X1800 Y1800 Z1330 C400 E800:800:800:800 I30					; Set motor currents (mA) and motor idle factor in percent (1.2A for Titan)
M84  S120															; Set idle timeout

; Heaters
M308 S0 P"bedtemp" Y"thermistor" A"Bed" T100000 B4725 C7.06e-8		; Set bed thermistor
M308 S1 P"e0temp"  Y"thermistor" A"T0" T100000 B4725 C7.06e-8		; Set T0 thermistor
M308 S2 P"e1temp"  Y"thermistor" A"T1" T100000 B4725 C7.06e-8		; Set T1 thermistor
M308 S3 P"duex.e2temp"  Y"thermistor" A"T2" T100000 B4725 C7.06e-8	; Set T2 thermistor
M308 S4 P"duex.e3temp"  Y"thermistor" A"T3" T100000 B4725 C7.06e-8	; Set T3 thermistor
M308 S5 Y"mcu-temp" A"MCU"											; MCU temp
M308 S6 Y"drivers"  A"Drivers"										; Driver temps

; Map sensors to heaters
M950 H0 C"bedheat" T0												; bed on bedheat pin, map to sensor 0
M307 H0 B0 S1.00													; Activate bed PID mode, limit
M140 H0																; bed, heater 0
M950 H1 C"e0heat" T1												; T0, sensor 1
M950 H2 C"e1heat" T2												; T1, sensor 2
M950 H3 C"duex.e2heat" T3											; T2, sensor 3
M950 H4 C"duex.e3heat" T4											; T3, sensor 4

; Tune tool heaters
M307 H1 B0 R1.750 C234.4:178.1 D6.43 S1.00 V24.0
M307 H2 B0 R1.750 C234.4:178.1 D6.43 S1.00 V24.0
M307 H3 B0 R1.750 C234.4:178.1 D6.43 S1.00 V24.0
;M307 H4 B0 R2.009 C216.6:148.1 D5.97 S1.00 V24.1					; cold weather
M307 H4 B0 R1.750 C234.4:178.1 D6.43 S1.00 V24.0

; Temp limits
M143 H0 S225							; Bed
M143 H1 S300							; T0
M143 H2 S300							; T1
M143 H3 S300							; T2
M143 H4 S300							; T3

; Define tools
M563 P0 D0 H1 F2						; T0
M563 P1 D1 H2 F4						; T1
M563 P2 D2 H3 F6						; T2
M563 P3 D3 H4 F8						; T3

; Setup wiper
M950 S7 C"^duex.pwm5"					; define wiper servo
M106 P7 C"Wiper"						; name wiper servo

M98 P"toolOffsets.g"

; Set default temps to zero
G10 P0 R0 S0							; T0
G10 P1 R0 S0							; T1
G10 P2 R0 S0							; T2
G10 P3 R0 S0							; T3

; Fans
M950 F1 C"fan1" Q50
M950 F2 C"fan2" Q50
M950 F3 C"duex.fan3" Q50
M950 F4 C"duex.fan4" Q50
M950 F5 C"duex.fan5" Q50
M950 F6 C"duex.fan6" Q50
M950 F7 C"duex.fan7" Q50
M950 F8 C"duex.fan8" Q50

M106 P1 S255 H1 T50:70 L0.25			; T0 Heatsink Fan (auto)
M106 P3 S255 H2 T50:70 L0.25			; T1 Heatsink Fan (auto)
M106 P5 S255 H3 T50:70 L0.25			; T2 Heatsink Fan (auto)
M106 P7 S255 H4 T50:70 L0.25			; T3 Heatsink Fan (auto)
M106 P2 S0 H-1 L0.25 C"T0"				; T0 Part Fan
M106 P4 S0 H-1 L0.25 C"T1"				; T1 Part Fan
M106 P6 S0 H-1 L0.25 C"T2"				; T2 Part Fan
M106 P8 S0 H-1 L0.25 C"T3"				; T3 Part Fan

T-1 P0									; no tool selected

M501									; load config-override.g
M98 P"0:/macros/Initialise Variables"	; load defaults