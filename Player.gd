extends KinematicBody2D

var moveSpeed = 5000;

func _ready() -> void:
	pass # Replace with function body.

func _physics_process(delta: float) -> void:
	var velocity = Vector2(0,0);
	if Input.is_action_pressed('up'):
		velocity.y = (-1 * moveSpeed) * delta;
	if Input.is_action_pressed('down'):
		velocity.y = (1 * moveSpeed) * delta;
	if Input.is_action_pressed('left'):
		velocity.x = (-1 * moveSpeed) * delta;
	if Input.is_action_pressed('right'):
		velocity.x = (1 * moveSpeed) * delta;
	
	velocity = move_and_slide(velocity);
	getDirectionAnimation();
	
func getDirectionAnimation():
	if get_local_mouse_position().x < 0:
		$Sprite.flip_h = true;
	else:
		$Sprite.flip_h = false;
