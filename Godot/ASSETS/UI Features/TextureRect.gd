extends TextureButton

export var path = ''
export(bool) var fade

func _on_TextureRect_pressed():
	if !fade:
		MusicController.fade_out()
	yield(get_tree().create_timer(0.8), "timeout")
#	yield(MusicController.tween,"tween_completed")
	if (path != ''):
		get_tree().change_scene(path)
