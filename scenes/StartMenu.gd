extends Control

func _on_StartGame_pressed():
	get_tree().change_scene("scenes/World1.tscn")

func _on_QuitGame_pressed():
	get_tree().quit()
