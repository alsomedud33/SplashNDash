extends Control


var Paused = false

func _process(delta):
	if Input.is_action_just_pressed("pause"):
		match Paused:
			true:
				get_tree().paused = false
				visible = false
				print ("unpause")
				Paused = false
			false:
				get_tree().paused = true
				Physics2DServer.set_active(true)
				visible = true
				print ("pause")
				Paused = true
#		if Paused == true:
#			get_tree().paused = false
#			visible = false
#			print ("unpause")
#		if Paused == false:
#			get_tree().paused = true
#			Paused = true
#			visible = true
#			print ("pause")
#	print (Paused)
