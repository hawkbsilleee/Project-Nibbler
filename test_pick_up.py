from main import generate_pick_map, condense_pick_map, setup, one_pick_up, generate_pick_location, resin_dip, place_puck, generate_custom_pick_map, end
import pandas as pd

filename = 'test_pick_up.gcode'
f = open('gcode_files/'+filename, 'a')

def mod_one_pick_up(index_coords, i):
    """Pick up a puck from index_coords (x,y). Num_rep represents the nth pickup."""
    x = str(index_coords[0])
    y = str(index_coords[1])
    return "G0 X"+x+" Y"+y+" Z10 F5000.0\nG0 Z7 F5000.0\n"

# build PnP print path
f.write(setup())

condensed_pick_map = condense_pick_map(generate_custom_pick_map())

for i in range(177): 
    f.write(mod_one_pick_up(generate_pick_location(i,condensed_pick_map), i))
    
f.write(end())