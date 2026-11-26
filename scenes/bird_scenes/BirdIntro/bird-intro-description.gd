extends Label

const HEADER_HEIGHT := 86   # height of your header area
const MARGIN := 20
const LABEL_WIDTH := 300

@onready var label: Label = %BirdDescription2

func _ready() -> void:
	var screen := get_viewport_rect().size
	label.size = Vector2(300, label.size.y)
	label.text = "Your text here"
	label.horizontal_alignment = HORIZONTAL_ALIGNMENT_RIGHT
	label.position = Vector2(screen.x - label.size.x - 20, 120)
