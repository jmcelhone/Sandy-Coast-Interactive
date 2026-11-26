extends Node2D

@export_dir var image_folder: String = "res://assets/food_decision_images/"  # contains the good/bad subfolders
@export var margin: Vector2 = Vector2(60, 60)

const EXTENSIONS := ["png", "jpg", "jpeg", "webp", "svg"]

func _ready() -> void:
	populate()

func populate() -> void:
	for child in get_children():
		child.queue_free()

	var paths := _find_images(image_folder)
	if paths.is_empty():
		push_warning("No images found in %s" % image_folder)
		return

	var area := get_viewport_rect().size - margin * 2.0
	var cols := maxi(1, ceili(sqrt(paths.size() * area.x / area.y)))
	var rows := ceili(float(paths.size()) / cols)
	var cell := area / Vector2(cols, rows)

	for i in paths.size():
		var sprite := Sprite2D.new()
		sprite.texture = load(paths[i])
		sprite.position = margin + (Vector2(i % cols, i / cols) + Vector2(0.5, 0.5)) * cell
		add_child(sprite)

# Returns image paths from this folder and all subfolders, in sorted order.
func _find_images(folder: String) -> Array[String]:
	var paths: Array[String] = []
	var files := Array(DirAccess.get_files_at(folder))
	files.sort()
	for file in files:
		# Exported builds list files as "name.png.import" or "name.png.remap".
		var path := folder.path_join(file.trim_suffix(".import").trim_suffix(".remap"))
		if path.get_extension().to_lower() in EXTENSIONS and path not in paths:
			paths.append(path)
	var subs := Array(DirAccess.get_directories_at(folder))
	subs.sort()
	for sub in subs:
		paths.append_array(_find_images(folder.path_join(sub)))
	return paths
