extends RichTextLabel

@export var letter_delay: float = 0.05
@export var autoplay: bool = true

func _ready() -> void:
	if autoplay:
		play_text()


func play_text() -> void:
	visible_characters = 0

	var total_characters = get_total_character_count()

	for i in range(total_characters):
		visible_characters = i + 1
		await get_tree().create_timer(letter_delay).timeout


func show_all_text() -> void:
	visible_characters = -1
