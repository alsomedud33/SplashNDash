extends KinematicBody2D

var velocity = Vector2(0,0)
#A constant is something that doesnt change,
#"run_speed" is just the name of the variable for the maximum run speed FOX will move
const UP = Vector2(0,-1)
var  run_speed = 17 * Globals.UNIT_SIZE
var gravity
var max_jumpforce
var min_jumpforce

var max_jump_height = 300 * Globals.UNIT_SIZE
var min_jump_height = 100 * Globals.UNIT_SIZE
var jump_duration = 15

func _ready():
	gravity = 2 * max_jump_height / pow(jump_duration, 2)
	max_jumpforce = -sqrt(2 * gravity * max_jump_height)
	min_jumpforce = -sqrt(2 * gravity * min_jump_height)

#physics process means that physics is linked to framerate
# warning-ignore:unused_argument
func _apply_gravity(delta):
	velocity.y += gravity
	velocity = move_and_slide(velocity,UP)
	
func _apply_movement():
	velocity = move_and_slide(velocity,UP)
	if Input.is_action_pressed("left") and Input.is_action_pressed("right"):
		velocity.x = lerp(velocity.x,0,0.8)
		$Sprite.play("idle")
	elif Input.is_action_pressed("right"):
		velocity.x = run_speed
		$Sprite.play("walk")
		$Sprite.flip_h = false
	elif Input.is_action_pressed("left"):
		velocity.x = -run_speed
		$Sprite.play("walk")
		$Sprite.flip_h = true
	else:
		velocity.x = lerp(velocity.x,0,0.08)
		$Sprite.play("idle")
################################################################################################################
###########################THIS IS FOR GRAVITY########################################################
func _input(event):
	if not is_on_floor():
		$Sprite.play("jump1")
	if event.is_action_pressed("jump1") and is_on_floor():
		velocity.y = max_jumpforce
		$Sprite.play("jump1")
	if event.is_action_released("jump1") && velocity.y < min_jumpforce:
		velocity.y = min_jumpforce

	velocity.y = velocity.y + gravity
	print(velocity.y)



#	velocity.x = lerp(velocity.x,0,0.08)

