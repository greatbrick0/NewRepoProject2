extends Node
class_name FireBallFactory

var fireballObj: = preload("res://fire.tscn")

func CreateFireball() -> Node2D:
	print("created fireball")
	var fireRef: Node2D = fireballObj.instantiate()
	add_child(fireRef)
	return fireRef
