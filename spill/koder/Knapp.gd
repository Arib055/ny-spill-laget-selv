extends Area2D

var klar = false
signal laser

func _ready():
	$Notat.hide()

func _on_body_entered(body: Node2D):
	klar = true

func _on_body_exited(body: Node2D):
	klar = false
	$Notat.hide()

func _physics_process(_delta):
	if Input.is_action_just_pressed("use") and klar:
		emit_signal("laser")
