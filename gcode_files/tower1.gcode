;Machine Setup
M201 X500.00 Y500.00 Z100.00 E5000.00    ;Setup machine max acceleration
M203 X500.00 Y500.00 Z10.00             ;Setup machine max feedrate
;(E feedrate limit set in firmware)
M204 P500.00 R1000.00 T500.00          ;Setup Print/Retract/Travel acceleration
M205 X8.00 Y8.00 Z0.40 E5.00             ;Setup Jerk
M220 S100                                ;Reset Feedrate
M221 S100                                ;Reset Flowrate
G90                                     ;Absolute positioning mode
M302 S0        ;Cold Extrude (set min extrude temp to 0) always allow extrusion
M83            ;Relative extrusion mode
G92 E0         ;Reset Extruder sets Extruder to 0
;Homing and default stuff 
G28                                     ;Home
G0 Z8.0 F3000                           ;Move Z Axis up
;starts the extruder a little higher to prevent dragging nibble clumps
;Pick up 0
G0 X9.5 Y9.3 Z10.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 0
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z35.0 F5000.0                                     ;Move up
;Move to place location 0
G0 X125.02000000000001 Y125.02000000000001 Z10.0 F5000.0                ;Move Resin extruder to pos
G0 X125.02000000000001 Y125.02000000000001 Z0.0 F5000.0                 ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X125.02000000000001 Y125.02000000000001 Z10.0 F5000.0                ;Raise back up Resin extruder at pos
;Pick up 1
G0 X19.5 Y9.3 Z10.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 1
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z35.0 F5000.0                                     ;Move up
;Move to place location 1
G0 X130.17 Y125.02000000000001 Z10.0 F5000.0            ;Move Resin extruder to pos
G0 X130.17 Y125.02000000000001 Z0.0 F5000.0             ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X130.17 Y125.02000000000001 Z10.0 F5000.0            ;Raise back up Resin extruder at pos
;Pick up 2
G0 X29.5 Y9.3 Z10.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 2
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z35.0 F5000.0                                     ;Move up
;Move to place location 2
G0 X135.35 Y125.02000000000001 Z10.0 F5000.0            ;Move Resin extruder to pos
G0 X135.35 Y125.02000000000001 Z0.0 F5000.0             ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X135.35 Y125.02000000000001 Z10.0 F5000.0            ;Raise back up Resin extruder at pos
;Pick up 3
G0 X39.5 Y9.3 Z10.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 3
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z35.0 F5000.0                                     ;Move up
;Move to place location 3
G0 X133.98 Y119.83000000000001 Z10.0 F5000.0            ;Move Resin extruder to pos
G0 X133.98 Y119.83000000000001 Z0.0 F5000.0             ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X133.98 Y119.83000000000001 Z10.0 F5000.0            ;Raise back up Resin extruder at pos
;Pick up 4
G0 X49.5 Y9.3 Z10.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 4
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z35.0 F5000.0                                     ;Move up
;Move to place location 4
G0 X130.17 Y116.02000000000001 Z10.0 F5000.0            ;Move Resin extruder to pos
G0 X130.17 Y116.02000000000001 Z0.0 F5000.0             ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X130.17 Y116.02000000000001 Z10.0 F5000.0            ;Raise back up Resin extruder at pos
;Pick up 5
G0 X59.5 Y9.3 Z10.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 5
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z35.0 F5000.0                                     ;Move up
;Move to place location 5
G0 X125.02000000000001 Y114.63999999999999 Z10.0 F5000.0                ;Move Resin extruder to pos
G0 X125.02000000000001 Y114.63999999999999 Z0.0 F5000.0                 ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X125.02000000000001 Y114.63999999999999 Z10.0 F5000.0                ;Raise back up Resin extruder at pos
;Pick up 6
G0 X69.5 Y9.3 Z10.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 6
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z35.0 F5000.0                                     ;Move up
;Move to place location 6
G0 X119.83000000000001 Y116.02000000000001 Z10.0 F5000.0                ;Move Resin extruder to pos
G0 X119.83000000000001 Y116.02000000000001 Z0.0 F5000.0                 ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X119.83000000000001 Y116.02000000000001 Z10.0 F5000.0                ;Raise back up Resin extruder at pos
;Pick up 7
G0 X79.5 Y9.3 Z10.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 7
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z35.0 F5000.0                                     ;Move up
;Move to place location 7
G0 X116.02000000000001 Y119.83000000000001 Z10.0 F5000.0                ;Move Resin extruder to pos
G0 X116.02000000000001 Y119.83000000000001 Z0.0 F5000.0                 ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X116.02000000000001 Y119.83000000000001 Z10.0 F5000.0                ;Raise back up Resin extruder at pos
;Pick up 8
G0 X89.5 Y9.3 Z10.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 8
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z35.0 F5000.0                                     ;Move up
;Move to place location 8
G0 X114.63999999999999 Y125.02000000000001 Z10.0 F5000.0                ;Move Resin extruder to pos
G0 X114.63999999999999 Y125.02000000000001 Z0.0 F5000.0                 ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X114.63999999999999 Y125.02000000000001 Z10.0 F5000.0                ;Raise back up Resin extruder at pos
;Pick up 9
G0 X99.5 Y9.3 Z10.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 9
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z35.0 F5000.0                                     ;Move up
;Move to place location 9
G0 X116.02000000000001 Y130.17 Z10.0 F5000.0            ;Move Resin extruder to pos
G0 X116.02000000000001 Y130.17 Z0.0 F5000.0             ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X116.02000000000001 Y130.17 Z10.0 F5000.0            ;Raise back up Resin extruder at pos
;Pick up 10
G0 X109.5 Y9.3 Z10.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 10
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z35.0 F5000.0                                     ;Move up
;Move to place location 10
G0 X119.83000000000001 Y133.98 Z10.0 F5000.0            ;Move Resin extruder to pos
G0 X119.83000000000001 Y133.98 Z0.0 F5000.0             ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X119.83000000000001 Y133.98 Z10.0 F5000.0            ;Raise back up Resin extruder at pos
;Pick up 11
G0 X9.5 Y19.3 Z10.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 11
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z35.0 F5000.0                                     ;Move up
;Move to place location 11
G0 X125.02000000000001 Y135.35 Z10.0 F5000.0            ;Move Resin extruder to pos
G0 X125.02000000000001 Y135.35 Z0.0 F5000.0             ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X125.02000000000001 Y135.35 Z10.0 F5000.0            ;Raise back up Resin extruder at pos
;Pick up 12
G0 X19.5 Y19.3 Z10.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 12
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z35.0 F5000.0                                     ;Move up
;Move to place location 12
G0 X130.17 Y133.98 Z10.0 F5000.0                ;Move Resin extruder to pos
G0 X130.17 Y133.98 Z0.0 F5000.0                 ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X130.17 Y133.98 Z10.0 F5000.0                ;Raise back up Resin extruder at pos
;Pick up 13
G0 X29.5 Y19.3 Z10.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 13
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z35.0 F5000.0                                     ;Move up
;Move to place location 13
G0 X133.98 Y130.17 Z10.0 F5000.0                ;Move Resin extruder to pos
G0 X133.98 Y130.17 Z0.0 F5000.0                 ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X133.98 Y130.17 Z10.0 F5000.0                ;Raise back up Resin extruder at pos
;Pick up 14
G0 X39.5 Y19.3 Z10.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 14
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z35.0 F5000.0                                     ;Move up
;Move to place location 14
G0 X127.59 Y120.5 Z10.0 F5000.0                 ;Move Resin extruder to pos
G0 X127.59 Y120.5 Z0.0 F5000.0          ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X127.59 Y120.5 Z10.0 F5000.0         ;Raise back up Resin extruder at pos
;Pick up 15
G0 X49.5 Y19.3 Z10.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 15
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z35.0 F5000.0                                     ;Move up
;Move to place location 15
G0 X122.41 Y120.5 Z10.0 F5000.0                 ;Move Resin extruder to pos
G0 X122.41 Y120.5 Z0.0 F5000.0          ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X122.41 Y120.5 Z10.0 F5000.0         ;Raise back up Resin extruder at pos
;Pick up 16
G0 X59.5 Y19.3 Z10.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 16
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z35.0 F5000.0                                     ;Move up
;Move to place location 16
G0 X119.83000000000001 Y125.02000000000001 Z10.0 F5000.0                ;Move Resin extruder to pos
G0 X119.83000000000001 Y125.02000000000001 Z0.0 F5000.0                 ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X119.83000000000001 Y125.02000000000001 Z10.0 F5000.0                ;Raise back up Resin extruder at pos
;Pick up 17
G0 X69.5 Y19.3 Z10.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 17
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z35.0 F5000.0                                     ;Move up
;Move to place location 17
G0 X122.41 Y129.5 Z10.0 F5000.0                 ;Move Resin extruder to pos
G0 X122.41 Y129.5 Z0.0 F5000.0          ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X122.41 Y129.5 Z10.0 F5000.0         ;Raise back up Resin extruder at pos
;Pick up 18
G0 X79.5 Y19.3 Z10.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 18
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z35.0 F5000.0                                     ;Move up
;Move to place location 18
G0 X127.59 Y129.5 Z10.0 F5000.0                 ;Move Resin extruder to pos
G0 X127.59 Y129.5 Z0.0 F5000.0          ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X127.59 Y129.5 Z10.0 F5000.0         ;Raise back up Resin extruder at pos
;Pick up 19
G0 X89.5 Y19.3 Z13.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 19
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z38.0 F5000.0                                     ;Move up
;Move to place location 19
G0 X125.02000000000001 Y125.02000000000001 Z13.0 F5000.0                ;Move Resin extruder to pos
G0 X125.02000000000001 Y125.02000000000001 Z3.0 F5000.0                 ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X125.02000000000001 Y125.02000000000001 Z13.0 F5000.0                ;Raise back up Resin extruder at pos
;Pick up 20
G0 X99.5 Y19.3 Z13.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 20
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z38.0 F5000.0                                     ;Move up
;Move to place location 20
G0 X128.65 Y121.35 Z13.0 F5000.0                ;Move Resin extruder to pos
G0 X128.65 Y121.35 Z3.0 F5000.0                 ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X128.65 Y121.35 Z13.0 F5000.0                ;Raise back up Resin extruder at pos
;Pick up 21
G0 X109.5 Y19.3 Z13.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 21
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z38.0 F5000.0                                     ;Move up
;Move to place location 21
G0 X132.32 Y117.68 Z13.0 F5000.0                ;Move Resin extruder to pos
G0 X132.32 Y117.68 Z3.0 F5000.0                 ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X132.32 Y117.68 Z13.0 F5000.0                ;Raise back up Resin extruder at pos
;Pick up 22
G0 X9.5 Y29.3 Z13.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 22
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z38.0 F5000.0                                     ;Move up
;Move to place location 22
G0 X127.69999999999999 Y115.0 Z13.0 F5000.0             ;Move Resin extruder to pos
G0 X127.69999999999999 Y115.0 Z3.0 F5000.0              ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X127.69999999999999 Y115.0 Z13.0 F5000.0             ;Raise back up Resin extruder at pos
;Pick up 23
G0 X19.5 Y29.3 Z13.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 23
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z38.0 F5000.0                                     ;Move up
;Move to place location 23
G0 X122.33000000000001 Y115.0 Z13.0 F5000.0             ;Move Resin extruder to pos
G0 X122.33000000000001 Y115.0 Z3.0 F5000.0              ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X122.33000000000001 Y115.0 Z13.0 F5000.0             ;Raise back up Resin extruder at pos
;Pick up 24
G0 X29.5 Y29.3 Z13.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 24
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z38.0 F5000.0                                     ;Move up
;Move to place location 24
G0 X117.68 Y117.68 Z13.0 F5000.0                ;Move Resin extruder to pos
G0 X117.68 Y117.68 Z3.0 F5000.0                 ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X117.68 Y117.68 Z13.0 F5000.0                ;Raise back up Resin extruder at pos
;Pick up 25
G0 X39.5 Y29.3 Z13.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 25
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z38.0 F5000.0                                     ;Move up
;Move to place location 25
G0 X115.0 Y122.33000000000001 Z13.0 F5000.0             ;Move Resin extruder to pos
G0 X115.0 Y122.33000000000001 Z3.0 F5000.0              ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X115.0 Y122.33000000000001 Z13.0 F5000.0             ;Raise back up Resin extruder at pos
;Pick up 26
G0 X49.5 Y29.3 Z13.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 26
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z38.0 F5000.0                                     ;Move up
;Move to place location 26
G0 X115.0 Y127.69999999999999 Z13.0 F5000.0             ;Move Resin extruder to pos
G0 X115.0 Y127.69999999999999 Z3.0 F5000.0              ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X115.0 Y127.69999999999999 Z13.0 F5000.0             ;Raise back up Resin extruder at pos
;Pick up 27
G0 X59.5 Y29.3 Z13.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 27
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z38.0 F5000.0                                     ;Move up
;Move to place location 27
G0 X117.68 Y132.32 Z13.0 F5000.0                ;Move Resin extruder to pos
G0 X117.68 Y132.32 Z3.0 F5000.0                 ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X117.68 Y132.32 Z13.0 F5000.0                ;Raise back up Resin extruder at pos
;Pick up 28
G0 X69.5 Y29.3 Z13.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 28
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z38.0 F5000.0                                     ;Move up
;Move to place location 28
G0 X122.33000000000001 Y135.0 Z13.0 F5000.0             ;Move Resin extruder to pos
G0 X122.33000000000001 Y135.0 Z3.0 F5000.0              ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X122.33000000000001 Y135.0 Z13.0 F5000.0             ;Raise back up Resin extruder at pos
;Pick up 29
G0 X79.5 Y29.3 Z13.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 29
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z38.0 F5000.0                                     ;Move up
;Move to place location 29
G0 X127.69999999999999 Y135.0 Z13.0 F5000.0             ;Move Resin extruder to pos
G0 X127.69999999999999 Y135.0 Z3.0 F5000.0              ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X127.69999999999999 Y135.0 Z13.0 F5000.0             ;Raise back up Resin extruder at pos
;Pick up 30
G0 X89.5 Y29.3 Z13.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 30
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z38.0 F5000.0                                     ;Move up
;Move to place location 30
G0 X132.32 Y132.32 Z13.0 F5000.0                ;Move Resin extruder to pos
G0 X132.32 Y132.32 Z3.0 F5000.0                 ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X132.32 Y132.32 Z13.0 F5000.0                ;Raise back up Resin extruder at pos
;Pick up 31
G0 X99.5 Y29.3 Z13.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 31
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z38.0 F5000.0                                     ;Move up
;Move to place location 31
G0 X135.0 Y127.69999999999999 Z13.0 F5000.0             ;Move Resin extruder to pos
G0 X135.0 Y127.69999999999999 Z3.0 F5000.0              ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X135.0 Y127.69999999999999 Z13.0 F5000.0             ;Raise back up Resin extruder at pos
;Pick up 32
G0 X109.5 Y29.3 Z13.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 32
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z38.0 F5000.0                                     ;Move up
;Move to place location 32
G0 X135.0 Y122.33000000000001 Z13.0 F5000.0             ;Move Resin extruder to pos
G0 X135.0 Y122.33000000000001 Z3.0 F5000.0              ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X135.0 Y122.33000000000001 Z13.0 F5000.0             ;Raise back up Resin extruder at pos
;Pick up 33
G0 X-0.5 Y39.3 Z13.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 33
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z38.0 F5000.0                                     ;Move up
;Move to place location 33
G0 X123.68 Y120.00999999999999 Z13.0 F5000.0            ;Move Resin extruder to pos
G0 X123.68 Y120.00999999999999 Z3.0 F5000.0             ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X123.68 Y120.00999999999999 Z13.0 F5000.0            ;Raise back up Resin extruder at pos
;Pick up 34
G0 X9.5 Y39.3 Z13.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 34
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z38.0 F5000.0                                     ;Move up
;Move to place location 34
G0 X120.00999999999999 Y123.68 Z13.0 F5000.0            ;Move Resin extruder to pos
G0 X120.00999999999999 Y123.68 Z3.0 F5000.0             ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X120.00999999999999 Y123.68 Z13.0 F5000.0            ;Raise back up Resin extruder at pos
;Pick up 35
G0 X19.5 Y39.3 Z13.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 35
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z38.0 F5000.0                                     ;Move up
;Move to place location 35
G0 X121.35 Y128.65 Z13.0 F5000.0                ;Move Resin extruder to pos
G0 X121.35 Y128.65 Z3.0 F5000.0                 ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X121.35 Y128.65 Z13.0 F5000.0                ;Raise back up Resin extruder at pos
;Pick up 36
G0 X29.5 Y39.3 Z13.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 36
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z38.0 F5000.0                                     ;Move up
;Move to place location 36
G0 X126.36000000000001 Y129.99 Z13.0 F5000.0            ;Move Resin extruder to pos
G0 X126.36000000000001 Y129.99 Z3.0 F5000.0             ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X126.36000000000001 Y129.99 Z13.0 F5000.0            ;Raise back up Resin extruder at pos
;Pick up 37
G0 X39.5 Y39.3 Z13.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 37
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z38.0 F5000.0                                     ;Move up
;Move to place location 37
G0 X129.99 Y126.36000000000001 Z13.0 F5000.0            ;Move Resin extruder to pos
G0 X129.99 Y126.36000000000001 Z3.0 F5000.0             ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X129.99 Y126.36000000000001 Z13.0 F5000.0            ;Raise back up Resin extruder at pos
;Pick up 38
G0 X49.5 Y39.3 Z16.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 38
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z41.0 F5000.0                                     ;Move up
;Move to place location 38
G0 X125.02000000000001 Y125.02000000000001 Z16.0 F5000.0                ;Move Resin extruder to pos
G0 X125.02000000000001 Y125.02000000000001 Z6.0 F5000.0                 ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X125.02000000000001 Y125.02000000000001 Z16.0 F5000.0                ;Raise back up Resin extruder at pos
;Pick up 39
G0 X59.5 Y39.3 Z16.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 39
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z41.0 F5000.0                                     ;Move up
;Move to place location 39
G0 X130.17 Y125.02000000000001 Z16.0 F5000.0            ;Move Resin extruder to pos
G0 X130.17 Y125.02000000000001 Z6.0 F5000.0             ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X130.17 Y125.02000000000001 Z16.0 F5000.0            ;Raise back up Resin extruder at pos
;Pick up 40
G0 X69.5 Y39.3 Z16.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 40
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z41.0 F5000.0                                     ;Move up
;Move to place location 40
G0 X135.35 Y125.02000000000001 Z16.0 F5000.0            ;Move Resin extruder to pos
G0 X135.35 Y125.02000000000001 Z6.0 F5000.0             ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X135.35 Y125.02000000000001 Z16.0 F5000.0            ;Raise back up Resin extruder at pos
;Pick up 41
G0 X79.5 Y39.3 Z16.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 41
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z41.0 F5000.0                                     ;Move up
;Move to place location 41
G0 X133.98 Y119.83000000000001 Z16.0 F5000.0            ;Move Resin extruder to pos
G0 X133.98 Y119.83000000000001 Z6.0 F5000.0             ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X133.98 Y119.83000000000001 Z16.0 F5000.0            ;Raise back up Resin extruder at pos
;Pick up 42
G0 X89.5 Y39.3 Z16.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 42
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z41.0 F5000.0                                     ;Move up
;Move to place location 42
G0 X130.17 Y116.02000000000001 Z16.0 F5000.0            ;Move Resin extruder to pos
G0 X130.17 Y116.02000000000001 Z6.0 F5000.0             ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X130.17 Y116.02000000000001 Z16.0 F5000.0            ;Raise back up Resin extruder at pos
;Pick up 43
G0 X99.5 Y39.3 Z16.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 43
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z41.0 F5000.0                                     ;Move up
;Move to place location 43
G0 X125.02000000000001 Y114.63999999999999 Z16.0 F5000.0                ;Move Resin extruder to pos
G0 X125.02000000000001 Y114.63999999999999 Z6.0 F5000.0                 ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X125.02000000000001 Y114.63999999999999 Z16.0 F5000.0                ;Raise back up Resin extruder at pos
;Pick up 44
G0 X109.5 Y39.3 Z16.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 44
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z41.0 F5000.0                                     ;Move up
;Move to place location 44
G0 X119.83000000000001 Y116.02000000000001 Z16.0 F5000.0                ;Move Resin extruder to pos
G0 X119.83000000000001 Y116.02000000000001 Z6.0 F5000.0                 ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X119.83000000000001 Y116.02000000000001 Z16.0 F5000.0                ;Raise back up Resin extruder at pos
;Pick up 45
G0 X-0.5 Y49.3 Z16.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 45
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z41.0 F5000.0                                     ;Move up
;Move to place location 45
G0 X116.02000000000001 Y119.83000000000001 Z16.0 F5000.0                ;Move Resin extruder to pos
G0 X116.02000000000001 Y119.83000000000001 Z6.0 F5000.0                 ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X116.02000000000001 Y119.83000000000001 Z16.0 F5000.0                ;Raise back up Resin extruder at pos
;Pick up 46
G0 X9.5 Y49.3 Z16.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 46
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z41.0 F5000.0                                     ;Move up
;Move to place location 46
G0 X114.63999999999999 Y125.02000000000001 Z16.0 F5000.0                ;Move Resin extruder to pos
G0 X114.63999999999999 Y125.02000000000001 Z6.0 F5000.0                 ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X114.63999999999999 Y125.02000000000001 Z16.0 F5000.0                ;Raise back up Resin extruder at pos
;Pick up 47
G0 X19.5 Y49.3 Z16.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 47
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z41.0 F5000.0                                     ;Move up
;Move to place location 47
G0 X116.02000000000001 Y130.17 Z16.0 F5000.0            ;Move Resin extruder to pos
G0 X116.02000000000001 Y130.17 Z6.0 F5000.0             ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X116.02000000000001 Y130.17 Z16.0 F5000.0            ;Raise back up Resin extruder at pos
;Pick up 48
G0 X29.5 Y49.3 Z16.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 48
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z41.0 F5000.0                                     ;Move up
;Move to place location 48
G0 X119.83000000000001 Y133.98 Z16.0 F5000.0            ;Move Resin extruder to pos
G0 X119.83000000000001 Y133.98 Z6.0 F5000.0             ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X119.83000000000001 Y133.98 Z16.0 F5000.0            ;Raise back up Resin extruder at pos
;Pick up 49
G0 X39.5 Y49.3 Z16.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 49
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z41.0 F5000.0                                     ;Move up
;Move to place location 49
G0 X125.02000000000001 Y135.35 Z16.0 F5000.0            ;Move Resin extruder to pos
G0 X125.02000000000001 Y135.35 Z6.0 F5000.0             ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X125.02000000000001 Y135.35 Z16.0 F5000.0            ;Raise back up Resin extruder at pos
;Pick up 50
G0 X49.5 Y49.3 Z16.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 50
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z41.0 F5000.0                                     ;Move up
;Move to place location 50
G0 X130.17 Y133.98 Z16.0 F5000.0                ;Move Resin extruder to pos
G0 X130.17 Y133.98 Z6.0 F5000.0                 ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X130.17 Y133.98 Z16.0 F5000.0                ;Raise back up Resin extruder at pos
;Pick up 51
G0 X59.5 Y49.3 Z16.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 51
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z41.0 F5000.0                                     ;Move up
;Move to place location 51
G0 X133.98 Y130.17 Z16.0 F5000.0                ;Move Resin extruder to pos
G0 X133.98 Y130.17 Z6.0 F5000.0                 ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X133.98 Y130.17 Z16.0 F5000.0                ;Raise back up Resin extruder at pos
;Pick up 52
G0 X69.5 Y49.3 Z16.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 52
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z41.0 F5000.0                                     ;Move up
;Move to place location 52
G0 X127.59 Y120.5 Z16.0 F5000.0                 ;Move Resin extruder to pos
G0 X127.59 Y120.5 Z6.0 F5000.0          ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X127.59 Y120.5 Z16.0 F5000.0         ;Raise back up Resin extruder at pos
;Pick up 53
G0 X79.5 Y49.3 Z16.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 53
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z41.0 F5000.0                                     ;Move up
;Move to place location 53
G0 X122.41 Y120.5 Z16.0 F5000.0                 ;Move Resin extruder to pos
G0 X122.41 Y120.5 Z6.0 F5000.0          ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X122.41 Y120.5 Z16.0 F5000.0         ;Raise back up Resin extruder at pos
;Pick up 54
G0 X89.5 Y49.3 Z16.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 54
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z41.0 F5000.0                                     ;Move up
;Move to place location 54
G0 X119.83000000000001 Y125.02000000000001 Z16.0 F5000.0                ;Move Resin extruder to pos
G0 X119.83000000000001 Y125.02000000000001 Z6.0 F5000.0                 ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X119.83000000000001 Y125.02000000000001 Z16.0 F5000.0                ;Raise back up Resin extruder at pos
;Pick up 55
G0 X99.5 Y49.3 Z16.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 55
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z41.0 F5000.0                                     ;Move up
;Move to place location 55
G0 X122.41 Y129.5 Z16.0 F5000.0                 ;Move Resin extruder to pos
G0 X122.41 Y129.5 Z6.0 F5000.0          ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X122.41 Y129.5 Z16.0 F5000.0         ;Raise back up Resin extruder at pos
;Pick up 56
G0 X109.5 Y49.3 Z16.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 56
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z41.0 F5000.0                                     ;Move up
;Move to place location 56
G0 X127.59 Y129.5 Z16.0 F5000.0                 ;Move Resin extruder to pos
G0 X127.59 Y129.5 Z6.0 F5000.0          ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X127.59 Y129.5 Z16.0 F5000.0         ;Raise back up Resin extruder at pos
;Pick up 57
G0 X-0.5 Y59.3 Z19.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 57
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z44.0 F5000.0                                     ;Move up
;Move to place location 57
G0 X125.02000000000001 Y125.02000000000001 Z19.0 F5000.0                ;Move Resin extruder to pos
G0 X125.02000000000001 Y125.02000000000001 Z9.0 F5000.0                 ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X125.02000000000001 Y125.02000000000001 Z19.0 F5000.0                ;Raise back up Resin extruder at pos
;Pick up 58
G0 X9.5 Y59.3 Z19.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 58
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z44.0 F5000.0                                     ;Move up
;Move to place location 58
G0 X128.65 Y121.35 Z19.0 F5000.0                ;Move Resin extruder to pos
G0 X128.65 Y121.35 Z9.0 F5000.0                 ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X128.65 Y121.35 Z19.0 F5000.0                ;Raise back up Resin extruder at pos
;Pick up 59
G0 X19.5 Y59.3 Z19.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 59
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z44.0 F5000.0                                     ;Move up
;Move to place location 59
G0 X132.32 Y117.68 Z19.0 F5000.0                ;Move Resin extruder to pos
G0 X132.32 Y117.68 Z9.0 F5000.0                 ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X132.32 Y117.68 Z19.0 F5000.0                ;Raise back up Resin extruder at pos
;Pick up 60
G0 X29.5 Y59.3 Z19.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 60
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z44.0 F5000.0                                     ;Move up
;Move to place location 60
G0 X127.69999999999999 Y115.0 Z19.0 F5000.0             ;Move Resin extruder to pos
G0 X127.69999999999999 Y115.0 Z9.0 F5000.0              ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X127.69999999999999 Y115.0 Z19.0 F5000.0             ;Raise back up Resin extruder at pos
;Pick up 61
G0 X39.5 Y59.3 Z19.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 61
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z44.0 F5000.0                                     ;Move up
;Move to place location 61
G0 X122.33000000000001 Y115.0 Z19.0 F5000.0             ;Move Resin extruder to pos
G0 X122.33000000000001 Y115.0 Z9.0 F5000.0              ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X122.33000000000001 Y115.0 Z19.0 F5000.0             ;Raise back up Resin extruder at pos
;Pick up 62
G0 X49.5 Y59.3 Z19.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 62
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z44.0 F5000.0                                     ;Move up
;Move to place location 62
G0 X117.68 Y117.68 Z19.0 F5000.0                ;Move Resin extruder to pos
G0 X117.68 Y117.68 Z9.0 F5000.0                 ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X117.68 Y117.68 Z19.0 F5000.0                ;Raise back up Resin extruder at pos
;Pick up 63
G0 X59.5 Y59.3 Z19.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 63
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z44.0 F5000.0                                     ;Move up
;Move to place location 63
G0 X115.0 Y122.33000000000001 Z19.0 F5000.0             ;Move Resin extruder to pos
G0 X115.0 Y122.33000000000001 Z9.0 F5000.0              ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X115.0 Y122.33000000000001 Z19.0 F5000.0             ;Raise back up Resin extruder at pos
;Pick up 64
G0 X69.5 Y59.3 Z19.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 64
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z44.0 F5000.0                                     ;Move up
;Move to place location 64
G0 X115.0 Y127.69999999999999 Z19.0 F5000.0             ;Move Resin extruder to pos
G0 X115.0 Y127.69999999999999 Z9.0 F5000.0              ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X115.0 Y127.69999999999999 Z19.0 F5000.0             ;Raise back up Resin extruder at pos
;Pick up 65
G0 X79.5 Y59.3 Z19.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 65
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z44.0 F5000.0                                     ;Move up
;Move to place location 65
G0 X117.68 Y132.32 Z19.0 F5000.0                ;Move Resin extruder to pos
G0 X117.68 Y132.32 Z9.0 F5000.0                 ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X117.68 Y132.32 Z19.0 F5000.0                ;Raise back up Resin extruder at pos
;Pick up 66
G0 X89.5 Y59.3 Z19.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 66
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z44.0 F5000.0                                     ;Move up
;Move to place location 66
G0 X122.33000000000001 Y135.0 Z19.0 F5000.0             ;Move Resin extruder to pos
G0 X122.33000000000001 Y135.0 Z9.0 F5000.0              ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X122.33000000000001 Y135.0 Z19.0 F5000.0             ;Raise back up Resin extruder at pos
;Pick up 67
G0 X99.5 Y59.3 Z19.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 67
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z44.0 F5000.0                                     ;Move up
;Move to place location 67
G0 X127.69999999999999 Y135.0 Z19.0 F5000.0             ;Move Resin extruder to pos
G0 X127.69999999999999 Y135.0 Z9.0 F5000.0              ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X127.69999999999999 Y135.0 Z19.0 F5000.0             ;Raise back up Resin extruder at pos
;Pick up 68
G0 X109.5 Y59.3 Z19.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 68
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z44.0 F5000.0                                     ;Move up
;Move to place location 68
G0 X132.32 Y132.32 Z19.0 F5000.0                ;Move Resin extruder to pos
G0 X132.32 Y132.32 Z9.0 F5000.0                 ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X132.32 Y132.32 Z19.0 F5000.0                ;Raise back up Resin extruder at pos
;Pick up 69
G0 X-0.5 Y69.3 Z19.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 69
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z44.0 F5000.0                                     ;Move up
;Move to place location 69
G0 X135.0 Y127.69999999999999 Z19.0 F5000.0             ;Move Resin extruder to pos
G0 X135.0 Y127.69999999999999 Z9.0 F5000.0              ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X135.0 Y127.69999999999999 Z19.0 F5000.0             ;Raise back up Resin extruder at pos
;Pick up 70
G0 X9.5 Y69.3 Z19.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 70
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z44.0 F5000.0                                     ;Move up
;Move to place location 70
G0 X135.0 Y122.33000000000001 Z19.0 F5000.0             ;Move Resin extruder to pos
G0 X135.0 Y122.33000000000001 Z9.0 F5000.0              ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X135.0 Y122.33000000000001 Z19.0 F5000.0             ;Raise back up Resin extruder at pos
;Pick up 71
G0 X19.5 Y69.3 Z19.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 71
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z44.0 F5000.0                                     ;Move up
;Move to place location 71
G0 X123.68 Y120.00999999999999 Z19.0 F5000.0            ;Move Resin extruder to pos
G0 X123.68 Y120.00999999999999 Z9.0 F5000.0             ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X123.68 Y120.00999999999999 Z19.0 F5000.0            ;Raise back up Resin extruder at pos
;Pick up 72
G0 X29.5 Y69.3 Z19.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 72
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z44.0 F5000.0                                     ;Move up
;Move to place location 72
G0 X120.00999999999999 Y123.68 Z19.0 F5000.0            ;Move Resin extruder to pos
G0 X120.00999999999999 Y123.68 Z9.0 F5000.0             ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X120.00999999999999 Y123.68 Z19.0 F5000.0            ;Raise back up Resin extruder at pos
;Pick up 73
G0 X39.5 Y69.3 Z19.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 73
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z44.0 F5000.0                                     ;Move up
;Move to place location 73
G0 X121.35 Y128.65 Z19.0 F5000.0                ;Move Resin extruder to pos
G0 X121.35 Y128.65 Z9.0 F5000.0                 ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X121.35 Y128.65 Z19.0 F5000.0                ;Raise back up Resin extruder at pos
;Pick up 74
G0 X49.5 Y69.3 Z19.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 74
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z44.0 F5000.0                                     ;Move up
;Move to place location 74
G0 X126.36000000000001 Y129.99 Z19.0 F5000.0            ;Move Resin extruder to pos
G0 X126.36000000000001 Y129.99 Z9.0 F5000.0             ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X126.36000000000001 Y129.99 Z19.0 F5000.0            ;Raise back up Resin extruder at pos
;Pick up 75
G0 X59.5 Y69.3 Z19.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 75
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z44.0 F5000.0                                     ;Move up
;Move to place location 75
G0 X129.99 Y126.36000000000001 Z19.0 F5000.0            ;Move Resin extruder to pos
G0 X129.99 Y126.36000000000001 Z9.0 F5000.0             ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X129.99 Y126.36000000000001 Z19.0 F5000.0            ;Raise back up Resin extruder at pos
;Pick up 76
G0 X69.5 Y69.3 Z22.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 76
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z47.0 F5000.0                                     ;Move up
;Move to place location 76
G0 X125.02000000000001 Y125.02000000000001 Z22.0 F5000.0                ;Move Resin extruder to pos
G0 X125.02000000000001 Y125.02000000000001 Z12.0 F5000.0                ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X125.02000000000001 Y125.02000000000001 Z22.0 F5000.0                ;Raise back up Resin extruder at pos
;Pick up 77
G0 X79.5 Y69.3 Z22.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 77
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z47.0 F5000.0                                     ;Move up
;Move to place location 77
G0 X130.17 Y125.02000000000001 Z22.0 F5000.0            ;Move Resin extruder to pos
G0 X130.17 Y125.02000000000001 Z12.0 F5000.0            ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X130.17 Y125.02000000000001 Z22.0 F5000.0            ;Raise back up Resin extruder at pos
;Pick up 78
G0 X89.5 Y69.3 Z22.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 78
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z47.0 F5000.0                                     ;Move up
;Move to place location 78
G0 X135.35 Y125.02000000000001 Z22.0 F5000.0            ;Move Resin extruder to pos
G0 X135.35 Y125.02000000000001 Z12.0 F5000.0            ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X135.35 Y125.02000000000001 Z22.0 F5000.0            ;Raise back up Resin extruder at pos
;Pick up 79
G0 X99.5 Y69.3 Z22.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 79
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z47.0 F5000.0                                     ;Move up
;Move to place location 79
G0 X133.98 Y119.83000000000001 Z22.0 F5000.0            ;Move Resin extruder to pos
G0 X133.98 Y119.83000000000001 Z12.0 F5000.0            ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X133.98 Y119.83000000000001 Z22.0 F5000.0            ;Raise back up Resin extruder at pos
;Pick up 80
G0 X109.5 Y69.3 Z22.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 80
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z47.0 F5000.0                                     ;Move up
;Move to place location 80
G0 X130.17 Y116.02000000000001 Z22.0 F5000.0            ;Move Resin extruder to pos
G0 X130.17 Y116.02000000000001 Z12.0 F5000.0            ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X130.17 Y116.02000000000001 Z22.0 F5000.0            ;Raise back up Resin extruder at pos
;Pick up 81
G0 X-0.5 Y79.3 Z22.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 81
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z47.0 F5000.0                                     ;Move up
;Move to place location 81
G0 X125.02000000000001 Y114.63999999999999 Z22.0 F5000.0                ;Move Resin extruder to pos
G0 X125.02000000000001 Y114.63999999999999 Z12.0 F5000.0                ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X125.02000000000001 Y114.63999999999999 Z22.0 F5000.0                ;Raise back up Resin extruder at pos
;Pick up 82
G0 X9.5 Y79.3 Z22.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 82
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z47.0 F5000.0                                     ;Move up
;Move to place location 82
G0 X119.83000000000001 Y116.02000000000001 Z22.0 F5000.0                ;Move Resin extruder to pos
G0 X119.83000000000001 Y116.02000000000001 Z12.0 F5000.0                ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X119.83000000000001 Y116.02000000000001 Z22.0 F5000.0                ;Raise back up Resin extruder at pos
;Pick up 83
G0 X19.5 Y79.3 Z22.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 83
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z47.0 F5000.0                                     ;Move up
;Move to place location 83
G0 X116.02000000000001 Y119.83000000000001 Z22.0 F5000.0                ;Move Resin extruder to pos
G0 X116.02000000000001 Y119.83000000000001 Z12.0 F5000.0                ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X116.02000000000001 Y119.83000000000001 Z22.0 F5000.0                ;Raise back up Resin extruder at pos
;Pick up 84
G0 X29.5 Y79.3 Z22.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 84
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z47.0 F5000.0                                     ;Move up
;Move to place location 84
G0 X114.63999999999999 Y125.02000000000001 Z22.0 F5000.0                ;Move Resin extruder to pos
G0 X114.63999999999999 Y125.02000000000001 Z12.0 F5000.0                ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X114.63999999999999 Y125.02000000000001 Z22.0 F5000.0                ;Raise back up Resin extruder at pos
;Pick up 85
G0 X39.5 Y79.3 Z22.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 85
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z47.0 F5000.0                                     ;Move up
;Move to place location 85
G0 X116.02000000000001 Y130.17 Z22.0 F5000.0            ;Move Resin extruder to pos
G0 X116.02000000000001 Y130.17 Z12.0 F5000.0            ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X116.02000000000001 Y130.17 Z22.0 F5000.0            ;Raise back up Resin extruder at pos
;Pick up 86
G0 X49.5 Y79.3 Z22.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 86
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z47.0 F5000.0                                     ;Move up
;Move to place location 86
G0 X119.83000000000001 Y133.98 Z22.0 F5000.0            ;Move Resin extruder to pos
G0 X119.83000000000001 Y133.98 Z12.0 F5000.0            ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X119.83000000000001 Y133.98 Z22.0 F5000.0            ;Raise back up Resin extruder at pos
;Pick up 87
G0 X59.5 Y79.3 Z22.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 87
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z47.0 F5000.0                                     ;Move up
;Move to place location 87
G0 X125.02000000000001 Y135.35 Z22.0 F5000.0            ;Move Resin extruder to pos
G0 X125.02000000000001 Y135.35 Z12.0 F5000.0            ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X125.02000000000001 Y135.35 Z22.0 F5000.0            ;Raise back up Resin extruder at pos
;Pick up 88
G0 X69.5 Y79.3 Z22.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 88
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z47.0 F5000.0                                     ;Move up
;Move to place location 88
G0 X130.17 Y133.98 Z22.0 F5000.0                ;Move Resin extruder to pos
G0 X130.17 Y133.98 Z12.0 F5000.0                ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X130.17 Y133.98 Z22.0 F5000.0                ;Raise back up Resin extruder at pos
;Pick up 89
G0 X-0.5 Y89.3 Z22.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 89
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z47.0 F5000.0                                     ;Move up
;Move to place location 89
G0 X133.98 Y130.17 Z22.0 F5000.0                ;Move Resin extruder to pos
G0 X133.98 Y130.17 Z12.0 F5000.0                ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X133.98 Y130.17 Z22.0 F5000.0                ;Raise back up Resin extruder at pos
;Pick up 90
G0 X9.5 Y89.3 Z22.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 90
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z47.0 F5000.0                                     ;Move up
;Move to place location 90
G0 X127.59 Y120.5 Z22.0 F5000.0                 ;Move Resin extruder to pos
G0 X127.59 Y120.5 Z12.0 F5000.0                 ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X127.59 Y120.5 Z22.0 F5000.0         ;Raise back up Resin extruder at pos
;Pick up 91
G0 X19.5 Y89.3 Z22.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 91
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z47.0 F5000.0                                     ;Move up
;Move to place location 91
G0 X122.41 Y120.5 Z22.0 F5000.0                 ;Move Resin extruder to pos
G0 X122.41 Y120.5 Z12.0 F5000.0                 ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X122.41 Y120.5 Z22.0 F5000.0         ;Raise back up Resin extruder at pos
;Pick up 92
G0 X29.5 Y89.3 Z22.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 92
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z47.0 F5000.0                                     ;Move up
;Move to place location 92
G0 X119.83000000000001 Y125.02000000000001 Z22.0 F5000.0                ;Move Resin extruder to pos
G0 X119.83000000000001 Y125.02000000000001 Z12.0 F5000.0                ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X119.83000000000001 Y125.02000000000001 Z22.0 F5000.0                ;Raise back up Resin extruder at pos
;Pick up 93
G0 X39.5 Y89.3 Z22.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 93
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z47.0 F5000.0                                     ;Move up
;Move to place location 93
G0 X122.41 Y129.5 Z22.0 F5000.0                 ;Move Resin extruder to pos
G0 X122.41 Y129.5 Z12.0 F5000.0                 ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X122.41 Y129.5 Z22.0 F5000.0         ;Raise back up Resin extruder at pos
;Pick up 94
G0 X49.5 Y89.3 Z22.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 94
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z47.0 F5000.0                                     ;Move up
;Move to place location 94
G0 X127.59 Y129.5 Z22.0 F5000.0                 ;Move Resin extruder to pos
G0 X127.59 Y129.5 Z12.0 F5000.0                 ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X127.59 Y129.5 Z22.0 F5000.0         ;Raise back up Resin extruder at pos
;Pick up 95
G0 X59.5 Y89.3 Z25.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 95
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z50.0 F5000.0                                     ;Move up
;Move to place location 95
G0 X125.02000000000001 Y125.02000000000001 Z25.0 F5000.0                ;Move Resin extruder to pos
G0 X125.02000000000001 Y125.02000000000001 Z15.0 F5000.0                ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X125.02000000000001 Y125.02000000000001 Z25.0 F5000.0                ;Raise back up Resin extruder at pos
;Pick up 96
G0 X69.5 Y89.3 Z25.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 96
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z50.0 F5000.0                                     ;Move up
;Move to place location 96
G0 X128.65 Y121.35 Z25.0 F5000.0                ;Move Resin extruder to pos
G0 X128.65 Y121.35 Z15.0 F5000.0                ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X128.65 Y121.35 Z25.0 F5000.0                ;Raise back up Resin extruder at pos
;Pick up 97
G0 X-0.5 Y99.3 Z25.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 97
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z50.0 F5000.0                                     ;Move up
;Move to place location 97
G0 X132.32 Y117.68 Z25.0 F5000.0                ;Move Resin extruder to pos
G0 X132.32 Y117.68 Z15.0 F5000.0                ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X132.32 Y117.68 Z25.0 F5000.0                ;Raise back up Resin extruder at pos
;Pick up 98
G0 X9.5 Y99.3 Z25.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 98
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z50.0 F5000.0                                     ;Move up
;Move to place location 98
G0 X127.69999999999999 Y115.0 Z25.0 F5000.0             ;Move Resin extruder to pos
G0 X127.69999999999999 Y115.0 Z15.0 F5000.0             ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X127.69999999999999 Y115.0 Z25.0 F5000.0             ;Raise back up Resin extruder at pos
;Pick up 99
G0 X19.5 Y99.3 Z25.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 99
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z50.0 F5000.0                                     ;Move up
;Move to place location 99
G0 X122.33000000000001 Y115.0 Z25.0 F5000.0             ;Move Resin extruder to pos
G0 X122.33000000000001 Y115.0 Z15.0 F5000.0             ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X122.33000000000001 Y115.0 Z25.0 F5000.0             ;Raise back up Resin extruder at pos
;Pick up 100
G0 X29.5 Y99.3 Z25.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 100
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z50.0 F5000.0                                     ;Move up
;Move to place location 100
G0 X117.68 Y117.68 Z25.0 F5000.0                ;Move Resin extruder to pos
G0 X117.68 Y117.68 Z15.0 F5000.0                ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X117.68 Y117.68 Z25.0 F5000.0                ;Raise back up Resin extruder at pos
;Pick up 101
G0 X39.5 Y99.3 Z25.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 101
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z50.0 F5000.0                                     ;Move up
;Move to place location 101
G0 X115.0 Y122.33000000000001 Z25.0 F5000.0             ;Move Resin extruder to pos
G0 X115.0 Y122.33000000000001 Z15.0 F5000.0             ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X115.0 Y122.33000000000001 Z25.0 F5000.0             ;Raise back up Resin extruder at pos
;Pick up 102
G0 X49.5 Y99.3 Z25.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 102
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z50.0 F5000.0                                     ;Move up
;Move to place location 102
G0 X115.0 Y127.69999999999999 Z25.0 F5000.0             ;Move Resin extruder to pos
G0 X115.0 Y127.69999999999999 Z15.0 F5000.0             ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X115.0 Y127.69999999999999 Z25.0 F5000.0             ;Raise back up Resin extruder at pos
;Pick up 103
G0 X59.5 Y99.3 Z25.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 103
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z50.0 F5000.0                                     ;Move up
;Move to place location 103
G0 X117.68 Y132.32 Z25.0 F5000.0                ;Move Resin extruder to pos
G0 X117.68 Y132.32 Z15.0 F5000.0                ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X117.68 Y132.32 Z25.0 F5000.0                ;Raise back up Resin extruder at pos
;Pick up 104
G0 X69.5 Y99.3 Z25.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 104
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z50.0 F5000.0                                     ;Move up
;Move to place location 104
G0 X122.33000000000001 Y135.0 Z25.0 F5000.0             ;Move Resin extruder to pos
G0 X122.33000000000001 Y135.0 Z15.0 F5000.0             ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X122.33000000000001 Y135.0 Z25.0 F5000.0             ;Raise back up Resin extruder at pos
;Pick up 105
G0 X-0.5 Y109.3 Z25.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 105
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z50.0 F5000.0                                     ;Move up
;Move to place location 105
G0 X127.69999999999999 Y135.0 Z25.0 F5000.0             ;Move Resin extruder to pos
G0 X127.69999999999999 Y135.0 Z15.0 F5000.0             ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X127.69999999999999 Y135.0 Z25.0 F5000.0             ;Raise back up Resin extruder at pos
;Pick up 106
G0 X9.5 Y109.3 Z25.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 106
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z50.0 F5000.0                                     ;Move up
;Move to place location 106
G0 X132.32 Y132.32 Z25.0 F5000.0                ;Move Resin extruder to pos
G0 X132.32 Y132.32 Z15.0 F5000.0                ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X132.32 Y132.32 Z25.0 F5000.0                ;Raise back up Resin extruder at pos
;Pick up 107
G0 X19.5 Y109.3 Z25.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 107
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z50.0 F5000.0                                     ;Move up
;Move to place location 107
G0 X135.0 Y127.69999999999999 Z25.0 F5000.0             ;Move Resin extruder to pos
G0 X135.0 Y127.69999999999999 Z15.0 F5000.0             ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X135.0 Y127.69999999999999 Z25.0 F5000.0             ;Raise back up Resin extruder at pos
;Pick up 108
G0 X29.5 Y109.3 Z25.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 108
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z50.0 F5000.0                                     ;Move up
;Move to place location 108
G0 X135.0 Y122.33000000000001 Z25.0 F5000.0             ;Move Resin extruder to pos
G0 X135.0 Y122.33000000000001 Z15.0 F5000.0             ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X135.0 Y122.33000000000001 Z25.0 F5000.0             ;Raise back up Resin extruder at pos
;Pick up 109
G0 X39.5 Y109.3 Z25.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 109
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z50.0 F5000.0                                     ;Move up
;Move to place location 109
G0 X123.68 Y120.00999999999999 Z25.0 F5000.0            ;Move Resin extruder to pos
G0 X123.68 Y120.00999999999999 Z15.0 F5000.0            ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X123.68 Y120.00999999999999 Z25.0 F5000.0            ;Raise back up Resin extruder at pos
;Pick up 110
G0 X49.5 Y109.3 Z25.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 110
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z50.0 F5000.0                                     ;Move up
;Move to place location 110
G0 X120.00999999999999 Y123.68 Z25.0 F5000.0            ;Move Resin extruder to pos
G0 X120.00999999999999 Y123.68 Z15.0 F5000.0            ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X120.00999999999999 Y123.68 Z25.0 F5000.0            ;Raise back up Resin extruder at pos
;Pick up 111
G0 X59.5 Y109.3 Z25.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 111
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z50.0 F5000.0                                     ;Move up
;Move to place location 111
G0 X121.35 Y128.65 Z25.0 F5000.0                ;Move Resin extruder to pos
G0 X121.35 Y128.65 Z15.0 F5000.0                ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X121.35 Y128.65 Z25.0 F5000.0                ;Raise back up Resin extruder at pos
;Pick up 112
G0 X69.5 Y109.3 Z25.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 112
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z50.0 F5000.0                                     ;Move up
;Move to place location 112
G0 X126.36000000000001 Y129.99 Z25.0 F5000.0            ;Move Resin extruder to pos
G0 X126.36000000000001 Y129.99 Z15.0 F5000.0            ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X126.36000000000001 Y129.99 Z25.0 F5000.0            ;Raise back up Resin extruder at pos
;Pick up 113
G0 X-0.5 Y119.3 Z25.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 113
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z50.0 F5000.0                                     ;Move up
;Move to place location 113
G0 X129.99 Y126.36000000000001 Z25.0 F5000.0            ;Move Resin extruder to pos
G0 X129.99 Y126.36000000000001 Z15.0 F5000.0            ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X129.99 Y126.36000000000001 Z25.0 F5000.0            ;Raise back up Resin extruder at pos
;Pick up 114
G0 X9.5 Y119.3 Z28.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 114
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z53.0 F5000.0                                     ;Move up
;Move to place location 114
G0 X125.02000000000001 Y125.02000000000001 Z28.0 F5000.0                ;Move Resin extruder to pos
G0 X125.02000000000001 Y125.02000000000001 Z18.0 F5000.0                ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X125.02000000000001 Y125.02000000000001 Z28.0 F5000.0                ;Raise back up Resin extruder at pos
;Pick up 115
G0 X19.5 Y119.3 Z28.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 115
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z53.0 F5000.0                                     ;Move up
;Move to place location 115
G0 X130.17 Y125.02000000000001 Z28.0 F5000.0            ;Move Resin extruder to pos
G0 X130.17 Y125.02000000000001 Z18.0 F5000.0            ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X130.17 Y125.02000000000001 Z28.0 F5000.0            ;Raise back up Resin extruder at pos
;Pick up 116
G0 X29.5 Y119.3 Z28.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 116
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z53.0 F5000.0                                     ;Move up
;Move to place location 116
G0 X135.35 Y125.02000000000001 Z28.0 F5000.0            ;Move Resin extruder to pos
G0 X135.35 Y125.02000000000001 Z18.0 F5000.0            ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X135.35 Y125.02000000000001 Z28.0 F5000.0            ;Raise back up Resin extruder at pos
;Pick up 117
G0 X39.5 Y119.3 Z28.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 117
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z53.0 F5000.0                                     ;Move up
;Move to place location 117
G0 X133.98 Y119.83000000000001 Z28.0 F5000.0            ;Move Resin extruder to pos
G0 X133.98 Y119.83000000000001 Z18.0 F5000.0            ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X133.98 Y119.83000000000001 Z28.0 F5000.0            ;Raise back up Resin extruder at pos
;Pick up 118
G0 X49.5 Y119.3 Z28.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 118
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z53.0 F5000.0                                     ;Move up
;Move to place location 118
G0 X130.17 Y116.02000000000001 Z28.0 F5000.0            ;Move Resin extruder to pos
G0 X130.17 Y116.02000000000001 Z18.0 F5000.0            ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X130.17 Y116.02000000000001 Z28.0 F5000.0            ;Raise back up Resin extruder at pos
;Pick up 119
G0 X59.5 Y119.3 Z28.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 119
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z53.0 F5000.0                                     ;Move up
;Move to place location 119
G0 X125.02000000000001 Y114.63999999999999 Z28.0 F5000.0                ;Move Resin extruder to pos
G0 X125.02000000000001 Y114.63999999999999 Z18.0 F5000.0                ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X125.02000000000001 Y114.63999999999999 Z28.0 F5000.0                ;Raise back up Resin extruder at pos
;Pick up 120
G0 X69.5 Y119.3 Z28.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 120
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z53.0 F5000.0                                     ;Move up
;Move to place location 120
G0 X119.83000000000001 Y116.02000000000001 Z28.0 F5000.0                ;Move Resin extruder to pos
G0 X119.83000000000001 Y116.02000000000001 Z18.0 F5000.0                ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X119.83000000000001 Y116.02000000000001 Z28.0 F5000.0                ;Raise back up Resin extruder at pos
;Pick up 121
G0 X-0.5 Y129.3 Z28.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 121
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z53.0 F5000.0                                     ;Move up
;Move to place location 121
G0 X116.02000000000001 Y119.83000000000001 Z28.0 F5000.0                ;Move Resin extruder to pos
G0 X116.02000000000001 Y119.83000000000001 Z18.0 F5000.0                ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X116.02000000000001 Y119.83000000000001 Z28.0 F5000.0                ;Raise back up Resin extruder at pos
;Pick up 122
G0 X9.5 Y129.3 Z28.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 122
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z53.0 F5000.0                                     ;Move up
;Move to place location 122
G0 X114.63999999999999 Y125.02000000000001 Z28.0 F5000.0                ;Move Resin extruder to pos
G0 X114.63999999999999 Y125.02000000000001 Z18.0 F5000.0                ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X114.63999999999999 Y125.02000000000001 Z28.0 F5000.0                ;Raise back up Resin extruder at pos
;Pick up 123
G0 X19.5 Y129.3 Z28.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 123
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z53.0 F5000.0                                     ;Move up
;Move to place location 123
G0 X116.02000000000001 Y130.17 Z28.0 F5000.0            ;Move Resin extruder to pos
G0 X116.02000000000001 Y130.17 Z18.0 F5000.0            ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X116.02000000000001 Y130.17 Z28.0 F5000.0            ;Raise back up Resin extruder at pos
;Pick up 124
G0 X29.5 Y129.3 Z28.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 124
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z53.0 F5000.0                                     ;Move up
;Move to place location 124
G0 X119.83000000000001 Y133.98 Z28.0 F5000.0            ;Move Resin extruder to pos
G0 X119.83000000000001 Y133.98 Z18.0 F5000.0            ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X119.83000000000001 Y133.98 Z28.0 F5000.0            ;Raise back up Resin extruder at pos
;Pick up 125
G0 X39.5 Y129.3 Z28.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 125
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z53.0 F5000.0                                     ;Move up
;Move to place location 125
G0 X125.02000000000001 Y135.35 Z28.0 F5000.0            ;Move Resin extruder to pos
G0 X125.02000000000001 Y135.35 Z18.0 F5000.0            ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X125.02000000000001 Y135.35 Z28.0 F5000.0            ;Raise back up Resin extruder at pos
;Pick up 126
G0 X49.5 Y129.3 Z28.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 126
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z53.0 F5000.0                                     ;Move up
;Move to place location 126
G0 X130.17 Y133.98 Z28.0 F5000.0                ;Move Resin extruder to pos
G0 X130.17 Y133.98 Z18.0 F5000.0                ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X130.17 Y133.98 Z28.0 F5000.0                ;Raise back up Resin extruder at pos
;Pick up 127
G0 X59.5 Y129.3 Z28.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 127
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z53.0 F5000.0                                     ;Move up
;Move to place location 127
G0 X133.98 Y130.17 Z28.0 F5000.0                ;Move Resin extruder to pos
G0 X133.98 Y130.17 Z18.0 F5000.0                ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X133.98 Y130.17 Z28.0 F5000.0                ;Raise back up Resin extruder at pos
;Pick up 128
G0 X69.5 Y129.3 Z28.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 128
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z53.0 F5000.0                                     ;Move up
;Move to place location 128
G0 X127.59 Y120.5 Z28.0 F5000.0                 ;Move Resin extruder to pos
G0 X127.59 Y120.5 Z18.0 F5000.0                 ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X127.59 Y120.5 Z28.0 F5000.0         ;Raise back up Resin extruder at pos
;Pick up 129
G0 X-0.5 Y139.3 Z28.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 129
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z53.0 F5000.0                                     ;Move up
;Move to place location 129
G0 X122.41 Y120.5 Z28.0 F5000.0                 ;Move Resin extruder to pos
G0 X122.41 Y120.5 Z18.0 F5000.0                 ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X122.41 Y120.5 Z28.0 F5000.0         ;Raise back up Resin extruder at pos
;Pick up 130
G0 X9.5 Y139.3 Z28.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 130
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z53.0 F5000.0                                     ;Move up
;Move to place location 130
G0 X119.83000000000001 Y125.02000000000001 Z28.0 F5000.0                ;Move Resin extruder to pos
G0 X119.83000000000001 Y125.02000000000001 Z18.0 F5000.0                ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X119.83000000000001 Y125.02000000000001 Z28.0 F5000.0                ;Raise back up Resin extruder at pos
;Pick up 131
G0 X19.5 Y139.3 Z28.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 131
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z53.0 F5000.0                                     ;Move up
;Move to place location 131
G0 X122.41 Y129.5 Z28.0 F5000.0                 ;Move Resin extruder to pos
G0 X122.41 Y129.5 Z18.0 F5000.0                 ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X122.41 Y129.5 Z28.0 F5000.0         ;Raise back up Resin extruder at pos
;Pick up 132
G0 X29.5 Y139.3 Z28.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 132
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z53.0 F5000.0                                     ;Move up
;Move to place location 132
G0 X127.59 Y129.5 Z28.0 F5000.0                 ;Move Resin extruder to pos
G0 X127.59 Y129.5 Z18.0 F5000.0                 ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X127.59 Y129.5 Z28.0 F5000.0         ;Raise back up Resin extruder at pos
;Pick up 133
G0 X39.5 Y139.3 Z31.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 133
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z56.0 F5000.0                                     ;Move up
;Move to place location 133
G0 X125.02000000000001 Y125.02000000000001 Z31.0 F5000.0                ;Move Resin extruder to pos
G0 X125.02000000000001 Y125.02000000000001 Z21.0 F5000.0                ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X125.02000000000001 Y125.02000000000001 Z31.0 F5000.0                ;Raise back up Resin extruder at pos
;Pick up 134
G0 X49.5 Y139.3 Z31.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 134
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z56.0 F5000.0                                     ;Move up
;Move to place location 134
G0 X128.65 Y121.35 Z31.0 F5000.0                ;Move Resin extruder to pos
G0 X128.65 Y121.35 Z21.0 F5000.0                ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X128.65 Y121.35 Z31.0 F5000.0                ;Raise back up Resin extruder at pos
;Pick up 135
G0 X59.5 Y139.3 Z31.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 135
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z56.0 F5000.0                                     ;Move up
;Move to place location 135
G0 X132.32 Y117.68 Z31.0 F5000.0                ;Move Resin extruder to pos
G0 X132.32 Y117.68 Z21.0 F5000.0                ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X132.32 Y117.68 Z31.0 F5000.0                ;Raise back up Resin extruder at pos
;Pick up 136
G0 X69.5 Y139.3 Z31.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 136
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z56.0 F5000.0                                     ;Move up
;Move to place location 136
G0 X127.69999999999999 Y115.0 Z31.0 F5000.0             ;Move Resin extruder to pos
G0 X127.69999999999999 Y115.0 Z21.0 F5000.0             ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X127.69999999999999 Y115.0 Z31.0 F5000.0             ;Raise back up Resin extruder at pos
;Pick up 137
G0 X-0.5 Y149.3 Z31.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 137
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z56.0 F5000.0                                     ;Move up
;Move to place location 137
G0 X122.33000000000001 Y115.0 Z31.0 F5000.0             ;Move Resin extruder to pos
G0 X122.33000000000001 Y115.0 Z21.0 F5000.0             ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X122.33000000000001 Y115.0 Z31.0 F5000.0             ;Raise back up Resin extruder at pos
;Pick up 138
G0 X9.5 Y149.3 Z31.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 138
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z56.0 F5000.0                                     ;Move up
;Move to place location 138
G0 X117.68 Y117.68 Z31.0 F5000.0                ;Move Resin extruder to pos
G0 X117.68 Y117.68 Z21.0 F5000.0                ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X117.68 Y117.68 Z31.0 F5000.0                ;Raise back up Resin extruder at pos
;Pick up 139
G0 X19.5 Y149.3 Z31.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 139
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z56.0 F5000.0                                     ;Move up
;Move to place location 139
G0 X115.0 Y122.33000000000001 Z31.0 F5000.0             ;Move Resin extruder to pos
G0 X115.0 Y122.33000000000001 Z21.0 F5000.0             ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X115.0 Y122.33000000000001 Z31.0 F5000.0             ;Raise back up Resin extruder at pos
;Pick up 140
G0 X29.5 Y149.3 Z31.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 140
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z56.0 F5000.0                                     ;Move up
;Move to place location 140
G0 X115.0 Y127.69999999999999 Z31.0 F5000.0             ;Move Resin extruder to pos
G0 X115.0 Y127.69999999999999 Z21.0 F5000.0             ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X115.0 Y127.69999999999999 Z31.0 F5000.0             ;Raise back up Resin extruder at pos
;Pick up 141
G0 X39.5 Y149.3 Z31.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 141
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z56.0 F5000.0                                     ;Move up
;Move to place location 141
G0 X117.68 Y132.32 Z31.0 F5000.0                ;Move Resin extruder to pos
G0 X117.68 Y132.32 Z21.0 F5000.0                ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X117.68 Y132.32 Z31.0 F5000.0                ;Raise back up Resin extruder at pos
;Pick up 142
G0 X49.5 Y149.3 Z31.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 142
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z56.0 F5000.0                                     ;Move up
;Move to place location 142
G0 X122.33000000000001 Y135.0 Z31.0 F5000.0             ;Move Resin extruder to pos
G0 X122.33000000000001 Y135.0 Z21.0 F5000.0             ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X122.33000000000001 Y135.0 Z31.0 F5000.0             ;Raise back up Resin extruder at pos
;Pick up 143
G0 X59.5 Y149.3 Z31.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 143
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z56.0 F5000.0                                     ;Move up
;Move to place location 143
G0 X127.69999999999999 Y135.0 Z31.0 F5000.0             ;Move Resin extruder to pos
G0 X127.69999999999999 Y135.0 Z21.0 F5000.0             ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X127.69999999999999 Y135.0 Z31.0 F5000.0             ;Raise back up Resin extruder at pos
;Pick up 144
G0 X69.5 Y149.3 Z31.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 144
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z56.0 F5000.0                                     ;Move up
;Move to place location 144
G0 X132.32 Y132.32 Z31.0 F5000.0                ;Move Resin extruder to pos
G0 X132.32 Y132.32 Z21.0 F5000.0                ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X132.32 Y132.32 Z31.0 F5000.0                ;Raise back up Resin extruder at pos
;Pick up 145
G0 X-0.5 Y159.3 Z31.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 145
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z56.0 F5000.0                                     ;Move up
;Move to place location 145
G0 X135.0 Y127.69999999999999 Z31.0 F5000.0             ;Move Resin extruder to pos
G0 X135.0 Y127.69999999999999 Z21.0 F5000.0             ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X135.0 Y127.69999999999999 Z31.0 F5000.0             ;Raise back up Resin extruder at pos
;Pick up 146
G0 X9.5 Y159.3 Z31.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 146
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z56.0 F5000.0                                     ;Move up
;Move to place location 146
G0 X135.0 Y122.33000000000001 Z31.0 F5000.0             ;Move Resin extruder to pos
G0 X135.0 Y122.33000000000001 Z21.0 F5000.0             ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X135.0 Y122.33000000000001 Z31.0 F5000.0             ;Raise back up Resin extruder at pos
;Pick up 147
G0 X19.5 Y159.3 Z31.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 147
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z56.0 F5000.0                                     ;Move up
;Move to place location 147
G0 X123.68 Y120.00999999999999 Z31.0 F5000.0            ;Move Resin extruder to pos
G0 X123.68 Y120.00999999999999 Z21.0 F5000.0            ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X123.68 Y120.00999999999999 Z31.0 F5000.0            ;Raise back up Resin extruder at pos
;Pick up 148
G0 X29.5 Y159.3 Z31.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 148
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z56.0 F5000.0                                     ;Move up
;Move to place location 148
G0 X120.00999999999999 Y123.68 Z31.0 F5000.0            ;Move Resin extruder to pos
G0 X120.00999999999999 Y123.68 Z21.0 F5000.0            ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X120.00999999999999 Y123.68 Z31.0 F5000.0            ;Raise back up Resin extruder at pos
;Pick up 149
G0 X39.5 Y159.3 Z31.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 149
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z56.0 F5000.0                                     ;Move up
;Move to place location 149
G0 X121.35 Y128.65 Z31.0 F5000.0                ;Move Resin extruder to pos
G0 X121.35 Y128.65 Z21.0 F5000.0                ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X121.35 Y128.65 Z31.0 F5000.0                ;Raise back up Resin extruder at pos
;Pick up 150
G0 X49.5 Y159.3 Z31.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 150
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z56.0 F5000.0                                     ;Move up
;Move to place location 150
G0 X126.36000000000001 Y129.99 Z31.0 F5000.0            ;Move Resin extruder to pos
G0 X126.36000000000001 Y129.99 Z21.0 F5000.0            ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X126.36000000000001 Y129.99 Z31.0 F5000.0            ;Raise back up Resin extruder at pos
;Pick up 151
G0 X59.5 Y159.3 Z31.0 F5000.0       ;Move Resin extruder to pick up place
M106                                                       ;Turn vacuum on
G0 Z6 F5000.0                                              ;Move z axis down to pick up puck
G0 Z30 F5000.0                                             ;Move z axis back up
;Dip in resin 151
G0 X150 Y0 Z35 F5000.0                                     ;Move to pos
G0 X150 Y0 Z10 F5000.0                                      ;Move down
G0 X150 Y0 Z56.0 F5000.0                                     ;Move up
;Move to place location 151
G0 X129.99 Y126.36000000000001 Z31.0 F5000.0            ;Move Resin extruder to pos
G0 X129.99 Y126.36000000000001 Z21.0 F5000.0            ;Lower Resin extruder at pos
M107                                                                        ;Turn vacuum off
G0 X129.99 Y126.36000000000001 Z31.0 F5000.0            ;Raise back up Resin extruder at pos
; Back to home 
G28