extends Button

func _ready() -> void:
	pressed.connect(_on_pressed)

func _on_pressed() -> void:
	if get_parent().EndTruth:
		SceneManager.change_scene("res://scenes/bird_scenes/EndScene/end_scene.tscn")
	else:
		SceneManager.selected_decision = get_parent().decision
		SceneManager.change_scene("res://scenes/bird_scenes/Decision/decision_scene.tscn")
