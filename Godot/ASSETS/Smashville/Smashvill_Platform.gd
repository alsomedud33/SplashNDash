extends KinematicBody2D


export var move_speed = 0.3
export var move_distance = 700.0
export var move_direction = Vector2(1, 0)
var time_since_init = 0.0
var origin = Vector2(0, 0)

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	#time_since_init = 0.0
	#origin = position

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _physics_process(delta):
	pass
	#time_since_init = time_since_init + delta
	#var position_on_curve = sin(time_since_init * PI * move_speed)
	#var offset = move_distance * position_on_curve * move_direction
	#position = origin + offset
