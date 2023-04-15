extends "res://Scenes/Player/code/BasicState.gd"

func Update():
	if Input.is_action_just_released("LEFT"):
		return "LEFT"
	if Input.is_action_just_released("RIGHT"):
		return "RIGHT"

func MoveTo(pos, dir):
	$"../../".position = pos
	
	match(dir):
		"LEFT" : 
			$"../../Left and Right".play("LEFT")
		"RIGHT" : 
			$"../../Left and Right".play("Right")
