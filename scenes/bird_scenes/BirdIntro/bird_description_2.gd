extends Node2D

const BIRD_DATA := "res://data/bird_description.tres"


func _ready() -> void:
	var data = load(BIRD_DATA)

	var box := Label.new()
	box.text = data.BodyText
	box.autowrap_mode = TextServer.AUTOWRAP_WORD_SMART
	# Right 40% of the screen, below the header
	box.anchor_left = 0.5
	box.anchor_right = 1.0
	box.anchor_top = 0.0
	box.anchor_bottom = 1.0
	box.offset_left = 0
	box.offset_right = 0
	box.offset_top = 86
	box.offset_bottom = 0
	
	var bg := StyleBoxFlat.new()
	bg.bg_color = Color("#EDD079", 0.6)   # hex color, 60% opaque
	bg.set_content_margin_all(16)         # padding so text doesn't touch the edges
	box.add_theme_stylebox_override("normal", bg)

	var layer := CanvasLayer.new()
	layer.layer = 2
	add_child(layer)
	layer.add_child(box)
