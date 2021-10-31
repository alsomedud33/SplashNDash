extends RigidBody2D

export(PackedScene) var hitSprite

#export var hitbox: PackedScene
export var LASER_SPEED = 1200
onready var parent = get_parent()
var frame = 0
export var duration = 100
export var cooldown = 8
export var angle = 50
export var base_kb = 80
export var kb_scaling  = 0
export var type = "hit"
var dir_x = 1
var dir_y = 0
var knockbackVal
export var percentage = 0
export var ratio =1 
export var damage = 7
var player_list = []

const angleConversion = PI / 180

func dir (directionx,directiony):
	dir_x = directionx
	if dir_x < 0:
		angle = -angle+180
	else:
		angle = angle
	dir_y = directiony
# Called when the node enters the scene tree for the first time.
func done():
	return true
func _ready():
	apply_central_impulse(Vector2(600,600))
	player_list.append(parent)
	set_process(true)


func _process(delta):
	frame += 1
	if frame == duration:
		done()
		queue_free()
	var motion = (Vector2(dir_x,dir_y)).normalized() * LASER_SPEED
	#set_position(get_position() + motion * delta )
	#position.direction_to(motion)
	
	#set_rotation_degrees(rad2deg(Vector2(dir_x,dir_y).angle()))




func _on_Mario_Fireball_area_entered(area):
	print ("fire")
	var body = area.get_parent()
	if not (body in player_list):
		#print('hit')
		var charstate 
		charstate = body.get_node("StateMachine")
		knockbackVal = knockback(body.percentage,damage,body.weight,kb_scaling,base_kb,1)
		effect(type)
		body.percentage += damage
		body.velocity.x = (getHorizontalVelocity (knockbackVal, -angle))*1
		body.velocity.y = (getVerticalVelocity (knockbackVal, -angle))*1
		body.knockback = knockbackVal
		body.hitstun = getHitstun(knockbackVal/0.3)
		body.frame()
		charstate.state = charstate.states.HITSTUN
		queue_free()

func effect(type):
	match type:
		"hit":
			var normal_1 = hitSprite.instance()
			normal_1.number = 1
			normal_1.self_modulate = Color(1, 0, 0)
			get_tree().current_scene.add_child(normal_1)
			normal_1.global_position = self.global_position

func knockback(p,d,w,ks,bk,r):
	percentage = p 
	damage = d
	weight = w
	kb_scaling = ks
	base_kb = bk
	ratio = r
	#return base_kb+(damage*.12*kb_scaling)*weight
	#return ((((((percentage+damage*1)/10+(((percentage+damage*1)*damage*(1-(1-1)*0.3))/20))*1.4*(200/(weight+100)))+18)*(kb_scaling/100))+base_kb)*ratio
	#return ((((((((percentage/10) + (percentage*damage/20))*(200/ (weight+100)) *1.4) +18)*(kb_scaling/100))+base_kb)*ratio))
	return ((kb_scaling/100)*((((14*(percentage+damage)*(damage+2)))/weight+100)+18)+base_kb)/10

func getHorizontalVelocity (knockback, angle):
	#var horizontalVelocity
	#horizontalVelocity = (cos(PI/180 * angle) * knockback)/2
	var initialVelocity = knockback * 30;
	var horizontalAngle = cos(angle * angleConversion);
	var horizontalVelocity = initialVelocity * horizontalAngle;
	horizontalVelocity = round(horizontalVelocity * 100000) / 100000;
	return horizontalVelocity;

func getVerticalVelocity (knockback, angle):
	#var verticalVelocity
	#verticalVelocity = (sin(PI/180 * angle) * knockback)/2
	var initialVelocity = knockback * 30;
	var verticalAngle = sin(angle * angleConversion);
	var verticalVelocity = initialVelocity * verticalAngle;
	verticalVelocity = round(verticalVelocity * 100000) / 100000;
	return verticalVelocity

func getHitstun (knockback):
	return floor(knockback * 0.4);

