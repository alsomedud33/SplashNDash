extends StaticBody2D



#func _process(delta):
#	yield(get_node("Timer").start(8), "timeout")
#	queue_free()


func _on_Timer_timeout():
	queue_free()
