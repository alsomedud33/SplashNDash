extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass



func _on_Upper_Boundary_area_entered(area):
	area.get_parent().global_position = Vector2(area.get_parent().global_position.x,978)
