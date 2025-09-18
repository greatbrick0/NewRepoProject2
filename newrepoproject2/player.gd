extends CharacterBody2D

@export var speed: float = 60
@export var gravity: float = 90

func _process(delta):
	velocity.x = 0
	
	if(Input.is_action_pressed("left")):
		velocity.x = -1 * speed
	if(Input.is_action_pressed("right")):
		velocity.x = 1 * speed
	
	if(is_on_floor()):
		velocity.y = 0
		if(Input.is_action_just_pressed("jump")):
			velocity.y = -200
	else:
		velocity.y += gravity * delta
	
	if(Input.is_action_just_pressed("attack")):
		var fireRef: Node2D = Fireballfactory.CreateFireball()
		fireRef.global_position = global_position
	
	move_and_slide()
