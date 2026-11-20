extends Button

func _ready() -> void:
	pressed.connect(_on_pressed)

func _on_pressed() -> void:
	SceneManager.selected_decision = get_parent().decision_1
	SceneManager.change_scene("res://scenes/bird_scenes/Decision/decision_scene.tscn")
