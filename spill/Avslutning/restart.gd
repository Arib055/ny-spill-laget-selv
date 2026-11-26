extends Node2D

@onready var restart_button = $RestartLayer/Overlay/RestartButton

func _ready():
	restart_button.pressed.connect(_on_restart_pressed)

func _on_restart_pressed():
	get_tree().change_scene_to_file("res://Meny/menyvideo.tscn")
