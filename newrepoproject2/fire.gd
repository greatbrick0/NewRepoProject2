extends Node2D

@export var move_dir: Vector2 = Vector2(400, 0)

func _process(delta):
	global_position = global_position + (move_dir * delta)
