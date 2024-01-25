import xml.etree.ElementTree as ET 
import re
import pandas as pd

def parse_and_store(xml_file):
    tree = ET.parse(xml_file) 
    root = tree.getroot()

    csv_dict = {'X': [], 'Y': [], 'LAYER': []}

    for layer in root:
        layer_identity = str(layer.attrib)
        if layer_identity != "{'type': 'text/css'}": 
            layer_num = re.findall(r'\d+', layer_identity)[0]
        for layer_class in layer:
            for circle in layer_class:
                x = float(circle.get('cx'))/2.8346
                y = float(circle.get('cy'))/2.8346
                csv_dict['LAYER'].append(layer_num)
                csv_dict['X'].append(x)
                csv_dict['Y'].append(y)

    df = pd.DataFrame(data=csv_dict)
    return df

def convert(df, destination_path):
    df.to_csv(destination_path, index=False)

# 1mm = 2.8346 pixels

if __name__ == "__main__":
    xml_file = 'svg/177 Puck Pot.svg'
    desired_csv_name = 'file1.csv'
    convert(parse_and_store(xml_file), 'csv/'+desired_csv_name)

