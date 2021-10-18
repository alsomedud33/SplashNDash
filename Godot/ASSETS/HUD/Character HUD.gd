extends NinePatchRect

export var id: int = 1
export var FOX_texture: Texture
export var WOLF_texture: Texture

onready var percentageLabel = get_node("Percentage")
onready var iconTexture = get_node("Icon")
onready var playerNo = get_node("Player No")
onready var playerStocks = get_node("Stocks")

var stocks = 0# setget ,Globals.player_2["percentage"]
var percentage = 0# setget globalPercentage

# Called when the node enters the scene tree for the first time.
func _ready():
#	yield(get_tree().create_timer(1), "timeout")
	icon_texture()
	player_no()
	globalPercentage()


func globalPercentage():
	match id:
		1:
			percentage = Globals.player_1["percentage"]
			stocks = Globals.player_1["stocks"]
		2:
			percentage = Globals.player_2["percentage"]
			stocks = Globals.player_2["stocks"]
	playerStocks.text = str(stocks)
	percentageLabel.text = str(percentage) + "%"

func icon_texture():
	match id:
		1:
			match Globals.css["char_1"]:
				"FOX":
					iconTexture.texture = FOX_texture
				"WOLF":
					iconTexture.texture = WOLF_texture
			iconTexture.material.set("shader_param/replace 0",Color(0.984314, 0.380392, 0.364706))
		2:
			match Globals.css["char_2"]:
				"FOX":
					iconTexture.texture = FOX_texture
				"WOLF":
					iconTexture.texture = WOLF_texture
			iconTexture.material.set("shader_param/replace 0",Color(0.396078, 0.364706, 0.984314))

func player_no():
	playerNo.text = "P" +str(id)

func _process(delta):
	globalPercentage()
#	percentageLabel.text = str(percentage) + "%"
