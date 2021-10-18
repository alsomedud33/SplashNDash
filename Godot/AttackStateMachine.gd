#extends StateMachine


#func _ready():
#	add_state("NONE")
#	add_state("UP_TILT")
#	call_deferred('set_state', states.NONE)

#func get_transition(delta):
#	match state:
#		states.NONE:
#			if Input.is_action_just_pressed("attack") && can_UP_TILT():
#				parent.frame()
#				return states.UP_TILT
#		states.UP_TILT:
#			if parent.frame >13 || !can_UP_TILT():
#					return states.NONE



#func enter_state(new_state, old_state):
#	match new_state:
#		states.NONE:
#			parent.play_animation('STAND')
#			parent.states.text = str('STAND')
#		states.UP_TILT:
#			parent.play_animation('UP_TILT')
#			parent.states.text = str('UP_TILT')


#func can_UP_TILT() -> bool:
#	var main_states = parent.state_machine.states
#		return ![main_states.RUN, main_states.FULL_HOP, main_states.SHORT_HOP, main_states.AIR, main_states.FREE_FALL, main_states.AIR_DODGE, main_states.LEDGE_CATCH,main_states.LEDGE_HOLD,main_states.LEDGE_CLIMB,main_states.LEDGE_ROLL].has(parent.state_machine.state)

