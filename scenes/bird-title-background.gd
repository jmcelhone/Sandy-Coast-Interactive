extends Node2D

const BACKGROUND := "res://assets/waves-background.jpg"

func _ready() -> void:
	set_background(BACKGROUND)

func set_background(path: String) -> void:
	var sprite := Sprite2D.new()
	sprite.texture = load(path)
	sprite.centered = false
	sprite.z_index = -1
	add_child(sprite)

	var fit := func():
		sprite.scale = get_viewport_rect().size / sprite.texture.get_size()
	fit.call()
	get_viewport().size_changed.connect(fit)
