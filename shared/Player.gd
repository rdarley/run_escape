extends KinematicBody2D

const UP = Vector2(0,-1)
const ACCELERATION = 50
const GRAVITY = 20
const MAX_SPEED = 200
const JUMP_HEIGHT = -550
const MAX_JUMPS = 2
const DEATH_HEIGHT = 1200
var motion = Vector2()
var wonderful = false
var jump_count = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	motion.y +=GRAVITY
	var friction = false
	
	if Input.is_action_pressed("ui_right"):
		motion.x = min(motion.x+ACCELERATION, MAX_SPEED)
		$Sprite.flip_h = false
		$Sprite.play("Run")
	elif Input.is_action_pressed("ui_left"):
		motion.x = max(motion.x-ACCELERATION, -MAX_SPEED)
		$Sprite.flip_h = true
		$Sprite.play("Run")
	else:
		$Sprite.play("Idle")
		friction = true
	
	if is_on_floor():
		jump_count = 0
		if Input.is_action_just_pressed("ui_up"):
			motion.y = JUMP_HEIGHT
			jump_count += 1
		if friction == true:
			motion.x = lerp(motion.x,0,.2)
	else:
		if Input.is_action_just_pressed("ui_up") && jump_count < MAX_JUMPS && wonderful:
			motion.y = JUMP_HEIGHT
			jump_count += 1
		if motion.y < 0:
			$Sprite.play("Jump")
		else:
			$Sprite.play("Fall")
		if friction == true:
			motion.x = lerp(motion.x,0,.05)
	
	motion = move_and_slide(motion,UP)
	if motion.y > DEATH_HEIGHT:
		get_tree().reload_current_scene()
	pass