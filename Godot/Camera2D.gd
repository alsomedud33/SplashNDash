extends Camera2D

#onready var p1 = get_parent().get_node("FOX")
#onready var p2 = get_parent().get_node("BMO")

#export var zoomSpeed = 0.05
#var zoommin = 0.6
#var zoommax = 0.9

#func _physics_process(delta):
#	position = (p1.position + p2.position) / Vector2(2,2)
#	
#	zoom.x = max(zoommin , abs( (p1.position.x-p2.position.x)/300) )
#	zoom.y = max(zoommin , abs( (p1.position.x-p2.position.x)/300) )
#	
#	if zoom.x > zoommax :
#		zoom.y = zoommax
#		zoom.x = zoommax
export var move_speed = 0.5  # camera position lerp speed

export var zoom_speed = 0.25  # camera zoom lerp speed

export var min_zoom = 0.6  # camera won't zoom closer than this

export var max_zoom = 0.9  # camera won't zoom farther than this

export var margin = Vector2(500, 100)  # include some buffer area around targets


var targets = []  # Array of targets to be tracked.


onready var screen_size = get_viewport_rect().size

func _process(delta):
	if !targets:
		var temp = Rect2(position, Vector2.ONE)
		temp = temp.grow_individual(margin.x, margin.y, margin.x, margin.y)
		zoom = lerp(zoom, Vector2.ONE * 1, zoom_speed)
		return
	# Keep the camera centered between the targets

	var p = Vector2.ZERO
	for target in targets:
		p += target.position
	p /= targets.size()
	position = lerp(position, p, move_speed)
	# Find the zoom that will contain all targets

	var r = Rect2(position, Vector2.ONE)
	for target in targets:
		r = r.expand(target.position)
	r = r.grow_individual(margin.x, margin.y, margin.x, margin.y)
#	var d = max(r.size.x, r.size.y)
	var z
	if r.size.x > r.size.y * screen_size.aspect():
		z = clamp(r.size.x / screen_size.x, min_zoom, max_zoom)
	else:
		z = clamp(r.size.y / screen_size.y, min_zoom, max_zoom)
	zoom = lerp(zoom, Vector2.ONE * z, zoom_speed)

func add_target(t):
	if not t in targets:
		targets.append(t)

func remove_target(t):
	if t in targets:
		targets.remove(t)



