extends HBoxContainer


func _ready() -> void:
	# Size the container to the area you want the buttons spread across
	var screen := get_viewport_rect().size
	position = Vector2(0, 300)
	size = Vector2(screen.x, screen.y - 300) 

	for child in get_children():
		if child is Control:
			child.custom_minimum_size = Vector2(220, 120)
			child.add_theme_font_size_override("font_size", 32)
			child.size_flags_horizontal = Control.SIZE_EXPAND | Control.SIZE_SHRINK_CENTER
			child.size_flags_vertical = Control.SIZE_SHRINK_CENTER
