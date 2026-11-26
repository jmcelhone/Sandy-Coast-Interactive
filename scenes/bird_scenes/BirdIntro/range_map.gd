extends Node2D

const IMAGE_PATH := "res://assets/us.svg"
const IMAGE_WIDTH := 1000      # displayed width; height follows the SVG's aspect ratio
const IMAGE_Y := -200          # top edge, relative to this node
const LEFT_FRACTION := 0.25     # how much of the screen the left side covers

var tex: Texture2D = load(IMAGE_PATH)


func _draw() -> void:
	var size := Vector2(IMAGE_WIDTH, IMAGE_WIDTH * tex.get_height() / tex.get_width())
	var x := get_viewport_rect().size.x * LEFT_FRACTION / 2.0 - size.x / 2.0
	draw_texture_rect(tex, Rect2(x, IMAGE_Y, size.x, size.y), false)
