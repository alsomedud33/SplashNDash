extends Button

func _on_Control_pressed():
		if get_parent().get_parent().Paused == false:
			get_tree().paused = true
			get_parent().get_parent().Paused = true
			get_parent().get_parent().visible = true

		if get_parent().get_parent().Paused == true:
			get_tree().paused = false
			get_parent().get_parent().Paused = false
			get_parent().get_parent().visible = false
