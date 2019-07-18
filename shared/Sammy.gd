extends Area2D

export(String, FILE, "*.tscn") var next_world

func _on_Sammy_body_entered(body):
	if(body.get_name() == "Player"):
		get_tree().change_scene(next_world)
