class_name MoveInputComponent
extends Node

@export var move_stats: MoveStats
##Move input component takes input from the user and sets the velocity on the Move Component
@export var move_component: MoveComponent

func _input(event: InputEvent) -> void:
	##get_axis will return either 1 or -1 depending on ui returned, 0 is assumed if neither is pressed
	var input_axis = Input.get_axis("ui_left", "ui_right")
	move_component.velocity = Vector2(input_axis * move_stats.speed, 0)
