extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$VBoxContainer/ButtonStart.grab_focus()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_ButtonStart_pressed():
	get_tree().change_scene("res://Levels/Main/L_Main.tscn")


func _on_ButtonOptions_pressed():
	var options = load("res://Menus/Options.tscn").instance()
	get_tree().current_scene.add_child(options)


func _on_ButtonQuit_pressed():
	get_tree().quit()
