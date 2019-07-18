extends Area2D

func _on_TwinLion_body_entered(body):
	if(body.get_name() == "Player"):
		body.wonderful = true
		print("Wonderful")
		.hide()

