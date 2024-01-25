import pandas as pd 
import math
import numpy as np

def setup():
    filename = "pre_gcode/setup.txt"
    with open(filename) as f:
        return f.read()+"\n"
    
def end():
    return "; Back to home\nG28"

def resin_dip(i, layer):
    """Dip puck in resin holder. Num_rep represents the nth resin dip."""
    end_height = str((3*layer-3)+35)
    return ";Dip in resin " + str(i) + "\nG0 X50 Y173 Z35 F5000.0  ;Move to pos\nG0 Z10 F5000.0  ;Move down\nG0 Z"+end_height+"F5000.0   ;Move up\n"

def one_pick_up_old(index_coords, i, layer):
    """Pick up a puck from index_coords (x,y). Num_rep represents the nth pickup."""
    start_height = str((3*layer-3)+10)
    x = str(index_coords[0])
    y = str(index_coords[1])
    return ";Pick up "+str(i)+"\nG0 X"+x+" Y"+y+" Z"+start_height+" F5000.0  ;Move Resin extruder to pick up place\n"+"M106                  ;Turn vacuum on\nG0 Z6 F5000.0         ;Move z axis down to pick up puck\nG0 Z30 F5000.0        ;Move z axis back up\n"

def one_pick_up(i):
    return ";Pick up "+str(i)+"\nG0 X125 Y170 Z25 F5000\nG0 Z10 F5000\nM106\nG0 Z30 F5000\n"

def generate_pick_map(x,y):
    pick_map = []
    for row in range(y):
        pick_map_list = [[(col*10),row*10] for col in range(x)]
        pick_map.append(pick_map_list)
    return pick_map

def puck_refill(i):
    return ";Puck Refill "+str(i)+"\nG0 E-75 F10000\nG0 E10 F10000\nG0 E-75 F10000\nG0 E10 F10000\nG0 E-100 F10000\n"

def generate_custom_pick_map():
    pick_map = [
            [[10, 10], [20, 10], [30, 10], [40, 10], [50, 10], [60, 10], [70, 10], [80, 10], [90, 10], [100, 10], [110, 10]],           
            [[10, 20], [20, 20], [30, 20], [40, 20], [50, 20], [60, 20], [70, 20], [80, 20], [90, 20], [100, 20], [110, 20]],
            [[10, 30], [20, 30], [30, 30], [40, 30], [50, 30], [60, 30], [70, 30], [80, 30], [90, 30], [100, 30], [110, 30]], 
            [[0, 40], [10, 40], [20, 40], [30, 40], [40, 40], [50, 40], [60, 40], [70, 40], [80, 40], [90, 40], [100, 40], [110, 40]],
            [[0, 50], [10, 50], [20, 50], [30, 50], [40, 50], [50, 50], [60, 50], [70, 50], [80, 50], [90, 50], [100, 50], [110, 50]],
            [[0, 60], [10, 60], [20, 60], [30, 60], [40, 60], [50, 60], [60, 60], [70, 60], [80, 60], [90, 60], [100, 60], [110, 60]],
            [[0, 70], [10, 70], [20, 70], [30, 70], [40, 70], [50, 70], [60, 70], [70, 70], [80, 70], [90, 70], [100, 70], [110, 70]],
            [[0, 80], [10, 80], [20, 80], [30, 80], [40, 80], [50, 80], [60, 80], [70, 80]],    
            [[0, 90], [10, 90], [20, 90], [30, 90], [40, 90], [50, 90], [60, 90], [70, 90]],  
            [[0, 100], [10, 100], [20, 100], [30, 100], [40, 100], [50, 100], [60, 100], [70, 100]], 
            [[0, 110], [10, 110], [20, 110], [30, 110], [40, 110], [50, 110], [60, 110], [70, 110]],   
            [[0, 120], [10, 120], [20, 120], [30, 120], [40, 120], [50, 120], [60, 120], [70, 120]],  
            [[0, 130], [10, 130], [20, 130], [30, 130], [40, 130], [50, 130], [60, 130], [70, 130]],  
            [[0, 140], [10, 140], [20, 140], [30, 140], [40, 140], [50, 140], [60, 140], [70, 140]],  
            [[0, 150], [10, 150], [20, 150], [30, 150], [40, 150], [50, 150], [60, 150], [70, 150]],  
            [[0, 160], [10, 160], [20, 160], [30, 160], [40, 160], [50, 160], [60, 160], [70, 160]],  
            [[0, 170], [10, 170], [20, 170], [30, 170], [40, 170], [50, 170], [60, 170], [70, 170]],  
            [[0, 180], [10, 180], [20, 180], [30, 180], [40, 180], [50, 180], [60, 180], [70, 180]],  
            [[0, 190], [10, 190], [20, 190], [30, 190], [40, 190], [50, 190], [60, 190], [70, 190]]
            ]
    return pick_map 

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
    return (x_coord-0.6, y_coord+0.5)

def place_puck(place_coords, layer, i):
    """Place puck based on place coords. Place_coords is a tuple (x,y), layer is A or B, num_rep is the nth place."""
    x = str(place_coords[0])
    y = str(place_coords[1])
    start_end_height = str((3*layer-3)+10)
    place_height = str(3*layer-3)
    return ";Move to place location "+str(i)+"\nG0 X"+x+" Y"+y+" Z"+start_end_height+" F5000.0  ;Move Resin extruder to pos"+"\nG0 X"+x+" Y"+y+" Z"+place_height+" F5000.0   ;Lower Resin extruder at pos\nM107	              ;Turn vacuum off\nG0 X"+x+" Y"+y+" Z"+start_end_height+" F5000.0  ;Raise back up Resin extruder at pos\n"

def recycle():
    return "G0 X125 Y170 Z60 F5000\nG0 Z10 F5000\nM106\nG0 Z60 F5000\nG0 Y195\nM107\nG0 E-75 F10000\nG0 E10 F10000\nG0 E-75 F10000\nG0 E10 F10000\nG0 E-100 F10000\nG0 Y170"

if __name__ == "__main__":
    # print(setup())
    # print(resin_dip(1,1))
    # print(one_pick_up((1,1),1,1))
    print(place_puck((1,1),1,1))