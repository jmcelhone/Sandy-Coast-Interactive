extends Button

func _ready() -> void:
	pressed.connect(_on_pressed)

func _on_pressed() -> void:
	GameState.reset()
	SceneManager.change_scene("res://scenes/main.tscn")
	
