extends TextureButton

export var path = ''

func _on_TextureRect_pressed():
	MusicController.fade_out()
	yield(MusicController.tween,"tween_completed")
	if (path != ''):
		get_tree().change_scene(path)
