extends CharacterBody2D
@export var stats: character_stats



func _physics_process(delta):
	
	
	var input_vector := Vector2(
		Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left"),
		Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	)

	velocity = input_vector.normalized() * stats.speed
	move_and_slide()
