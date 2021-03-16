; Bed Mesh Leveling - called with G32

if !move.axes[0].homed || !move.axes[1].homed || !move.axes[2].homed
  G28                       ; Home all if needed

G1 Z3 F5000                 ; lift Z 3mm
G29 S2                      ; clear heatmap
M561                        ; clear any bed transform
G29                         ; probe the bed and enable compensation

M98 P"/macros/Park Head"