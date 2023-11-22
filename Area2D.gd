extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_key_pressed(KEY_RIGHT):
		self.move_local_x(0.5)
	if Input.is_key_pressed(KEY_LEFT):
		self.move_local_x(-0.5)
	if Input.is_key_pressed(KEY_UP):
		self.move_local_y(-0.5)
	if Input.is_key_pressed(KEY_DOWN):
		self.move_local_y(0.5)


func _on_area_entered(area):
	print("Entered:")
	print(area)


func _on_area_exited(area):
	print("Exit:")
	print(area)
