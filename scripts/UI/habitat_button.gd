extends Button

func _ready() -> void:
	pressed.connect(_on_pressed)

func _on_pressed() -> void:
	SceneManager.change_scene("res://scenes/habitat_game.tscn")
