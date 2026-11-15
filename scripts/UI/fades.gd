
extends Node

@export var fade_duration: float = 2.0

var screen_layer: CanvasLayer
var screen_overlay: ColorRect
var screen_tween: Tween


func _ready() -> void:
	# Create a black overlay for full-screen fades
	screen_layer = CanvasLayer.new()
	screen_layer.layer = 100
	add_child(screen_layer)

	screen_overlay = ColorRect.new()
	screen_overlay.color = Color.BLACK
	screen_overlay.color.a = 0.0
	screen_overlay.set_anchors_and_offsets_preset(
		Control.PRESET_FULL_RECT
	)
	screen_overlay.mouse_filter = Control.MOUSE_FILTER_IGNORE
	screen_layer.add_child(screen_overlay)


# Fade an individual object out
func fade_out(target: CanvasItem) -> void:
	var tween = create_tween()
	tween.tween_property(
		target, "modulate:a", 0.0, fade_duration
	)
	await tween.finished


# Fade an individual object in
func fade_in(target: CanvasItem) -> void:
	var tween = create_tween()
	tween.tween_property(
		target, "modulate:a", 1.0, fade_duration
	)
	await tween.finished


# Fade the whole screen to black and back
func fade_screen() -> void:
	if screen_tween and screen_tween.is_running():
		screen_tween.kill()

	screen_tween = create_tween()
	screen_tween.tween_property(
		screen_overlay, "color:a", 1.0, fade_duration
	)
	screen_tween.tween_property(
		screen_overlay, "color:a", 0.0, fade_duration
	)
	await screen_tween.finished
