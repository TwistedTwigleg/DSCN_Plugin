extends Polygon2D

export (float) var SPEED = 40;

func _process(delta):
	for child in get_children():
		if (child is Node2D):
			child.rotation_degrees += delta * SPEED;

func _on_button_pressed():
	get_node("Sprite").visible = !get_node("Sprite").visible;
