extends Node2D



# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _draw():
	var center = get_viewport_rect().size / 2
	var radius = 100
	draw_circle(center, radius, Color(808080, 0.099))

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
