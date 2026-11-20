extends Node

func _ready() -> void:
	get_viewport().size_changed.connect(_layout)
	_layout()

func _layout() -> void:
	var rect: Rect2 = get_viewport().get_visible_rect()
	var slot: float = rect.size.x / 3.0
	var i := 0
	for child in get_children():
		if child is Sprite2D:
			child.centered = false
			child.offset = Vector2.ZERO
			var tex: Vector2 = child.texture.get_size()
			child.scale = Vector2(slot / tex.x, rect.size.y / tex.y)
			child.position = rect.position + Vector2(slot * i, 0)
			i += 1
