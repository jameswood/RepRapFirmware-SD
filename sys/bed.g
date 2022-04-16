; Bed Mesh Leveling - called with G32

if !move.axes[0].homed || !move.axes[1].homed || !move.axes[2].homed
  G28                       ; Home all if needed

G91							; Relative positioning
G1 Z3 F5000                 ; Lift Z 3mm
G90							; Absolute positioning
G29 S2                      ; Clear heatmap
M561                        ; Clear any bed transform
G29                         ; Probe the bed and enable compensation

M98 P"/macros/Park Head"