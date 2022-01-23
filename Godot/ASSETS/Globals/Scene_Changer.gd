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
			#resource.instance().connect("tree_entered", get_tree(), "set_current_scene", [resource.instance()], CONNECT_ONESHOT)
			#get_tree().get_root().add_child(resource.instance())
		#	get_tree().get_root().call_deferred("add_child", resource.instance())
			call_deferred("_deferred_goto_scene", resource, current_scene)
		#	get_tree().set_current_scene(resource.instance())
		#	current_scene.queue_free()
			break
		if err == OK:
			#stil loading
			var progress = float(loader.get_stage())/loader.get_stage_count()
			print (progress)

func _deferred_goto_scene(loader, current_scene):
	# It is now safe to remove the current scene
	current_scene.free()

	# Load the new scene.
#    var s = ResourceLoader.load(path)

	# Instance the new scene.
	current_scene = loader.instance()

	# Add it to the active scene, as child of root.
	get_tree().get_root().add_child(current_scene)

	# Optionally, to make it compatible with the SceneTree.change_scene() API.
	get_tree().set_current_scene(current_scene)
	print(get_tree().get_current_scene().name)
