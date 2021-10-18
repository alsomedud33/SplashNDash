extends KinematicBody2D

var velocity = Vector2(0,0)
#A constant is something that doesnt change,
#"SPEED" is just the name of the constant used, similar to ta variable
var UP = Vector2(0,-1)
var SPEED = 480
var DASHSPEED = 700
var fall_speed = 30
var max_fall_speed = 90
var JUMPFORCE = -600
var max_air_speed = 250
var air_accel = 21
var fast_fall = false
#onready var sprite = get_node("Sprite_Node")
onready var anim = get_node("Sprite/AnimationPlayer") #$Sprite/AnimationPlayer
onready var raycasts = $Raycasts
#physics process means that physics is linked to framerate
# warning-ignore:unused_argument

func aerial_acceleration():
		if velocity.y <  max_fall_speed:
			velocity.y +=fall_speed
		
		if Input.is_action_just_pressed("down") and velocity.y > 0 and not fast_fall :
			velocity.y = max_fall_speed
			fast_fall = true
			
		if fast_fall == true:
			velocity.y = max_fall_speed
		
		if  abs(velocity.x) >=  abs(max_air_speed):
			if velocity.x > 0:
				if Input.is_action_pressed("left"):
					velocity.x += -air_accel
				elif Input.is_action_pressed("right"):
					velocity.x = velocity.x
			if velocity.x < 0:
				if Input.is_action_pressed("left"):
					velocity.x = velocity.x
				elif Input.is_action_pressed("right"):
					velocity.x += air_accel
					
		elif abs(velocity.x) < abs(max_air_speed):
			if Input.is_action_pressed("left"):
				velocity.x += -air_accel
			if Input.is_action_pressed("right"):
				velocity.x += air_accel				
		
		if not Input.is_action_pressed("left") and not Input.is_action_pressed("right"):
			#print('Air Deaccel')
			if velocity.x < 0:
				velocity.x += air_accel / 10
			elif velocity.x > 0:
				velocity.x += -air_accel / 10
				

func _physics_process(delta):
	if Input.is_action_pressed("left") and Input.is_action_pressed("right"):
		velocity.x = lerp(velocity.x,0,0.005)
		if is_on_floor() == true:
			anim.play("idle")
		else:
			anim.play("jump")
			aerial_acceleration()
	elif Input.is_action_pressed("right"):
		velocity.x = DASHSPEED
		$Sprite.flip_h = false
		if is_on_floor() == true:
			anim.play("dash")
		else:
			anim.play("jump")
			aerial_acceleration()
	elif Input.is_action_pressed("left"):
		velocity.x = -DASHSPEED
		$Sprite.flip_h = true
		if is_on_floor() == true:
			anim.play("dash")
		else:
			anim.play("jump")
			aerial_acceleration()
	elif is_on_floor() == true:
		anim.play("idle")
	if not is_on_floor():
		anim.play("jump")
		aerial_acceleration()
	if Input.is_action_just_pressed("jump1") and is_on_floor():
		velocity.y = JUMPFORCE
	
	#This is for the jump height mechanic, if i let go of the jump button and y velocity is going up. It will become 0
	#if Input.is_action_just_released("jump1") && (velocity.y < 0):
	#	velocity.y = -200

#	velocity.y += fall_speed
	print(velocity.y)

	velocity = move_and_slide(velocity,Vector2.UP)

	velocity.x = lerp(velocity.x,0,0.08)

#####################################################################################################################
##################################################################################################################################
#####################################################################################################################
##################################################################################################################################
#####################################################################################################################

