extends RigidBody2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var implusePoint = Vector2(0.0, $CollisionShape2D.shape.extents.y)
	print($CollisionShape2D.shape.extents)
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		apply_impulse(implusePoint, Vector2(0,50))
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_RIGHT):
		apply_impulse(implusePoint, Vector2(0,10))


func _on_body_entered(body):
	print("collision with" + body.get_name())
