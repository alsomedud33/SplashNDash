extends Control


var Paused = false

func _process(delta):
	if Input.is_action_just_pressed("pause"):
		if Paused == true:
			get_tree().paused = false
			Paused = false
			visible = false
		if Paused == false:
			get_tree().paused = true
			Paused = true
			visible = true
#	print (Paused)
