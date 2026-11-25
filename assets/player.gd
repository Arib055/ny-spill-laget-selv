
extends CharacterBody2D

@export var speed = 850.0

@onready var sprite = $AnimatedSprite2D

func _physics_process(_delta):
	var direction = Input.get_axis("ui_left", "ui_right")

	velocity.x = direction * speed
	velocity.y = 0

	if direction == 0:
		sprite.play("stand")
	else:
		sprite.play("run")
		sprite.flip_h = direction < 0

	move_and_slide()
