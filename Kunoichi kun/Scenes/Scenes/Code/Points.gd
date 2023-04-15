extends Node

@export var size : Vector2
var pos = Vector2(1, 0)

func GetPosition(pos):
	match(pos):
		Vector2(1, 0): return $Marker2D.position
		Vector2(2, 0): return $Marker2D2.position
		Vector2(3, 0): return $Marker2D3.position
		Vector2(4, 0): return $Marker2D4.position

func MoveLeft():
	if pos.x < 2:
		pos.x = 1
	else:
		pos.x -= 1
	return GetPosition(pos)

func MoveRight():
	if pos.x < size.x - 1:
		pos.x += 1
	else:
		pos.x = size.x
	return GetPosition(pos)
