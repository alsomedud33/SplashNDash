extends Control


var notPaused = true

func _process(delta):
	if Input.is_action_just_pressed("pause"):
<<<<<<< HEAD
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
=======
		if notPaused:
			get_tree().paused = true
			notPaused = false
			visible = true
		else:
			get_tree().paused = false
			notPaused = true
			visible = false
>>>>>>> parent of 2244c82 (Merge branch 'Develop' of https://github.com/alsomedud33/SplashNDash into Develop)
