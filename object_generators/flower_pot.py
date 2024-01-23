from main import condense_pick_map, setup, one_pick_up, generate_pick_location, resin_dip, place_puck, generate_custom_pick_map, end 
import pandas as pd

filename = 'flower_pot.gcode'
f = open('gcode_files/'+filename, 'a')
df = pd.read_csv("Flower_Pot_Coordinates_v2 (1).csv")

# build PnP print path
setup()

condensed_pick_map = condense_pick_map(generate_custom_pick_map())

i = 0 
for index, row in df.iterrows():
    # if i < 163:
    x_coord = row["X"]-50
    y_coord = row["Y"]-50
    layer = row["LAYER"]
    f.write(one_pick_up(generate_pick_location(i,condensed_pick_map), i, layer))
    f.write(resin_dip(i, layer))
    f.write(place_puck((x_coord, y_coord), layer, i))
    i+= 1
    
f.write(end())

