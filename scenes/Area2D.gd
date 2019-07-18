extends Area2D


func _on_Area2D_body_entered(body):
	if(body.get_name() == "Player"):
		print("YEAH")
		get_node("../TobiasDialogue").show()


func _on_Area2D_body_exited(body):
	if(body.get_name() == "Player"):
		print("NO")
		get_node("../TobiasDialogue").hide()
