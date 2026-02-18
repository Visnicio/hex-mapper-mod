## this resource is very important since its used by the runtime to find the appropriate files to load during mod loading
## for this to happen, you must have a single mod_info.tres in tour mod directory
class_name ModInfoResource extends Resource

@export var author: String
@export var mod_name: String

## Holds a reference to the configuration of the map tileset, so the runtime knows what to load
@export var mod_configuration: MapTilesetConfiguration
