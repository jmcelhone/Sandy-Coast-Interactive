extends Node2D

# This function pulls all assets from the nest_location and adds them to the background in a split view
# The Oregon Coast Aquarium only has to alter the next_location file to change the images
# The nest location file displays the images in alphabetic order in the game. You can instead put numbers
# in front of the images to ensure a set order occurs when choosing a nest location.
# Column images use a 3:4 crop in order to fit, adjust this as needed since this number was used for 5 choices
func _ready() -> void:
	# Split view uses the column images; once a nest is chosen, use the full images instead
	var dir := "res://assets/nest_location_columns/"
	if GameState.nest_index >= 0:
		dir = "res://assets/nest_location_full/"
	var n := -1 # position of the current image in the folder (used for selecting future background)
	for f in DirAccess.get_files_at(dir):
		if f.ends_with(".import"):
			n += 1
			# Once a nest is chosen, only load that image so it fills the whole background
			if GameState.nest_index >= 0 and n != GameState.nest_index:
				continue
			var s := Sprite2D.new() # Creates a sprite for each image in the file
			s.name = f.trim_suffix(".import").get_basename()
			s.texture = load(dir + f.trim_suffix(".import"))
			add_child(s)
	get_viewport().size_changed.connect(_layout)
	_layout()

# This function divides the background layout between all the images loaded from the previous function
# Because this works off of the children created for the background
func _layout() -> void:
	var rect: Rect2 = get_viewport().get_visible_rect()
	var slot: float = rect.size.x / float(get_child_count())
	var i := 0
	for child in get_children():
		if child is Sprite2D:
			child.centered = false
			child.offset = Vector2.ZERO
			var tex: Vector2 = child.texture.get_size() # divides the view by the number of children pulled from the previous function
			# Image is stretched to fit the vertical and column width. Image cropping might be needed in order to create a more polished design.
			child.scale = Vector2(slot / tex.x, rect.size.y / tex.y)
			child.position = rect.position + Vector2(slot * i, 0)
			i += 1
