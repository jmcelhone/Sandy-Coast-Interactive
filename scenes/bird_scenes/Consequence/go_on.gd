extends Button

const Y := 400   # distance from the top of the screen


func _ready() -> void:
	pressed.connect(_on_pressed)
	position = Vector2((get_viewport_rect().size.x - size.x) / 2.0, Y)


func _on_pressed() -> void:
	if owner.EndTruth:
		SceneManager.change_scene("res://scenes/bird_scenes/EndScene/end_scene.tscn")
	else:
		SceneManager.selected_decision = owner.decision
		SceneManager.change_scene("res://scenes/bird_scenes/Decision/decision_scene.tscn")
