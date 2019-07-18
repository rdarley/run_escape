extends Area2D

export(String) var help_node



func _on_HelpZone_body_entered(body):
	if(body.get_name() == "Player"):
		get_node(help_node).show()


func _on_HelpZone_body_exited(body):
	if(body.get_name() == "Player"):
		get_node(help_node).hide()
