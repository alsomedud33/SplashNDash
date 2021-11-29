extends Button

export var path = ''


func _on_Button_pressed():
	if (path != ''):
		get_tree().paused = false
		get_tree().change_scene(path)
