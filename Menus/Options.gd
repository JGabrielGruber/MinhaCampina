extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$VBoxContainer/OptionButtonGame.grab_focus()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_ButtonBack_pressed():
	var child = get_tree().current_scene.get_child(get_tree().current_scene.get_child_count()-1)
	get_tree().current_scene.remove_child(child)
