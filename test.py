from main import modeBRR, recycle, condense_pick_map, setup, one_pick_up, generate_pick_location, resin_dip, place_puck, generate_custom_pick_map, end, puck_refill 
import pandas as pd

# f = open('gcode_files/test.gcode', 'a')
# df = pd.read_csv("csv/tower.csv")

# # build PnP print path
# f.write(setup())

# i = 0 
# # condensed_pick_map = condense_pick_map(generate_custom_pick_map())
# for index, row in df.iterrows():
#     x_coord = row["X"]-100
#     y_coord = row["Y"]-100
#     layer = row["LAYER"]
#     f.write(one_pick_up(i))
#     f.write(puck_refill(i))
#     # f.write(resin_dip(i, layer))
#     f.write(place_puck((x_coord, y_coord), layer, i))
#     i+= 1
    
# f.write(end())

f = open('gcode_files/test.gcode', 'a')
f.write(setup())
for i in range(6300):
    f.write(modeBRR(i))
f.write(end()) 



    