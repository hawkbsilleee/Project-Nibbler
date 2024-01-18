from gcodeGenerator import generate_pick_map, condense_pick_map, setup, one_pick_up, generate_pick_location, resin_dip, place_puck 
import pandas as pd

def mod_one_pick_up(index_coords, i):
    """Pick up a puck from index_coords (x,y). Num_rep represents the nth pickup."""
    print(f";Pick up {i}")
    print(f"G0 X{index_coords[0]} Y{index_coords[1]} Z10 F5000.0       ;Move Resin extruder to pick up place")
    # print(f"M106                                                       ;Turn vacuum on")
    # print(f"G0 Z6 F5000.0                                              ;Move z axis down to pick up puck")
    # print(f"G0 Z15 F5000.0                                             ;Move z axis back up")
    # print(f"G0 Z6 F5000.0                                              ;Move z axis down to place puck")
    # print(f"M107                                                       ;Turn vacuum off")
    # print(f"G0 Z15 F5000.0                                             ;Move z axis back up")

df = pd.read_csv("Flower_Pot_Coordinates_v2 (1).csv")

# build PnP print path
setup()
i = 0 

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

condensed_pick_map = condense_pick_map(pick_map)

for i in range(177): 
    mod_one_pick_up(generate_pick_location(i,condensed_pick_map), i)
    
print("; Back to home ")
print("G28")