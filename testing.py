import json, sys

if len(sys.argv) != 2:
    print("No path specified")
    exit()
directory = sys.argv[1]

# mod.json object
mod_json_obj = {
	"namespace": "CodaFlavors",
	"displayName": "Coda Flavors",
	"version": "1.0.0",
	"synchronyVersion": "3.6.1",
	"description": "A whole new world of Coda with a hint of Aria. (TESTING VERSION)\n",
	"author": "Sebseb2222",
	"dependencies": {},
	"api": {"scriptPath":""},
	"icon": "logo/CodaFlavorsIcon.png",
	"banner": "logo/CodaFlavorsBanner.png",
	"tags": [],
	"name": "CodaFlavors",
	"changelog": "",
	"homepageURL": "https://mod.io/g/crypt/m/codaflavors",
	"modioID": "",
	"modioUserID": 13142250,
	"pendingVersion": "1.0.3",
	"visibility": 0
}

# Write mod.json
file_path = directory + "/mod.json"
with open(file_path, 'w') as f:
    f.write(json.dumps(mod_json_obj, indent=4))