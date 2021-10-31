extends KinematicBody2D
export var id: int
export var percentage = 0
export var stocks = 3
export var weight = 100
var velocity = Vector2(0,0)
#A constant is something that doesnt change,
#"SPEED" is just the name of the constant used, similar to ta variable
const UP = Vector2(0,-1)
export var hitbox: PackedScene
export var grabbox: PackedScene
export var projectile: PackedScene
export var angel_platform: PackedScene

#var RUNSPEED = RUNSPEED_1#*get_process_delta_time()#340
#var DASHSPEED = DASHSPEED_1#*get_process_delta_time()#390
#var WALKSPEED = WALKSPEED_1#*get_process_delta_time()#200
#var GRAVITY = GRAVITY_1#*get_process_delta_time()#1800
#var JUMPFORCE = JUMPFORCE_1#*get_process_delta_time()#500
#var MAX_JUMPFORCE = MAX_JUMPFORCE_1#*get_process_delta_time()#800
#var DOUBLEJUMPFORCE = DOUBLEJUMPFORCE_1#*get_process_delta_time()#1000
#var MAXAIRSPEED = MAXAIRSPEED_1#*get_process_delta_time()#300
#var AIR_ACCEL = AIR_ACCEL_1#*get_process_delta_time()#30
#var FALLSPEED = FALLSPEED_1#*get_process_delta_time()#60
#var FALLINGSPEED = FALLINGSPEED_1#*get_process_delta_time()#900
#var MAXFALLSPEED = MAXFALLSPEED_1#*get_process_delta_time()#900
#var TRACTION = TRACTION_1#*get_process_delta_time()#40
#var ROLL_DISTANCE = ROLL_DISTANCE_1#*get_process_delta_time()#350
#var air_dodge_speed = air_dodge_speed_1
#var UP_B_LAUNCHSPEED =UP_B_LAUNCHSPEED_1

#export(float) var RUNSPEED_1 = 20400#*get_process_delta_time()#340
#export(float) var DASHSPEED_1 = 23400#*get_process_delta_time()#390
#export(float) var WALKSPEED_1 = 12000#*get_process_delta_time()#200
#export(float) var GRAVITY_1 = 108000#*get_process_delta_time()#1800
#export(float) var JUMPFORCE_1 = 30000#*get_process_delta_time()#500
#export(float) var MAX_JUMPFORCE_1 = 48000#*get_process_delta_time()#800
#export(float) var DOUBLEJUMPFORCE_1 = 60000#*get_process_delta_time()#1000
#export(float) var MAXAIRSPEED_1 = 18000#*get_process_delta_time()#300
#export(float) var AIR_ACCEL_1 = 1500#*get_process_delta_time()#25
#export(float) var FALLSPEED_1 = 3600#*get_process_delta_time()#60
#export(float) var FALLINGSPEED_1 = 54000#*get_process_delta_time()#900
#export(float) var MAXFALLSPEED_1 = 60000#54000#*get_process_delta_time()#900
#export(float) var TRACTION_1 = 2400#*get_process_delta_time()#40
#export(float) var ROLL_DISTANCE_1 = 21000#*get_process_delta_time()#350
#export(float) var air_dodge_speed_1 = 30000#500
#export(float) var UP_B_LAUNCHSPEED_1 = 42000#700

export(float) var RUNSPEED = 340#18600#*get_process_delta_time()#310
export(float) var DASHSPEED = 390#21000#*get_process_delta_time()#350
export(float) var WALKSPEED = 200#9540#*get_process_delta_time()#159
export(float) var GRAVITY = 1800#108000#*get_process_delta_time()#1800
export(float) var JUMPFORCE = 500#28140#*get_process_delta_time()#469
export(float) var MAX_JUMPFORCE = 800#43920#*get_process_delta_time()#732
export(float) var DOUBLEJUMPFORCE = 1000#49800#*get_process_delta_time()#830
export(float) var MAXAIRSPEED = 300#18000#*get_process_delta_time()#300
export(float) var AIR_ACCEL = 25#1800#*get_process_delta_time()#30
export(float) var FALLSPEED = 60#3060#*get_process_delta_time()#51
export(float) var FALLINGSPEED = 900#54000#*get_process_delta_time()#900
export(float) var MAXFALLSPEED = 900#51420#54000#*get_process_delta_time()#857
export(float) var TRACTION = 40#2400#*get_process_delta_time()#40
export(float) var ROLL_DISTANCE = 350#21000#*get_process_delta_time()#350
export(float) var air_dodge_speed = 500#30000#500
export(float) var UP_B_LAUNCHSPEED = 700#30000#500

export var landing_frames = 0
onready var shapez = $Collisionbox
onready var spritez = $Sprite
onready var anim = $Sprite/AnimationPlayer
onready var raycasts = $Raycasts
onready var states = $State
onready var hurtbox = get_node("HurtBox/Hurtbox")
onready var last_ledge = false
#onready var Hitbox = $Hitbox
onready var Ledge_Grab_F:= $Raycasts/Ledge_Grab_F
onready var gun_pos = get_node("gun_pos")
onready var Ledge_Grab_B = get_node('Raycasts/Ledge_Grab_B')
onready var GroundL = get_node('Raycasts/GroundL')
onready var GroundR = get_node('Raycasts/GroundR')
onready var state_machine = $StateMachine
var is_attacking = false;
var fastfall = false
var last_platform = false
var regrab = 30
var down_buffer = 0
var up_buffer = 0
var right_buffer = 0
var left_buffer = 0
var shield_buffer = 0
var invis_frames = 0
var tech_frames = 0
var cooldown =0
var lag_frames = 0
var buffer_dodge = false
var buffering_dodge
var grabbing = false
func grabbing(value):
	grabbing = value
#Perfect Wavedash
export var perfect_wavedash_modifier = 1#11
export var dash_duration = 10
export var jump_squat_duration = 3

var moonwalk = false

var selfState
var in_air
var catch = false

export var airJump = 0
export var airJumpMax = 1

func _ready():
	set_physics_process(true)
	pass

func _reset_Jumps():
	airJump = airJumpMax

func parry():
	if frame==4:
		pass
		#turn off hurt box
	if frame == 20:
		#enablehurt box
		pass

func rolling():
	if frame==4:
		pass
		#turn off hurt box
	if frame == 20:
		#enablehurt box
		pass

func reset_platform():
	last_platform = false
	self.set_collision_mask_bit(2,true)

func reset_ledge():
#	last_ledge.is_grabbed = false
	last_ledge = false

func direction():
	if Ledge_Grab_F.get_cast_to().x > 0:
		return 1
	else:
		return -1

func invis_frames():
	invis_frames -=1
	invis_frames = clamp(invis_frames, 0, invis_frames)

func down_buffer():
	if not Input.is_action_pressed('down_%s' % id):
		down_buffer = 0
	elif Input.is_action_pressed('down_%s' % id):
		down_buffer+=1

func up_buffer():
	if not Input.is_action_pressed('up_%s' % id):
		up_buffer = 0
	elif Input.is_action_pressed('up_%s' % id):
		up_buffer+=1

func right_buffer():
	if not Input.is_action_pressed('right_%s' % id):
		right_buffer = 0
	elif Input.is_action_pressed('right_%s' % id):
		right_buffer+=1

func left_buffer():
	if not Input.is_action_pressed('left_%s' % id):
		left_buffer = 0
	elif Input.is_action_pressed('left_%s' % id):
		left_buffer+=1

func shield_buffer():
	if not Input.is_action_pressed('shield_%s' % id):
		shield_buffer = 0
	elif Input.is_action_pressed("shield_%s" % id):
		shield_buffer+=1

func techwindow():
		tech_frames +=1
		clamp(tech_frames, 0, 20)
func tech():
		tech_frames = 0
		
func cooldown():
	#print (cooldown)
	cooldown -= 1
	cooldown = clamp(cooldown,0,cooldown)
	
	
var frame = 0
var lagframes = 0
var hitstun = 0
var knockback = 0
var charge = 1

var hdecay = 0
var vdecay = 0
#var hdecay_1 = 0
#var vdecay_1 = 0

func turn(direction):
	var dir = 0
	if direction:
		dir = -1
	else:
		dir = 1
	$Sprite.set_flip_h(direction)
	Ledge_Grab_F.set_cast_to(Vector2(dir*abs(Ledge_Grab_F.get_cast_to().x),Ledge_Grab_F.get_cast_to().y))
	Ledge_Grab_B.set_cast_to(Vector2(-dir*abs(Ledge_Grab_F.get_cast_to().x),Ledge_Grab_F.get_cast_to().y))

	pass
	#For a grab hitbox, maybe I can make a new 'Grab hitbox' 
	#scene with specific properties to grabbing.
	#maybe I could copy and paste the 'create hibox' function below
var connected = false

func create_hitbox(width, height, damage,angle,base_kb, kb_scaling,duration,type,points,angle_flipper,hitlag=1):
	#var hitbox = preload('Hitbox Test.tscn')
	var hitbox_instance = hitbox.instance()
	self.add_child(hitbox_instance)
	#Rotates The Points 
	if direction() == 1:
		hitbox_instance.set_parameters(width, height, damage,angle,base_kb, kb_scaling,duration,type,points,angle_flipper,hitlag)
		#print ("1")
	else:
		#var flip_x_points = []
		#for point in points:
		#	flip_x_points.append( Vector2(-point.x, point.y) ) 
		var flip_x_points = Vector2(-points.x, points.y)
		hitbox_instance.set_parameters(width, height, damage,-angle+180,base_kb, kb_scaling,duration,type,flip_x_points,angle_flipper,hitlag)
		#print ("2")
	return hitbox_instance

func create_grabbox(width, height, damage,duration,points):
	var grabbox_instance = grabbox.instance()
	self.add_child(grabbox_instance)
	#Rotates The Points 
	if direction() == 1:
		grabbox_instance.set_parameters(width, height, damage,duration,points)
		#print ("1")
	else:
		var flip_x_points = Vector2(-points.x, points.y)
		grabbox_instance.set_parameters(width, height, damage,duration,flip_x_points)
		#print ("2")
	return grabbox_instance

func create_projectile(dir_x,dir_y,point):
	var projectile_instance = projectile.instance()
	projectile_instance.player_list.append(self)
	get_parent().add_child(projectile_instance)
	#sets position
	gun_pos.set_position(point)
	#Flips the direction
	if direction() == 1:
		projectile_instance.dir(dir_x,dir_y)
		projectile_instance.set_position(gun_pos.get_global_position())
		#print ("1")
	else:
		gun_pos.position.x = -gun_pos.position.x
		projectile_instance.dir(-(dir_x),dir_y)
		projectile_instance.set_position(gun_pos.get_global_position())
		#print ("2")
	return projectile_instance

func PARRY():
	if frame == 2:
		#create_hitbox(30,60,60,76,24,100,4,'normal',[Vector2(-16,0)],1.5)
		create_hitbox(48,68,6,76,18,140,4,'normal',Vector2(-22,-15),0,0.6)
	if frame ==30:
		return true

func RESPAWN():
	var angel_plat = angel_platform.instance()
	self.add_child(angel_plat)
	return true
	
func DESPAWN():
	var angel_plat = get_node("FOX_ANGEL_PLAT")
	if angel_plat:
		angel_plat.queue_free()
	else:
		pass
	return true

func UP_TILT():
	if frame == 5:
		#create_hitbox(30,60,60,76,24,100,4,'normal',[Vector2(-16,0)],1.5)
		create_hitbox(48,68,6,76,8,140,4,'normal',Vector2(-22,-15),0,0.6)
	if frame >=12:
		return true

func DOWN_TILT():
	if frame == 5:
	#	create_hitbox(40,20,5,90,18,110,4,'normal',Vector2(64,32),0.6)
		create_hitbox(40,20,8,90,3,120,3,'normal',Vector2(64,32),0,0.5)
	if frame >=10:
		return true

func FORWARD_TILT():
	if frame == 3:
		#create_hitbox(40,20,7,120,40,140,3,'normal',Vector2(48,8),0.3,false)
		create_hitbox(52,20,7,120,13,100,3,'normal',Vector2(22,8),0,1)
	if frame >=8:
		return true
		
func JAB():
	if frame == 2:
			create_grabbox(30,40,0,3,Vector2(64,0))
	if frame == 5:
			if grabbing == true:
				return false
				#create_grabbox(40,50,0,13,Vector2(64,0))
	if frame >= 20:
		return true
func JAB_1():
	if frame == 1:
		grabbing = false
		create_grabbox(30,40,0,13,Vector2(64,0))
	if frame == 14:
		create_hitbox(40,20,8,90,220,0,5,'normal',Vector2(48,8),0,1)
	if frame == 26:
		create_projectile(0,-1,Vector2(34.089,-70.645))
	if frame == 32:
		create_projectile(0,-1,Vector2(34.089,-70.645))
	if frame == 39:
		create_projectile(0,-1,Vector2(34.089,-70.645))
	if frame == 43:
		return true

func NEUTRAL_SPECIAL():
	if frame == 4:
		create_projectile(1,0,Vector2(42.82,1.692))
	if frame == 14:
		return true

func FORWARD_SPECIAL():
	if frame == 11:
		create_hitbox(60,40,8,90,15,148,5,'normal',Vector2(6,-19),0,0.3)
	if frame == 20:
		return true

func DOWN_SPECIAL():
	if frame == 2:
		#create_hitbox(60,66,4,0,5,100,3,'normal',Vector2(0,0),6,0.3)
		#create_hitbox(60,66,4,0,5,100,3,'normal',Vector2(0,0),6,0.3)
		create_hitbox(30,66,4,0,150,0,3,'normal',Vector2(30,0),6,0.3)
		create_hitbox(30,66,4,180,150,0,3,'normal',Vector2(-30,0),6,0.3)
	if frame == 8:
		return true

func UP_SPECIAL():
	if frame == 2:
		create_hitbox(60,66,3,290,50,0,3,'normal',Vector2(0,0),2,0.5)
	if frame == 8:
		create_hitbox(60,66,3,290,50,0,3,'normal',Vector2(0,0),2,0.5)
	if frame == 16:
		create_hitbox(60,66,3,290,50,0,3,'normal',Vector2(0,0),2,0.5)
	if frame == 24:
		create_hitbox(60,66,3,290,50,0,3,'normal',Vector2(0,0),1,0.5)
	if frame == 32:
		create_hitbox(60,66,3,290,50,0,3,'normal',Vector2(0,0),1,0.5)
	if frame == 40:
		return true
func UP_SPECIAL_1():
	if frame == 2:
		create_hitbox(60,66,10,45,10,110,12,'normal',Vector2(0,0),6,0.5)
	if frame > 1:
		if connected == true:
			#print ("core hit")
			if frame == 21:
				connected = false
				return true 
		else:
			if frame == 14:
				create_hitbox(40,46,5,361,180,0,6,'normal',Vector2(0,0),1,0.5)
			if frame == 21:
				return true

func NAIR():
	if frame == 1:
		create_hitbox(56,56,12,361,0,100,3,'normal',Vector2(0,0),0,1)
	if frame > 1:
		if connected == true:
			#print ("sweetspot")
			if frame == 16:
				connected = false
				return true 
		else:
			if frame == 5:
				create_hitbox(46,56,9,361,0,100,10,'normal',Vector2(0,0),0,1)
			if frame == 16:
				return true 

func UAIR():
	if frame == 2:
		create_hitbox(32,36,5,90,130,0,2,'normal',Vector2(0,-45),0,0.5)
	if frame == 6:
		create_hitbox(56,46,10,90,30,108,3,'normal',Vector2(0,-48),0,0.05)
	if frame == 15:
		return true 

func BAIR():
	if frame == 2:
		create_hitbox(52,55,15,45,1,100,5,'normal',Vector2(-47,7),6,0.7)
	if frame > 1:
		if connected == true:
			#print ("sweetspot")
			if frame == 18:
				connected = false
				return true 
		else:
			if frame == 7:
				create_hitbox(52,55,5,45,3,140,10,'normal',Vector2(-47,7),6,0.7)
			if frame == 18:
				return true

func FAIR():
	if frame == 2:
		create_hitbox(35,47,3,76,10,150,3,'normal',Vector2(60,-7),0,0.9)
	if frame == 11:
		create_hitbox(35,47,3,76,10,150,3,'normal',Vector2(60,-7),0,0.9)
	if frame == 18:
		return true 

func DAIR():
	if frame == 2:
		create_hitbox(36,58,2,290,140,0,2,'normal',Vector2(28,17),0,0.5)
	if frame == 3:
		create_hitbox(36,58,2,290,140,0,2,'normal',Vector2(28,17),0,0.5)
	if frame == 5:
		create_hitbox(36,58,2,290,140,0,2,'normal',Vector2(28,17),0,0.5)
	if frame == 7:
		create_hitbox(36,58,2,290,140,0,2,'normal',Vector2(28,17),0,0.5)
	if frame == 9:
		create_hitbox(36,58,2,290,140,0,2,'normal',Vector2(28,17),0,0.5)
	if frame == 11:
		create_hitbox(36,58,2,290,140,0,2,'normal',Vector2(28,17),0,0.5)
	if frame == 14:
		create_hitbox(36,58,4,45,12,120,2,'normal',Vector2(28,17),0,0.5)
	if frame == 17:
		return true

func DOWN_SMASH():
	if frame == 1:
		create_hitbox(62,27,15*charge,30,4,130,5,'normal',Vector2(0,26),6,0.7)
	if frame == 21:
		return true

func UP_SMASH():
	if frame == 4:
		create_hitbox(59,80,14*charge,90,4,120,3,'normal',Vector2(53,-34),0,0.2)
	if frame == 22:
		return true

func FORWARD_SMASH():
	if frame == 1:
		create_hitbox(71,54,15*charge,45,4,120,5,'normal',Vector2(26,-2),6,0.4)
	if frame == 21:
		return true

	#if grabbing = true:
	#	create_grabbox(40,50,0,13,Vector2(64,0))
	#hitbox lasts 3 frames
	#if the move whiffs then it lasts 20 frames
	#if it hits, hitbox lasts up to frame 14
	#if it hits, the next hitbox (throw up) comes out on frame 17 and lasts 3 frames (frame 20)
	#projectiles come out on frame 30, 35,40, ends on fram 44
	
	#//Below is a function defined as 'has_hit_player'
		#if (attack == AT_JAB && window == 1) {#window refers to the differnt parts of a single attack, eg: 
											   #1, is the grab part of the attack, 2 is the up throw, 
											   #3 is the first lasor, 4 is the second and 5 is the thrid lasor
		#hit_player_obj.x = x + spr_dir * 50
		#hit_player_obj.y = y
		#}
	#//I think this part of the script would be stored in the statemachine
	#//or could be used in the fox file but using get_node('StateMachine').get_transition 
	#//and return idle state. Or i could just copy and paste state machines for each charater.... ohhh
	#//the posibilities.
	#// As for the animation, I could split it into the first animation
	#// if it hits, make a script that moves on to the next part of the jab, if it doesnt
	#// let the whole animation play out and return to STAND state
	#if (window == 1 && has_hit_player == true && hitpause == false) {
	   #window = 2;
		#window_timer = 0;
	
	#if (window == 1 && window_timer == get_window_value(AT_JAB, 1, AG_WINDOW_LENGTH) && has_hit_player == false) {
		 # set_state(PS_IDLE);



var state = STAND
func updateframes(delta):
	frame += 1#round(60*delta)
	$Frames.text = str(frame)
	$Health.text = str(percentage)+" %"
func frame():
	frame = 0
#States
const STAND = 'stand'
const DASH= 'dash'
const RUN= 'run'
const CROUCH= 'crouch'
const LANDING= 'landing'
const JUMP_SQUAT= 'jump_squat'
const SHORT_HOP= 'short_hop'
const FULL_HOP= 'full_hop'
const TURN= 'turn'
const AIR= 'air'
const AIR_DODGE= 'air_dodge'
const FREEFALL= 'freefall'
const WALLJUMPLEFT= 'wall_jump_left'
const WALLJUMPRIGHT= 'wall_jump_right'
const LEDGE_CATCH= 'ledge_catch'
const LEDGE_HOLD = 'ledge_hold'
const LEDGE_ROLL = 'ledge_roll'
const LEDGE_CLIMB = 'ledge_climb'
const LEDGE_JUMP = 'ledge_jump'
const NAIR = 'nair'
const FAIR = 'fair'
const UAIR = 'uair'
const BAIR =  'bair'
const DAIR =  'dair'
const TUMBLE =  'tumble'
################################################################################################
################################################################################################

func play_animation(animation_name):
	$Sprite/AnimationPlayer.play(animation_name)
	#$State.text = animation_name

################################################################################################
################################################################################################



#MOVEMENT SCRIPTTTTTT
#TODO: make it so that,crouch has priority over running left and right
#func _Movements():
#	_reset_Jumps()
	#state = STAND
#	if left and right && is_attacking == false:
#		if is_on_floor() == true:
#			velocity.x = lerp(velocity.x,0,0.005)
#			anim.play("idle")
#			$State.text = str(anim.current_animation)
#		else:
#			anim.play("jump")
#			$State.text = str(anim.current_animation)
#	elif right && is_attacking == false:
#		velocity.x = DASHSPEED
#		$Sprite.flip_h = false
#		if is_on_floor() == true:
#			velocity.x = DASHSPEED
#			anim.play("dash")
#			$State.text = str(anim.current_animation)
#			frame = 0
#		else:
#			anim.play("jump")
#			$State.text = str(anim.current_animation)
#	elif left && is_attacking == false:
#		velocity.x = -DASHSPEED
#		$Sprite.flip_h = true
#		if is_on_floor() == true:
#			anim.play("dash")
#			$State.text = str(anim.current_animation)
#			frame = 0
#		else:
#			anim.play("jump")
#			$State.text = str(anim.current_animation)
#	elif down or (down and left) or (down and right):
#	if is_on_floor() == true:
#			velocity.x = lerp(velocity.x,0,0.005)
#			anim.play("crouch") 
#			$State.text = str(anim.current_animation)
#			frame = 0
#	else:
#			anim.play("jump")
#			$State.text = str(anim.current_animation)
#			frame = 0
#	elif is_on_floor() == true && is_attacking == false:
#		anim.play("idle")
#		$State.text = str(anim.current_animation)
#	if not is_on_floor():
#		anim.play("jump")
#		$State.text = str(anim.current_animation)
#	if jumpTemp and is_on_floor():
#		frame = 0
#		state = JUMP_SQUAT
		#This is for the jump height mechanic, if i let go of the jump button and y velocity is going jump. It will become 0
#	elif jumpRelease && (velocity.y < 0):
#		velocity.y = -200
#	if jumpTemp && airJump > 0 && !is_on_floor():
#			velocity.y = -DOUBLEJUMPFORCE
#			airJump -= 1


	
################################################################################################
################################################################################################

#physics process means that physics is linked to framerate
# warning-ignore:unused_argument\
var movement
func _physics_process(delta):
#	RUNSPEED = RUNSPEED_1*delta#*get_process_delta_time()#340*
#	DASHSPEED = DASHSPEED_1*delta#*get_process_delta_time()#390
#	WALKSPEED = WALKSPEED_1*delta#*get_process_delta_time()#200
#	GRAVITY = GRAVITY_1*delta#*get_process_delta_time()#1800
#	JUMPFORCE = JUMPFORCE_1*delta#*get_process_delta_time()#500
#	MAX_JUMPFORCE = MAX_JUMPFORCE_1*delta#*get_process_delta_time()#800
#	DOUBLEJUMPFORCE = DOUBLEJUMPFORCE_1*delta#*get_process_delta_time()#1000
#	MAXAIRSPEED = MAXAIRSPEED_1*delta#*get_process_delta_time()#300
#	AIR_ACCEL = AIR_ACCEL_1*delta #*get_process_delta_time()#30
#	FALLSPEED = FALLSPEED_1*delta#*get_process_delta_time()#60
#	FALLINGSPEED = FALLINGSPEED_1*delta#*get_process_delta_time()#900
#	MAXFALLSPEED = MAXFALLSPEED_1*delta#*get_process_delta_time()#900
#	TRACTION = TRACTION_1*delta#*get_process_delta_time()#40
#	ROLL_DISTANCE = ROLL_DISTANCE_1*delta#*get_process_delta_time()#350 
#	air_dodge_speed = air_dodge_speed_1*delta
#	UP_B_LAUNCHSPEED =UP_B_LAUNCHSPEED_1*delta
#	hdecay = (hdecay_1*60)*delta
#	vdecay = (vdecay_1*60)*delta
	#frame += 1
	#$Frames.text = str(frame)
#	_handinputs()
#	_reset_Jumps()
#	_Movements()
#	handlestates()
	#state_machines()
	selfState = states.text
	#print (str(selfState))
		
	#velocity.y# += GRAVITY * (delta)
	#print(velocity.y)

	movement =  move_and_slide(velocity,Vector2.UP)#move_and_slide(velocity,Vector2.UP)
	#bounce = move_and_collide(velocity*delta)
#	velocity.x = lerp(velocity.x,0,0.08)
	match id:
		1:
			Globals.player_1["percentage"] = percentage
			Globals.player_1["stocks"] = stocks
		2:
			Globals.player_2["percentage"] = percentage
			Globals.player_2["stocks"] = stocks

#			velocity.x = lerp(velocity.x,0,0.001)
#			anim.play("DownSmash") 
#			is_attacking = true;



