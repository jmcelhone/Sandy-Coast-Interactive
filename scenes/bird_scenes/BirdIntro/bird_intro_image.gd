extends Node2D

const IMAGE_PATH := "res://assets/snowy-plover-1.jpg"
const IMAGE_SIZE := Vector2(1440, 1080)   # displayed size
const IMAGE_Y := -380                      # top edge of the image
const BORDER := 6                         # border thickness in pixels
const LEFT_FRACTION := 0.5                # how much of the screen the left side covers

var tex: Texture2D = load(IMAGE_PATH)


func _draw() -> void:
	var screen := get_viewport_rect().size
	var left_center_x := screen.x * LEFT_FRACTION / 2.0
	var pos := Vector2(left_center_x - IMAGE_SIZE.x / 2.0, IMAGE_Y)

	var border := Vector2(BORDER, BORDER)
	draw_rect(Rect2(pos - border, IMAGE_SIZE + border * 2), Color.WHITE)
	draw_texture_rect(tex, Rect2(pos, IMAGE_SIZE), false)
