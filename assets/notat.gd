extends Area2D

var klar = false

func _ready():
	$Notat.hide()

func _on_body_entered(body: Node2D):
	klar = true

func _on_body_exited(body: Node2D):
	klar = false
	$Notat.hide()

func _physics_process(_delta):
	if Input.is_action_just_pressed("use") and klar:
		$Notat.visible = not $Notat.visible
