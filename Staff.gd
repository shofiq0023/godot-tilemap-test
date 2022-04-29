extends Node2D


func _ready() -> void:
	pass # Replace with function body.

func _physics_process(delta: float) -> void:
	look_at(get_global_mouse_position());
