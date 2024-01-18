import pandas as pd 
import math
import numpy as np

def setup():
    print(";Machine Setup")
    print("M201 X500.00 Y500.00 Z100.00 E5000.00    ;Setup machine max acceleration")
    print("M203 X500.00 Y500.00 Z10.00 		;Setup machine max feedrate")
    print(";(E feedrate limit set in firmware)")
    print("M204 P500.00 R1000.00 T500.00          ;Setup Print/Retract/Travel acceleration")
    print("M205 X8.00 Y8.00 Z0.40 E5.00             ;Setup Jerk")
    print("M220 S100                                ;Reset Feedrate")
    print("M221 S100                                ;Reset Flowrate")
    print("G90					;Absolute positioning mode")
    print("M302 S0        ;Cold Extrude (set min extrude temp to 0) always allow extrusion")
    print("M83            ;Relative extrusion mode")
    print("G92 E0         ;Reset Extruder sets Extruder to 0")
    print(";Homing and default stuff ")
    print("G28            				;Home")
    print("G0 Z8.0 F3000  				;Move Z Axis up")
    print(";starts the extruder a little higher to prevent dragging nibble clumps")

def resin_dip(i, layer):
    """Dip puck in resin holder. Num_rep represents the nth resin dip."""
    print(f";Dip in resin {i}")
    print(f"G0 X150 Y0 Z35 F5000.0                                     ;Move to pos")
    print(f"G0 X150 Y0 Z10 F5000.0                                      ;Move down")
    print(f"G0 X150 Y0 Z{(3*layer-3)+35} F5000.0                                     ;Move up")

def one_pick_up(index_coords, i, layer):
    """Pick up a puck from index_coords (x,y). Num_rep represents the nth pickup."""
    print(f";Pick up {i}")
    print(f"G0 X{index_coords[0]} Y{index_coords[1]} Z{(3*layer-3)+10} F5000.0       ;Move Resin extruder to pick up place")
    print(f"M106                                                       ;Turn vacuum on")
    print(f"G0 Z6 F5000.0                                              ;Move z axis down to pick up puck")
    print(f"G0 Z30 F5000.0                                             ;Move z axis back up")

def generate_pick_map(x,y):
    pick_map = []
    for row in range(y):
        pick_map_list = [[(col*10),row*10] for col in range(x)]
        pick_map.append(pick_map_list)
    return pick_map

# def generate_pick_location(i, pick_map):
#     """Based on the nth rep figure out which location to pickup from. Outputs a tuple of the coordinates 
#     for pickup. """
#     num_rows = len(pick_map[0])
#     col = i%num_rows
#     row = i//num_rows
#     # print(col, row)
#     coord = pick_map[row][col]
#     # print(coord)
#     x_coord = coord[0]
#     y_coord = coord[1]
#     return (row, col)
#     # return (x_coord, y_coord-0.5)

def condense_pick_map(pick_map):
    condensed_pick_map = []
    for row in pick_map:
        for col in row:
            condensed_pick_map.append(col)
    return condensed_pick_map

def generate_pick_location(i, condensed_pick_map):
    """Based on the nth rep figure out which location to pickup from. Outputs a tuple of the coordinates 
    for pickup. """
    x_coord = condensed_pick_map[i][0]
    y_coord = condensed_pick_map[i][1]
    return (x_coord-0.5, y_coord-0.7)

def place_puck(place_coords, layer, i):
    """Place puck based on place coords. Place_coords is a tuple (x,y), layer is A or B, num_rep is the nth place."""
    if layer == "B":
        print(f";Move to place location {i}")
        print(f"G0 X{place_coords[0]} Y{place_coords[1]} Z10 F5000.0 		;Move Resin extruder to pos")
        print(f"G0 X{place_coords[0]} Y{place_coords[1]} Z0 F5000.0 		;Lower Resin extruder at pos") 
        print(f"M107					                                    ;Turn vacuum off")
        print(f"G0 X{place_coords[0]} Y{place_coords[1]} Z10 F5000.0		;Raise back up Resin extruder at pos")
    elif layer == "C":
        print(f";Move to place location {i}")
        print(f"G0 X{place_coords[0]} Y{place_coords[1]} Z15 F5000.0 		;Move Resin extruder to pos")
        print(f"G0 X{place_coords[0]} Y{place_coords[1]} Z5 F5000.0 		;Lower Resin extruder at pos") 
        print(f"M107					                                    ;Turn vacuum off")
        print(f"G0 X{place_coords[0]} Y{place_coords[1]} Z15 F5000.0		;Raise back up Resin extruder at pos")
    elif layer == "A":
        print(f";Move to place location {i}")
        print(f"G0 X{place_coords[0]} Y{place_coords[1]} Z15 F5000.0 		;Move Resin extruder to pos")
        print(f"G0 X{place_coords[0]} Y{place_coords[1]} Z8 F5000.0 		;Lower Resin extruder at pos") 
        print(f"M107					                                    ;Turn vacuum off")
        print(f"G0 X{place_coords[0]} Y{place_coords[1]} Z15 F5000.0		;Raise back up Resin extruder at pos")
    else:
        print(f";Move to place location {i}")
        print(f"G0 X{place_coords[0]} Y{place_coords[1]} Z{(3*layer-3)+10} F5000.0 		;Move Resin extruder to pos")
        print(f"G0 X{place_coords[0]} Y{place_coords[1]} Z{3*layer-3} F5000.0 		;Lower Resin extruder at pos") 
        print(f"M107					                                    ;Turn vacuum off")
        print(f"G0 X{place_coords[0]} Y{place_coords[1]} Z{(3*layer-3)+10} F5000.0		;Raise back up Resin extruder at pos")

if __name__ == "__main__":

    df = pd.read_csv("Tower.csv")
    # build PnP print path
    setup()
    i = 0 
    pick_map = [ 
                [[10.1, 10], [20.1, 10], [30.1, 10], [40.1, 10], [50.1, 10], [60.1, 10], [80.1, 10], [90.1, 10], [100.1, 10], [110.1, 10]], 
                [[10.1, 20], [20.1, 20], [30.1, 20], [40.1, 20], [50.1, 20], [60.1, 20], [80.1, 20], [90.1, 20], [100.1, 20], [110.1, 20]], 
                [[10.1, 30], [20.1, 30], [30.1, 30], [40.1, 30], [50.1, 30], [80.1, 30], [90.1, 30], [100.1, 30], [110.1, 30]], 
                [[0.1, 40], [10.1, 40], [20.1, 40], [30.1, 40], [40.1, 40], [50.1, 40], [60.1, 40], [70.1, 40], [80.1, 40], [90.1, 40], [100.1, 40], [110.1, 40]], 
                [[0.1, 50], [10.1, 50], [20.1, 50], [30.1, 50], [40.1, 50], [50.1, 50], [60.1, 50], [70.1, 50], [80.1, 50], [90.1, 50], [100.1, 50], [110.1, 50]], 
                [[0.1, 60], [10.1, 60], [20.1, 60], [30.1, 60], [40.1, 60], [50.1, 60], [60.1, 60], [70.1, 60], [80.1, 60], [90.1, 60], [100.1, 60], [110.1, 60]], 
                [[0.1, 70], [10.1, 70], [20.1, 70], [30.1, 70], [40.1, 70], [50.1, 70], [60.1, 70], [70.1, 70], [80.1, 70], [90.1, 70], [100.1, 70], [110.1, 70]]]
    condensed_pick_map = condense_pick_map(pick_map)
    for index, row in df.iterrows():
        x_coord = row["X"]-50
        y_coord = row["Y"]-50
        layer = row["LAYER"]
        one_pick_up(generate_pick_location(i,condensed_pick_map), i, layer)
        resin_dip(i, layer)
        place_puck((x_coord, y_coord), layer, i)
        i+= 1
        
    print("; Back to home ")
    print("G28")
    
    
    
