extends "res://Scenes/Player/code/BasicState.gd"

func ReturntoIdle():
	$"../".NotAttack = true
	$"../".ChangeState("IDLE")

func Physics():
	pass


func _on_end_of_walk_turn_timeout():
	print("RETURN TO IDLE")
	ReturntoIdle()
