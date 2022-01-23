extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
func _ready():
	Transitions.fade_in()
	if !MusicController.music.stream == MusicController.css_music:
		MusicController.play_music(MusicController.css_music)
	#yield(MusicController.tween,"tween_completed")
	MusicController.fade_in()

signal banner
onready var anim = $ReadyToFightBanner/AnimationPlayer
onready var canvas = $ReadyToFightBanner
var selected = true
var input_pause = false


var ready = {
	"char_1": "",
	"char_2": "",
	"stocks": 1,
	"time": 1
	}
	

# Called when the node enters the scene tree for the first time.
func _process(delta):
	Globals.css["char_1"] = ready["char_1"]
	Globals.css["char_2"] = ready["char_2"]
	Globals.player_1["stocks"] = Globals.css["stocks"]
	Globals.player_2["stocks"] = Globals.css["stocks"]
	
func readytofight():
	if ready["char_1"] and ready["char_2"] != "":
		selected = true
		if selected == true:
			canvas.visible = true
			anim.play('ReadyToFight')
			selected = false

	else:
		if selected == false:
			anim.play("NotReady")
		#canvas.visible = false
		selected = true
		#emit_signal("banner")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_PLAYER_1_char_ready(character, id):
	ready["char_1"] = character
	print(ready["char_2"])
	readytofight()


func _on_PLAYER_2_char_ready(character, id):
	ready["char_2"] = character
	print (ready["char_2"])
	readytofight()

func _on_PLAYER_1_char_unready(character, id):
	ready["char_1"] = ""
	readytofight()
	
func _on_PLAYER_2_char_unready(character, id):
	ready["char_2"] = ""
	readytofight()

