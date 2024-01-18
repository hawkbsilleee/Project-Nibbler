from gcodeGenerator import condense_pick_map, setup, one_pick_up, generate_pick_location, resin_dip, place_puck 

import pandas as pd

df = pd.read_csv("3_layer_tower copy.csv")
# build PnP print path
setup()
i = 0 
pick_map = [ 
            [                                                                                                [80.1, 10], [90.1, 10], [100.1, 10], [110.1, 10]], 
            [                                                                                                [80.1, 20], [90.1, 20], [100.1, 20], [110.1, 20]], 
            [                                                                                                [80.1, 30], [90.1, 30], [100.1, 30], [110.1, 30]], 
            [[0.1, 40], [10.1, 40], [20.1, 40], [30.1, 40], [40.1, 40], [50.1, 40], [60.1, 40], [70.1, 40], [80.1, 40], [90.1, 40], [100.1, 40], [110.1, 40]], 
            [[0.1, 50], [10.1, 50], [20.1, 50], [30.1, 50], [40.1, 50], [50.1, 50], [60.1, 50], [70.1, 50], [80.1, 50], [90.1, 50], [100.1, 50], [110.1, 50]], 
            [[0.1, 60], [10.1, 60], [20.1, 60], [30.1, 60], [40.1, 60], [50.1, 60], [60.1, 60], [70.1, 60], [80.1, 60], [90.1, 60], [100.1, 60], [110.1, 60]], 
            [[0.1, 70], [10.1, 70], [20.1, 70], [30.1, 70], [40.1, 70], [50.1, 70], [60.1, 70], [70.1, 70], [80.1, 70], [90.1, 70], [100.1, 70], [110.1, 70]]]
condensed_pick_map = condense_pick_map(pick_map)
for index, row in df.iterrows():
    x_coord = row["X"]-50
    y_coord = row["Y"]-50
    layer = row["LAYER"]
    one_pick_up(generate_pick_location(i,condensed_pick_map), i)
    # resin_dip(i)
    place_puck((x_coord, y_coord), layer, i)
    i+= 1
    
print("; Back to home ")
print("G28")