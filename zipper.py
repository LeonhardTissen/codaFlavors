import os
import zipfile
import json

directory = '/home/warze/.local/share/NecroDancer/mods/CodaFlavors'
custom_directory = input(f'Enter directory of your Live Mod Folder (Leave empty to default to {directory})')
if custom_directory != '':
    directory = custom_directory

version = input('Enter version: ')

# mod.json object
mod_json_obj = {
	"namespace": "CodaFlavors",
	"displayName": "Coda Flavors",
	"version": version,
	"synchronyVersion": "3.6.1",
	"description": "A whole new world of Coda with a hint of Aria and Bolt. Adds 45 new Characters with wacky gameplay twists and challenges. In collaboration with Sebseb2222#6463. Banner by Ataraxia#7714.",
	"author": "Warze",
	"dependencies": {},
	"api": {"scriptPath":""},
	"icon": "logo/CodaFlavorsIconFullResWhite.png",
	"banner": "logo/CodaFlavorsBanner.png",
	"tags": [],
	"name": "CodaFlavors_io_2919934",
	"changelog": "",
	"homepageURL": "https://mod.io/g/crypt/m/codaflavors",
	"modioID": "2919934",
	"modioUserID": 13555818,
	"pendingVersion": version,
	"visibility": 0
}

# Write mod.json
file_path = directory + "/mod.json"
with open(file_path, 'w') as f:
    f.write(json.dumps(mod_json_obj, indent=4))

# Path to the file and folders you want to zip
folder1_path = directory + "/logo"
folder2_path = directory + "/scripts"
folder3_path = directory + "/sprites"

# Name for the output .zip file
zip_filename = os.getcwd() + "/codaflavors_io_2919934-" + version + ".zip"

# Open a new .zip file in write mode
with zipfile.ZipFile(zip_filename, 'w') as zip_file:
    # Add the file to the .zip
    zip_file.write(file_path, os.path.basename(file_path))
    
    # Add the folders to the .zip
    for folder_path in [folder1_path, folder2_path, folder3_path]:
        for dirpath, dirnames, filenames in os.walk(folder_path):
            for filename in filenames:
                abs_path = os.path.join(dirpath, filename)
                rel_path = os.path.relpath(abs_path, folder_path)
                zip_file.write(abs_path, os.path.join(os.path.basename(folder_path), rel_path))

print(f"Successfully created {zip_filename}")