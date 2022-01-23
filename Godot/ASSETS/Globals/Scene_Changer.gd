extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func goto_scene(path, current_scene):
	var loader = ResourceLoader.load_interactive(path)
	
	while true:
		var err = loader.poll()
		if err == ERR_FILE_EOF:
			#loading complete
			var resource = loader.get_resource()
			get_tree().get_root().call_deferred("add_child", resource.instance())
			current_scene.queue_free()
			break
		if err == OK:
			#stil loading
			var progress = float(loader.get_stage())/loader.get_stage_count()
			print (progress)
