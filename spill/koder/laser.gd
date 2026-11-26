extends Area2D


func _on_knapp_laser() -> void:
	queue_free()


func _on_body_entered(body: Node2D) -> void:
	
