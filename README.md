# Project-Nibbler
Slicer for Project Nibbler pick and place machine

## Directories
csv/... -> .csv files that contain coords (x,y) for placement points; essentially outlines the printing path 

svg/... -> Adobe Illustrator files that can be used to design place placement locations

gcode_files/... -> contains executable .gcode files for the Nibbler pick and place machine

object_generators/... -> contains Python files that generate gcode from .csvs

pre_code/... -> long gcode commands contained in .txt files 

## Main Files
main.py -> python file containing functions for different printer commands (e.g. place puck, dip in resin, pick up puck)

file_parser.py -> python file that reads svg files and converts them to csvs  


