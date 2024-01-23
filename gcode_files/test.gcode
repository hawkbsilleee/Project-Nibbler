;Machine Setup
; M201 X500.00 Y500.00 Z100.00 E5000.00    ;Setup machine max acceleration
; M203 X500.00 Y500.00 Z10.00 		;Setup machine max feedrate

;E feedrate limit set in firmware
M204 P5000 R1000.00 T500.00          ;Setup Print/Retract/Travel acceleration
M205 X8.00 Y8.00 Z0.40 E5.00             ;Setup Jerk
M220 S100                                ;Reset Feedrate
M221 S100                                ;Reset Flowrate
G90					;Absolute positioning mode
M302 S0        ;Cold Extrude (set min extrude temp to 0) always allow extrusion
M83            ;Relative extrusion mode
G92 E0         ;Reset Extruder sets Extruder to 0
M92 E500       ;Increase extruder speed
;Homing and default stuff 
G28            				;Home
G0 Z8.0 F3000  				;Move Z Axis up
;starts the extruder a little higher to prevent dragging nibble clumps
;Pick up 0
G0 X125 Y170 Z25 F5000
G0 Z10 F5000
M106
G0 Z25 F5000
;Puck Refill 0
G0 E-150 F10000
G0 E150 F10000
G0 E-150 F10000
;Move to place location 0
G0 X75.02000000000001 Y75.02000000000001 Z10.0 F5000.0  ;Move Resin extruder to pos
G0 X75.02000000000001 Y75.02000000000001 Z0.0 F5000.0   ;Lower Resin extruder at pos
M107	              ;Turn vacuum off
G0 X75.02000000000001 Y75.02000000000001 Z10.0 F5000.0  ;Raise back up Resin extruder at pos
;Pick up 1
G0 X125 Y170 Z25 F5000
G0 Z10 F5000
M106
G0 Z25 F5000
;Puck Refill 1
G0 E-150 F10000
G0 E150 F10000
G0 E-150 F10000
;Move to place location 1
G0 X80.16999999999999 Y75.02000000000001 Z10.0 F5000.0  ;Move Resin extruder to pos
G0 X80.16999999999999 Y75.02000000000001 Z0.0 F5000.0   ;Lower Resin extruder at pos
M107	              ;Turn vacuum off
G0 X80.16999999999999 Y75.02000000000001 Z10.0 F5000.0  ;Raise back up Resin extruder at pos
;Pick up 2
G0 X125 Y170 Z25 F5000
G0 Z10 F5000
M106
G0 Z25 F5000
;Puck Refill 2
G0 E-150 F10000
G0 E150 F10000
G0 E-150 F10000
;Move to place location 2
G0 X85.35 Y75.02000000000001 Z10.0 F5000.0  ;Move Resin extruder to pos
G0 X85.35 Y75.02000000000001 Z0.0 F5000.0   ;Lower Resin extruder at pos
M107	              ;Turn vacuum off
G0 X85.35 Y75.02000000000001 Z10.0 F5000.0  ;Raise back up Resin extruder at pos
;Pick up 3
G0 X125 Y170 Z25 F5000
G0 Z10 F5000
M106
G0 Z25 F5000
;Puck Refill 3
G0 E-150 F10000
G0 E150 F10000
G0 E-150 F10000
;Move to place location 3
G0 X83.97999999999999 Y69.83000000000001 Z10.0 F5000.0  ;Move Resin extruder to pos
G0 X83.97999999999999 Y69.83000000000001 Z0.0 F5000.0   ;Lower Resin extruder at pos
M107	              ;Turn vacuum off
G0 X83.97999999999999 Y69.83000000000001 Z10.0 F5000.0  ;Raise back up Resin extruder at pos
;Pick up 4
G0 X125 Y170 Z25 F5000
G0 Z10 F5000
M106
G0 Z25 F5000
;Puck Refill 4
G0 E-150 F10000
G0 E150 F10000
G0 E-150 F10000
;Move to place location 4
G0 X80.16999999999999 Y66.02000000000001 Z10.0 F5000.0  ;Move Resin extruder to pos
G0 X80.16999999999999 Y66.02000000000001 Z0.0 F5000.0   ;Lower Resin extruder at pos
M107	              ;Turn vacuum off
G0 X80.16999999999999 Y66.02000000000001 Z10.0 F5000.0  ;Raise back up Resin extruder at pos
;Pick up 5
G0 X125 Y170 Z25 F5000
G0 Z10 F5000
M106
G0 Z25 F5000
;Puck Refill 5
G0 E-150 F10000
G0 E150 F10000
G0 E-150 F10000
;Move to place location 5
G0 X75.02000000000001 Y64.63999999999999 Z10.0 F5000.0  ;Move Resin extruder to pos
G0 X75.02000000000001 Y64.63999999999999 Z0.0 F5000.0   ;Lower Resin extruder at pos
M107	              ;Turn vacuum off
G0 X75.02000000000001 Y64.63999999999999 Z10.0 F5000.0  ;Raise back up Resin extruder at pos
;Pick up 6
G0 X125 Y170 Z25 F5000
G0 Z10 F5000
M106
G0 Z25 F5000
;Puck Refill 6
G0 E-150 F10000
G0 E150 F10000
G0 E-150 F10000
;Move to place location 6
G0 X69.83000000000001 Y66.02000000000001 Z10.0 F5000.0  ;Move Resin extruder to pos
G0 X69.83000000000001 Y66.02000000000001 Z0.0 F5000.0   ;Lower Resin extruder at pos
M107	              ;Turn vacuum off
G0 X69.83000000000001 Y66.02000000000001 Z10.0 F5000.0  ;Raise back up Resin extruder at pos
;Pick up 7
G0 X125 Y170 Z25 F5000
G0 Z10 F5000
M106
G0 Z25 F5000
;Puck Refill 7
G0 E-150 F10000
G0 E150 F10000
G0 E-150 F10000
;Move to place location 7
G0 X66.02000000000001 Y69.83000000000001 Z10.0 F5000.0  ;Move Resin extruder to pos
G0 X66.02000000000001 Y69.83000000000001 Z0.0 F5000.0   ;Lower Resin extruder at pos
M107	              ;Turn vacuum off
G0 X66.02000000000001 Y69.83000000000001 Z10.0 F5000.0  ;Raise back up Resin extruder at pos
;Pick up 8
G0 X125 Y170 Z25 F5000
G0 Z10 F5000
M106
G0 Z25 F5000
;Puck Refill 8
G0 E-150 F10000
G0 E150 F10000
G0 E-150 F10000
;Move to place location 8
G0 X64.63999999999999 Y75.02000000000001 Z10.0 F5000.0  ;Move Resin extruder to pos
G0 X64.63999999999999 Y75.02000000000001 Z0.0 F5000.0   ;Lower Resin extruder at pos
M107	              ;Turn vacuum off
G0 X64.63999999999999 Y75.02000000000001 Z10.0 F5000.0  ;Raise back up Resin extruder at pos
;Pick up 9
G0 X125 Y170 Z25 F5000
G0 Z10 F5000
M106
G0 Z25 F5000
;Puck Refill 9
G0 E-150 F10000
G0 E150 F10000
G0 E-150 F10000
;Move to place location 9
G0 X66.02000000000001 Y80.16999999999999 Z10.0 F5000.0  ;Move Resin extruder to pos
G0 X66.02000000000001 Y80.16999999999999 Z0.0 F5000.0   ;Lower Resin extruder at pos
M107	              ;Turn vacuum off
G0 X66.02000000000001 Y80.16999999999999 Z10.0 F5000.0  ;Raise back up Resin extruder at pos
;Pick up 10
G0 X125 Y170 Z25 F5000
G0 Z10 F5000
M106
G0 Z25 F5000
;Puck Refill 10
G0 E-150 F10000
G0 E150 F10000
G0 E-150 F10000
;Move to place location 10
G0 X69.83000000000001 Y83.97999999999999 Z10.0 F5000.0  ;Move Resin extruder to pos
G0 X69.83000000000001 Y83.97999999999999 Z0.0 F5000.0   ;Lower Resin extruder at pos
M107	              ;Turn vacuum off
G0 X69.83000000000001 Y83.97999999999999 Z10.0 F5000.0  ;Raise back up Resin extruder at pos
;Pick up 11
G0 X125 Y170 Z25 F5000
G0 Z10 F5000
M106
G0 Z25 F5000
;Puck Refill 11
G0 E-150 F10000
G0 E150 F10000
G0 E-150 F10000
;Move to place location 11
G0 X75.02000000000001 Y85.35 Z10.0 F5000.0  ;Move Resin extruder to pos
G0 X75.02000000000001 Y85.35 Z0.0 F5000.0   ;Lower Resin extruder at pos
M107	              ;Turn vacuum off
G0 X75.02000000000001 Y85.35 Z10.0 F5000.0  ;Raise back up Resin extruder at pos
;Pick up 12
G0 X125 Y170 Z25 F5000
G0 Z10 F5000
M106
G0 Z25 F5000
;Puck Refill 12
G0 E-150 F10000
G0 E150 F10000
G0 E-150 F10000
;Move to place location 12
G0 X80.16999999999999 Y83.97999999999999 Z10.0 F5000.0  ;Move Resin extruder to pos
G0 X80.16999999999999 Y83.97999999999999 Z0.0 F5000.0   ;Lower Resin extruder at pos
M107	              ;Turn vacuum off
G0 X80.16999999999999 Y83.97999999999999 Z10.0 F5000.0  ;Raise back up Resin extruder at pos
;Pick up 13
G0 X125 Y170 Z25 F5000
G0 Z10 F5000
M106
G0 Z25 F5000
;Puck Refill 13
G0 E-150 F10000
G0 E150 F10000
G0 E-150 F10000
;Move to place location 13
G0 X83.97999999999999 Y80.16999999999999 Z10.0 F5000.0  ;Move Resin extruder to pos
G0 X83.97999999999999 Y80.16999999999999 Z0.0 F5000.0   ;Lower Resin extruder at pos
M107	              ;Turn vacuum off
G0 X83.97999999999999 Y80.16999999999999 Z10.0 F5000.0  ;Raise back up Resin extruder at pos
;Pick up 14
G0 X125 Y170 Z25 F5000
G0 Z10 F5000
M106
G0 Z25 F5000
;Puck Refill 14
G0 E-150 F10000
G0 E150 F10000
G0 E-150 F10000
;Move to place location 14
G0 X77.59 Y70.5 Z10.0 F5000.0  ;Move Resin extruder to pos
G0 X77.59 Y70.5 Z0.0 F5000.0   ;Lower Resin extruder at pos
M107	              ;Turn vacuum off
G0 X77.59 Y70.5 Z10.0 F5000.0  ;Raise back up Resin extruder at pos
;Pick up 15
G0 X125 Y170 Z25 F5000
G0 Z10 F5000
M106
G0 Z25 F5000
;Puck Refill 15
G0 E-150 F10000
G0 E150 F10000
G0 E-150 F10000
;Move to place location 15
G0 X72.41 Y70.5 Z10.0 F5000.0  ;Move Resin extruder to pos
G0 X72.41 Y70.5 Z0.0 F5000.0   ;Lower Resin extruder at pos
M107	              ;Turn vacuum off
G0 X72.41 Y70.5 Z10.0 F5000.0  ;Raise back up Resin extruder at pos
;Pick up 16
G0 X125 Y170 Z25 F5000
G0 Z10 F5000
M106
G0 Z25 F5000
;Puck Refill 16
G0 E-150 F10000
G0 E150 F10000
G0 E-150 F10000
;Move to place location 16
G0 X69.83000000000001 Y75.02000000000001 Z10.0 F5000.0  ;Move Resin extruder to pos
G0 X69.83000000000001 Y75.02000000000001 Z0.0 F5000.0   ;Lower Resin extruder at pos
M107	              ;Turn vacuum off
G0 X69.83000000000001 Y75.02000000000001 Z10.0 F5000.0  ;Raise back up Resin extruder at pos
;Pick up 17
G0 X125 Y170 Z25 F5000
G0 Z10 F5000
M106
G0 Z25 F5000
;Puck Refill 17
G0 E-150 F10000
G0 E150 F10000
G0 E-150 F10000
;Move to place location 17
G0 X72.41 Y79.5 Z10.0 F5000.0  ;Move Resin extruder to pos
G0 X72.41 Y79.5 Z0.0 F5000.0   ;Lower Resin extruder at pos
M107	              ;Turn vacuum off
G0 X72.41 Y79.5 Z10.0 F5000.0  ;Raise back up Resin extruder at pos
;Pick up 18
G0 X125 Y170 Z25 F5000
G0 Z10 F5000
M106
G0 Z25 F5000
;Puck Refill 18
G0 E-150 F10000
G0 E150 F10000
G0 E-150 F10000
;Move to place location 18
G0 X77.59 Y79.5 Z10.0 F5000.0  ;Move Resin extruder to pos
G0 X77.59 Y79.5 Z0.0 F5000.0   ;Lower Resin extruder at pos
M107	              ;Turn vacuum off
G0 X77.59 Y79.5 Z10.0 F5000.0  ;Raise back up Resin extruder at pos
; Back to home
G28