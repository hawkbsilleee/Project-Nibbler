from main import setup

f = open('gcode_files/myfile.gcode', 'a')
f.write(setup())
# f.write("world")
f.close()


    