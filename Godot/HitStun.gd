extends Timer

onready var timer = self
onready var parent = get_parent()
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.





func _on_Timer_timeout():
	print ('yoshi')
	parent.hitstun = false
	get_tree().paused = false


	
