extends TextureButton

export var path = ''

func _on_TextureRect_pressed():
	if (path != ''):
		get_tree().change_scene(path)
