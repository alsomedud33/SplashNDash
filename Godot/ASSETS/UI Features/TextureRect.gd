extends TextureButton

export var path = ''
export(bool) var fade

func _on_TextureRect_pressed():
	if !fade:
		MusicController.fade_out()
	Transitions.fade_out()
	yield(Transitions.anim,"animation_finished")
#	yield(get_tree().create_timer(0.8), "timeout")
#	yield(MusicController.tween,"tween_completed")
	if (path != ''):
		#SceneChanger.goto_scene(path)
		get_tree().change_scene(path)
