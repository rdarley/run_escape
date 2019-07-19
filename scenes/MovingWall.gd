extends KinematicBody2D
# This script controls movement
const UP = Vector2(0, -1)
var motion = Vector2()
export var speed = 200
var dir = 1
var scaler = 1

func _physics_process(delta):
	motion.x = 0
	motion.y = dir * speed * scaler
	
	if is_on_floor():
		dir = -1
		scaler = 1
	
	if is_on_ceiling():
		dir = 1
		scaler = 2
	
	motion = move_and_slide(motion, UP)
