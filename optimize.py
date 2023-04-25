import os
import sys
from PIL import Image, ImageDraw

if len(sys.argv) != 2:
    print("No path specified")
    exit()
directory = sys.argv[1]

# All of the Bolt likes and Bonk are ignored due to them being able to wear all armor
not_optimized = [
    "Bonk",
    "Boltar",
    "Blindolt",
    "Boltash",
    "Bombolt",
    "Colt",
    "Wizolt",
    "Soult",
    "Throlt",
    "Jumpolt",
    "Diabolt",
    "Bold",
    "Barista",
    "Usain",
    "Bush",
    "Achievements",
    "Icons"
]

for folder in os.walk(directory + '/sprites'):
    for filename in folder[2]:
        if filename.endswith('.png'):
            # Path to image
            path = f"{folder[0]}/{filename}"

            # Open the image
            with Image.open(path).convert("RGBA") as im:

                # Get all body texture
                if path.endswith('Body.png') and not any(x in path for x in not_optimized):
                    # 24 or 30 depending on Aria or Coda, idk why
                    height = int(im.size[1] / 14)

                    # Transparent rectangle used to overwrite the armor with
                    rect = Image.new("RGBA", (528, height), (255, 255, 255, 0))

                    # The armor lines we'll delete
                    deleted_lines = [1,2,3,4,6,7,8,13]

                    # Paste the rectangle on each lines
                    for line in deleted_lines:
                        im.paste(rect, (0, line * height))
                    
                    # Save the image
                    im.save(path, "PNG", optimize = True)
                    print("Done optimizing " + path.replace(directory, '~'))
