extends CharacterBody2D

@export var PointsManager : Node

func Move(dir):
	match(dir):
		"LEFT": return PointsManager.MoveLeft()
		"RIGHT": return PointsManager.MoveRight()
