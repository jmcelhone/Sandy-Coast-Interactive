extends Label

const MARGIN := 100    # space on the left and right sides
const TOP := 120       # header height
const HEIGHT := 350    # box height

func _ready() -> void:
	autowrap_mode = TextServer.AUTOWRAP_WORD_SMART

	var bg := StyleBoxFlat.new()
	bg.bg_color = Color("#F0FAFF", 0.6)
	bg.set_content_margin_all(16)
	add_theme_stylebox_override("normal", bg)

	var screen := get_viewport_rect().size
	position = Vector2(MARGIN, TOP)
	size = Vector2(screen.x - MARGIN * 2, HEIGHT)
