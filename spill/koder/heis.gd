extends Area2D

var klar = false
var player
@export var direction:int = 1

func _on_body_entered(body: Node2D) -> void:
	klar = true
	player = body


func _on_body_exited(body: Node2D) -> void:
	klar = false
	player = null
	
func _physics_process(_delta):
	if Input.is_action_just_pressed("use") and klar == true:
		player.position.y += -570 * direction
