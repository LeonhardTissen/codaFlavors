 
from os import walk
from PIL import Image, ImageDraw
import numpy as np

directory = '/home/warze/GitHub/CodaFlavors'
custom_directory = input(f'Enter directory of your GitHub (Leave empty to default to {directory})')
if custom_directory != '':
    directory = custom_directory

print(directory)
exit()

path = directory + '/preview_scr/'
exitpath = directory + '/sprites/Achievements/'

characters = []
bodies = {}
heads = {}

for folder in walk(directory + '/sprites'):
    for filename in folder[2]:
        path = folder[0] + '/' + filename
        if filename.endswith('Body.png'):
            charname = filename.replace('Body.png','')
            bodies[charname] = path
            characters.append(charname)
        if filename.endswith('Head.png'):
            charname = filename.replace('Head.png','')
            heads[charname] = path

# We don't care about these guys
characters.remove('Aria')
characters.remove('Bolt')
characters.remove('Coda')

for character in characters:
    img = Image.open(directory + '/sprites/Achievements/0.png')

    body = Image.open(bodies[character]).convert('RGBA')
    head = Image.open(heads[character]).convert('RGBA')
    
    if body.size[1] == 420:
        size = 31
        xoffset = 1
        yoffset = 1
    else:
        size = 23
        xoffset = 4
        yoffset = 4
    
    for x in range(0, size):
        for y in range(0, size):
            headdata = head.getpixel((x, y))
            bodydata = body.getpixel((x, y))

            if headdata[3] != 0:
                img.putpixel((x + xoffset, y + yoffset), headdata)
            elif bodydata[3] != 0:
                img.putpixel((x + xoffset, y + yoffset), bodydata)
            
    img.save(exitpath + character + '.png')
