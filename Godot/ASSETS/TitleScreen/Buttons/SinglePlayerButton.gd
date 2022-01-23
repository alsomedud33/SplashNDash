extends Button

export var path = ''
onready var label = get_node("Label")

func _on_SinglePlayerButton_focus_entered():
	label.add_color_override("font_color_shadow", Color(0.2,0.88,1,1))

func _on_SinglePlayerButton_focus_exited():
	label.add_color_override("font_color_shadow", Color(1,0.33,0.2,1))

func _on_SinglePlayerButton_mouse_entered():
	label.add_color_override("font_color_shadow", Color(0.2,0.88,1,1))

func _on_SinglePlayerButton_mouse_exited():
	label.add_color_override("font_color_shadow", Color(1,0.33,0.2,1))


func _on_SinglePlayerButton_pressed():
	MusicController.fade_out()
	yield(get_tree().create_timer(0.8), "timeout")
#	yield(MusicController.tween,"tween_completed")
	if (path != ''):
		get_tree().change_scene(path)


func _on_Area2D_area_entered(area):
	emit_signal("focus_entered")

func _on_Area2D_area_exited(area):
	emit_signal("focus_exited")
