## represents a general configuration of an usable tileset for the map editor, with a bunch of useful and needed stuff
class_name MapTilesetConfiguration extends Resource

## Used as a display for your tileset, will be shown on the Select Tileset dropdown
@export var tileset_name: String
## A referece to the tileset resource you created
@export var tileset_resource: TileSet:
	set(new_value):
		print("setting tileset resource")
		tileset_resource = new_value
		tileset_resource_path = tileset_resource.resource_path
## Holds a quick reference to the tileset the modder set, this is needed to exchange its resource location between targets
var tileset_resource_path: String 

## how much the tiles will eb scaled upon drawing
@export var tilemap_scale: float = 1
