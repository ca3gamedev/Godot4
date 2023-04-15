extends Node

@onready var idle = true
@onready var NotAttack = true
@onready var current = $IDLE
@onready var state_machine = $"../AnimationTree".get("parameters/playback")

func _ready():
	current.MoveTo($"../".Move("LEFT"), "LEFT")


func _process(delta):
	if idle:
		match(current.Update()):
			"LEFT": 
				idle = false
				NotAttack = false
				current.MoveTo($"../".Move("LEFT"), "LEFT")
				ChangeState("WALK")
				$"WALK/End of Walk turn".start(0.7)
			"RIGHT": 
				idle = false
				NotAttack = false
				current.MoveTo($"../".Move("RIGHT"), "RIGHT")
				ChangeState("WALK")
				$"WALK/End of Walk turn".start(0.7)

func _physics_process(delta):
	current.Physics()

func ChangeState(state):
	$ChangeState.ChangeState(state)




func _on_allow_movement_timeout():
	idle = true
