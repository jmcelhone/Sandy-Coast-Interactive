extends Button

func _ready() -> void:
	pressed.connect(_on_pressed)

# no go on var needed here
func _on_pressed() -> void:
	SceneManager.result_con = get_parent().consequence_2
	SceneManager.change_scene("res://scenes/bird_scenes/Consequence/consequence.tscn")
