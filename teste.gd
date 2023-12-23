extends Node2D

var x1 = 0
var x2 = 0
var x3 = 0 
var x4 = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_timer_timeout():
	if $dot1.visible :
		$dot1.hide()
		$dot2.hide()
		$dot3.show()
		$dot4.show()
		
	else:
		$dot2.show()
		$dot1.show()
		$dot3.hide()
		$dot4.hide()

func _on_h_slider_value_changed(value):
	$Timer.wait_time = value

func _on_button_pressed():
	$dot1.position.x = $dot1.position.x + 10 
	$dot3.position.x = $dot3.position.x + 10 
	$dot2.position.x = $dot2.position.x - 10 
	$dot4.position.x = $dot4.position.x - 10 
	
func _on_button_2_pressed():
	$dot1.position.x = $dot1.position.x - 10 
	$dot3.position.x = $dot3.position.x - 10 
	$dot2.position.x = $dot2.position.x + 10 
	$dot4.position.x = $dot4.position.x + 10 

func _on_v_slider_value_changed(value):
	$dot1.position.x = x1 + value
	$dot3.position.x = x3 + value
	$dot2.position.x = x2 - value
	$dot4.position.x = x4 - value
