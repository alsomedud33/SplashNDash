extends TextureButton

export(String, 'Smashville', 'WOLF') var stage
export(String) var stageScene
signal stage_selected(stage, child,)
signal stage_hovered(stage, child)
signal stage_dehovered(stage, child)

func _on_Stage_Button_pressed():
	emit_signal("stage_selected", "Smashville", self)
	MusicController.fade_out()
	Transitions.fade_out()
	yield(Transitions.anim,"animation_finished")
#	yield(get_tree().create_timer(0.1), "timeout")
	if (stageScene != ''):
		SceneChanger.goto_scene(stageScene,get_tree().get_root().get_node("StageSelecteScreen"))
		#get_tree().change_scene(stageScene)


func _on_StageArea_area_entered(area):
	if area.name == "HandArea":
		print(area.name)
		emit_signal("stage_hovered", "Smashville", self)

