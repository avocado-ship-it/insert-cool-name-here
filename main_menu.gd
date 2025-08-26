extends Control

@onready var main_bussy: VBoxContainer = $"main bussy"
@onready var opussy_panel: Panel = $"opussy panel"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	main_bussy.visible = true
	opussy_panel.visible = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass 


func _on_start_button_pressed() -> void:
	get_tree().change_scene_to_file("res://insert-cool-name-here/main.tscn")


func _on_options_button_pressed() -> void:
	print ("oppussy activated")
	main_bussy.visible = false
	opussy_panel.visible = true


func _on_exit_button_pressed() -> void:
	get_tree().quit()


func _on_back_options_pressed() -> void:
	_ready()
