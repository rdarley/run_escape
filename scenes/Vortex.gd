extends KinematicBody2D
# This script controls movement
const UP = Vector2(0, -1)
var motion = Vector2()

func _physics_process(delta):
	
	if is_on_ceiling():
		get_tree().change_scene("scenes/StartMenu.tscn")
	
	motion = move_and_slide(motion, UP)
