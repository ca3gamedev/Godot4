extends Node

func ChangeState(state):
	var newcurrent = $"../IDLE"
	match(state):
		"WALK" : 
			newcurrent = $"../WALK"
			$"../".state_machine.travel("walk keyframe")
		"IDLE" : 
			newcurrent = $"../IDLE"
	
	$"../".current = newcurrent
