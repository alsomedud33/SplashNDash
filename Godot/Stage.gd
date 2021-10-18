extends Node2D

export(PackedScene) var FOX
export(PackedScene) var WOLF

# Called when the node enters the scene tree for the first time.
func _ready():
	match Globals.css["char_1"]:
		"FOX":
			var instance = FOX.instance()
			instance.id = 1
			instance.stocks = Globals.css["stocks"]
			instance.global_position = get_node("SpawnPoint1").global_position
			self.add_child(instance)
			instance.turn(false)
			$Camera2D.add_target(instance)
		"WOLF":
			var instance = WOLF.instance()
			instance.id = 1
			instance.stocks = Globals.css["stocks"]
			instance.global_position = get_node("SpawnPoint1").global_position
			self.add_child(instance)
			instance.turn(false)
			$Camera2D.add_target(instance)
	match Globals.css["char_2"]:
		"FOX":
			var instance = FOX.instance()
			instance.id = 2
			instance.stocks = Globals.css["stocks"]
			instance.global_position = get_node("SpawnPoint2").global_position
			self.add_child(instance)
			instance.turn(true)
			$Camera2D.add_target(instance)
		"WOLF":
			var instance = WOLF.instance()
			instance.id = 2
			instance.stocks = Globals.css["stocks"]
			instance.global_position = get_node("SpawnPoint2").global_position
			self.add_child(instance)
			instance.turn(true)
			$Camera2D.add_target(instance)
#	$Camera2D.add_target($BMO)
	#$Camera2D.add_target($FOX)
	#$Camera2D.add_target($FOX2)
	#$Camera2D.add_target($Fox)
	pass




