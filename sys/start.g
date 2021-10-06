M300 S1000 P100             ; beep
M83                         ; relative extruder mode
M220 S100                   ; reset speed
M221 D0:1:2:3 S100          ; reset flow
M106 P2:4:6:8 X1.0          ; reset fan max
M572 D0:1:2:3 S0            ; pressure advance
M207 P0 S0.5 Z0.5 R0.1 F3000; retracts
M207 P1 S0.5 Z0.5 R0.1 F3000; retracts
M207 P2 S0.5 Z0.5 R0.1 F3000; retracts
M207 P3 S0.5 Z0.5 R0.1 F3000; retracts

M703                        ; run config.g for selected filament

if !move.axes[0].homed || !move.axes[1].homed || !move.axes[2].homed || !move.axes[3].homed
  G28                       ; Home all