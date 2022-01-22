extends Node


func pause():
	get_tree().paused = true
	yield(get_tree().create_timer(1.5), "timeout")
	get_tree().change_scene("res://CSS.tscn")
	get_tree().paused = false
