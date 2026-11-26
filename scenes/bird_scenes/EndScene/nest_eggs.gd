extends Node2D

const IMAGE_SIZE := Vector2(125, 125)   # displayed size
const IMAGE_Y := 350                   # top edge of the image
const BORDER := 6                       # border thickness in pixels

var tex: Texture2D:
	set(value):
		tex = value
		queue_redraw()

func _draw() -> void:
	if tex == null:
		return
	var screen := get_viewport_rect().size
	var pos := Vector2((screen.x - IMAGE_SIZE.x) / 2.0, IMAGE_Y)

	draw_texture_rect(tex, Rect2(pos, IMAGE_SIZE), false)
