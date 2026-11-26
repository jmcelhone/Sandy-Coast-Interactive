extends Button


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pressed.connect(_on_pressed)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _on_pressed() -> void:
	GameState.reset()
	SceneManager.change_scene("res://scenes/bird_scenes/BirdIntro/bird_intro.tscn")
