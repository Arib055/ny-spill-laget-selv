extends Area2D

var klar = false

func _ready():
	$LineEdit.hide()
	body_entered.connect(_on_body_entered)
	body_exited.connect(_on_body_exited)
	$LineEdit.text_submitted.connect(sjekk_kode)

func _on_body_entered(body):
	if body is CharacterBody2D:
		klar = true

func _on_body_exited(body):
	if body is CharacterBody2D:
		klar = false
		$LineEdit.hide()

func _physics_process(_delta):
	if Input.is_action_just_pressed("use") and klar:
		$LineEdit.show()
		$LineEdit.grab_focus()

func sjekk_kode(kode):
	if kode == "4554":
		$LineEdit.max_length = 0
		$LineEdit.text = "Riktig kode"
		$LineEdit.editable = false
		get_tree().paused = true
	else:
		$LineEdit.clear()
		$LineEdit.placeholder_text = "Feil kode! Prøv på nytt"
