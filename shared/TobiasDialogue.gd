extends Sprite

export(String) var help_text

func _ready():
	get_node("RichTextLabel").set_text(help_text)
	pass # Replace with function body.


