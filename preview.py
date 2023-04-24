 
from os import listdir
from PIL import Image, ImageDraw
import numpy as np

directory = '/home/warze/GitHub/CodaFlavors'
custom_directory = input(f'Enter directory of your GitHub (Leave empty to default to {directory})')
if custom_directory != '':
    directory = custom_directory

path = directory + '/preview_scr/'
exitpath = directory + '/previews/'
achpath = directory + '/sprites/Achievements/'

to_remove = ['#0d1117','#070a0d','#040507']
for f in listdir(path):
    if not f.startswith('000'):
        img = Image.open(path + f).convert("RGBA")
        width = img.size[0] 
        height = img.size[1]
        min_x = 999
        max_x = -1
        min_y = 999
        max_y = -1
        for x in range(0, width):
            for y in range(0, height):
                data = img.getpixel((x, y))
                hexcode = '#%02x%02x%02x' % (data[0], data[1], data[2])
                if hexcode in to_remove:
                    img.putpixel((x, y), (255, 255, 255, 0))
                else:
                    if x < min_x:
                        min_x = x
                    if y < min_y:
                        min_y = y
                    if x > max_x:
                        max_x = x
                    if y > max_y:
                        max_y = y
        
        cropped_img = img.crop((min_x, min_y, max_x, max_y))
        final_img = Image.new('RGBA', (180, 180), (0, 0, 0, 0))
        final_img.paste(cropped_img, (90 - round(cropped_img.size[0] / 2), round(90 - cropped_img.size[1] / 2)))

        final_img.save(exitpath + f)