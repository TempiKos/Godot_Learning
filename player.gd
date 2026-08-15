extends Polygon2D

var speed = 300
var current_speed = speed
var screen_size

func _ready():
	screen_size = get_viewport_rect().size


func _process(delta):
	if Input.is_key_pressed(KEY_SHIFT):
		current_speed = speed * 2
	else:
		current_speed = speed
	var direction = Input.get_vector(
		"move_left",
		"move_right",
		"move_up",
		"move_down"
	)
	
	position += direction * current_speed * delta
	position.x = clamp(position.x, 0, screen_size.x)
	position.y = clamp(position.y, 0, screen_size.y)
