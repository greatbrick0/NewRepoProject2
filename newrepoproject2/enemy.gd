extends CharacterBody2D

@export var gravity: float = 90

func _process(delta):
	velocity.x = 0
	if(is_on_floor()):
		velocity.y = -200
	else:
		velocity.y += gravity * delta
	
	move_and_slide()

func _on_area_2d_body_entered(body):
	print(body.name)
	if(body.name == "enemy" or body.name == "StaticBody2D"): return
	print("you lose")
	body.get_child(0).visible = false
	await get_tree().create_timer(3).timeout
	get_tree().reload_current_scene()
	

func _on_area_2d_area_entered(area):
	call_deferred("queue_free")
