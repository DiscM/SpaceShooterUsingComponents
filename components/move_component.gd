class_name MoveComponent
extends Node

##Allows us to edit element in the inspector, Vector2 is x & y arguments
@export var velocity: Vector2
##Allows us to edit element in the inspector
@export var actor: Node2D 

##delta is the time elapsed since previous frame, this function is called EVERY frame
func _process(delta: float) -> void:
	##Every frame the actor is moved by the velocity multiplied by delta 
	actor.translate(velocity * delta)
	
