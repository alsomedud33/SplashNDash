extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
#	Transitions.fade_in()
	MusicController.fade_in()
	MusicController.play_music(MusicController.airport_music)

var input := Vector2.ZERO

func _process(delta):
	if (Input.is_action_just_pressed("ui_select_1") or Input.is_action_just_pressed("ui_select_2")):
#		Transitions.fade_out()
#		MusicController.fade_out()
#		yield(get_tree().create_timer(0.8), "timeout")
		get_tree().change_scene("res://TitleScreen.tscn")
	if Input.get_action_strength("right_1") or Input.get_action_strength("right_2"):
		$HSlider.set_value($HSlider.get_value() + $HSlider.step)
	if (Input.get_action_strength("left_1") + Input.get_action_strength("left_2")):
		$HSlider.set_value($HSlider.get_value() - $HSlider.step)


func _on_HSlider_value_changed(value) -> void:
	AudioServer.set_bus_volume_db(0, linear2db(value))
	$"volume percent".text = "%d%%" % (value *100)
#	set_bus_volume(0, value)

func set_bus_volume(bus_index: int, value: float):
	AudioServer.set_bus_volume_db(bus_index, linear2db(value))
	#AudioServer.set_bus_mute(bus_index, value < 0.01)
	#!AudioServer.set_bus_mute(bus_index, value > 0.01)
