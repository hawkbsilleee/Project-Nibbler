from main import puck_refill, condense_pick_map, setup, one_pick_up, generate_pick_location, resin_dip, place_puck, generate_custom_pick_map, end 
import pandas as pd

OFFSET = 0

filename = 'Large_Flower_Pot.gcode'
f = open('gcode_files/'+filename, 'a')
df = pd.read_csv("csv/Double Wall Flowerpot-Print Ready.csv")

# build PnP print path
f.write(setup())

i = 0 
for index, row in df.iterrows():
    x_coord = row["X"]-OFFSET
    y_coord = row["Y"]-OFFSET
    layer = row["LAYER"]
    f.write(one_pick_up(i))
    f.write(puck_refill(i))
    f.write(resin_dip(i, layer))
    f.write(place_puck((x_coord, y_coord), layer, i))
    i+= 1
    
f.write(end())

