extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
const EXPLOSION = preload("res://ASSETS/Effects/Ring-Out Explosions/Blastzone_Explosion.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	#rng.randomize()
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
var charstate
var rng = RandomNumberGenerator.new()
var my_random_number = 0

func _on_North_body_entered(body):
	match body.selfState:
		'TUMBLE':
			var blast = EXPLOSION.instance()
			var main  = get_tree().current_scene
			main.add_child(blast)
			blast.rotation_degrees = -180#-(((self.get_angle_to(body.global_position))*180)/PI)#+180
			blast.position.x = body.position.x
			blast.global_position.y = body.global_position.y #+ 474
			respawn(body)
			char_respawn(body)
		'HITSTUN':
			var blast = EXPLOSION.instance()
			var main  = get_tree().current_scene
			main.add_child(blast)
			blast.rotation_degrees = -180#-(((self.get_angle_to(body.global_position))*180)/PI)#+180
			blast.position.x = body.position.x
			blast.global_position.y = body.global_position.y #+ 474
			respawn(body)
			char_respawn(body)
		'FREE_FALL':
			var blast = EXPLOSION.instance()
			var main  = get_tree().current_scene
			main.add_child(blast)
			blast.rotation_degrees = -180#-(((self.get_angle_to(body.global_position))*180)/PI)#+180
			blast.position.x = body.position.x
			blast.global_position.y = body.global_position.y #+ 474
			respawn(body)
			char_respawn(body)
	
	#if abs(body.velocity.y) > 0:
	#	body.velocity.y = 0
	#	body.velocity.x = 0
	#	body.global_position.x = body.global_position.x
	#	body.global_position.y = -918.301

func _on_North_body_exited(body):
#	body.velocity.y = 0
#	body.global_position.y = -918.301
	pass

func _on_South_body_entered(body):
	var blast = EXPLOSION.instance()
	var main  = get_tree().current_scene
	main.add_child(blast)
	#blast.rotation_degrees = -(((self.get_angle_to(body.global_position))*180)/PI)+180
	if body.global_position.x < -890:
		blast.rotation_degrees = 45
		blast.global_position.x = -1177.682
		blast.global_position.y = 564.948
	elif body.global_position.x > 977:
		blast.rotation_degrees = -45
		blast.global_position.x = 1136.185
		blast.global_position.y = 564.948
	else:
		blast.position.x = body.position.x
		blast.global_position.y = body.global_position.y #- 474#self.global_position.x + 474
	respawn(body)
	char_respawn(body)

func _on_West_body_entered(body):
	var blast = EXPLOSION.instance()
	var main  = get_tree().current_scene
	main.add_child(blast)
	blast.rotation_degrees = -90#-(((self.get_angle_to(body.global_position))*180)/PI)#+180
	blast.position.x = body.position.x #-474
	blast.global_position.y = body.global_position.y #+ 474
	respawn(body)
	char_respawn(body)
	
func _on_East_body_entered(body):
	var blast = EXPLOSION.instance()
	var main  = get_tree().current_scene
	main.add_child(blast)
	blast.rotation_degrees = 90#-(((self.get_angle_to(body.global_position))*180)/PI)#+180
	blast.position.x = body.position.x #+ 474
	blast.global_position.y = body.global_position.y #+ 474
	respawn(body)
	char_respawn(body)

func char_respawn(body):
	rng.randomize()
	my_random_number = rng.randf_range(-400, 400)
	#print (my_random_number)
	yield(get_tree().create_timer(1), "timeout")
	body.percentage = 0
	body.stocks -= 1
	body.global_position.x = get_node("../Respawn").global_position.x + my_random_number
	body.global_position.y = get_node("../Respawn").global_position.y
	body.frame()
	charstate = body.get_node("StateMachine")
	charstate.state = charstate.states.RESPAWN

func respawn(body):
	charstate = body.get_node("StateMachine")
	charstate.state = charstate.states.DEAD
	body.velocity = Vector2(0,0)


func _on_NW_body_entered(body):
	pass # Replace with function body.


func _on_NE_body_entered(body):
	pass # Replace with function body.

