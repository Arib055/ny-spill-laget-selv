extends Area2D

var aktiv = true

func _ready():
	body_entered.connect(_on_body_entered)

	while true:
		await get_tree().create_timer(1.3).timeout
		aktiv = not aktiv
		$Polygon2D.visible = aktiv

		if aktiv:
			for body in get_overlapping_bodies():
				_on_body_entered(body)

func _on_body_entered(body):
	if body is CharacterBody2D and aktiv:
		get_tree().call_deferred("reload_current_scene")
