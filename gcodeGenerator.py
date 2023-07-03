import pandas as pd 

df = pd.read_csv("flower_pot_path.csv")

# def setup():
#     print("; NIBBLER TEST FOR PNP by Ethan")
#     print(";Machine Setup")
#     print("M201 X500.00 Y500.00 Z100.00 E5000.00    	;Setup machine max acceleration")
#     print("M203 X500.00 Y500.00 Z10.00 			;Setup machine max feedrate")
#     print(";(E feedrate limit set in firmware)")
#     print("M204 P500.00 R1000.00 T500.00          		;Setup Print/Retract/Travel acceleration")
#     print("M205 X8.00 Y8.00 Z0.40 E5.00             	;Setup Jerk")

def resin_dip(num_rep):
    """Dip puck in resin holder. Num_rep represents the nth resin dip."""
    print(f";Dip in resin {num_rep}")
    print(f"G0 X150 Y0 Z20 F5000.0                                     ;Move to pos")
    print(f"G0 X150 Y0 Z6 F5000.0                                      ;Move down")
    print(f"G0 X150 Y0 Z20 F5000.0                                     ;Move up")

def one_pick_up(index_coords, num_rep):
    """Pick up a puck from index_coords (x,y). Num_rep represents the nth pickup."""
    print(f";Pick up {num_rep}")
    print(f"G0 X{index_coords[0]} Y{index_coords[1]} Z20 F5000.0       ;Move Resin extruder to pick up place")
    print(f"M106                                                       ;Turn vacuum on")
    print(f"G0 Z2 F5000.0                                              ;Move z axis down to pick up puck")
    print(f"G0 Z20 F5000.0                                             ;Move z axis back up")

def generate_pick_location(num_rep):
    """Based on the nth repition figure out which location to pickup from. Outputs a tuple of the coordinates 
    for pickup. """
    if num_rep == 0: 
        y_coord = 0
        x_coord = 10
    # If even y coord is 0
    elif num_rep % 2 == 0:
        y_coord = 0
        x_coord = 10 + (num_rep//2)*10
    # If odd y coord is 10
    else: 
        y_coord = 10
        x_coord = 10 + (num_rep//2)*10
    return (x_coord, y_coord)


def place_puck(place_coords, layer, num_rep):
    """Place puck based on place coords. Place_coords is a tuple (x,y), layer is A or B, num_rep is the nth place."""
    print(f";Move to place location {num_rep}")
    print(f"G0 X{place_coords[0]} Y{place_coords[1]} Z20 F5000.0 		;Move Resin extruder to pos")
    print(f"G0 X{place_coords[0]} Y{place_coords[1]} Z0 F5000.0 		;Lower Resin extruder at pos") 
    print(f"M107					                                    ;Turn vacuum off")
    print(f"G0 X{place_coords[0]} Y{place_coords[1]} Z20 F5000.0		;Raise back up Resin extruder at pos")
    
# build PnP print path
num_pucks = len(df.index-1)
num_rep = 0 
for index, row in df.iterrows():
    x_coord = row["X"]
    y_coord = row["Y"]
    layer = row["LAYER"]
    if layer == "A": 
        index_pickup_loc = generate_pick_location(num_rep)
        one_pick_up(index_pickup_loc, num_rep)
        resin_dip(num_rep)
        place_puck((x_coord, y_coord), layer, num_rep)
        num_rep += 1