extends CharacterBody2D

var speed = 300
var current_speed = speed

func _physics_process(delta):

	if Input.is_action_pressed("run"):
		current_speed = speed * 2
	else:
		current_speed = speed

	var direction = Input.get_vector(
		"move_left",
		"move_right",
		"move_up",
		"move_down"
	)

	velocity = direction * current_speed
	move_and_slide()

	if Input.is_action_just_pressed("dash"):
		print("DASH!")
