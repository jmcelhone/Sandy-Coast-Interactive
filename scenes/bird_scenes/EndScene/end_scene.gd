extends Node2D

var end_data: EndData

func _ready() -> void:
	end_data = SceneManager.end_result

	$EndHeader/EndHeaderPanel/EndHeaderLabel.text = end_data.Title
	$BodyText.text = end_data.BodyText

	match end_data.resource_path:
		"res://data/End/greatend.tres":
			$CanvasLayer/NestEggs.tex = load("res://assets/bird_end_nests/nest_2_eggs.png")
		"res://data/End/goodend.tres":
			$CanvasLayer/NestEggs.tex = load("res://assets/bird_end_nests/nest_1_egg.png")
		"res://data/End/badend.tres":
			$CanvasLayer/NestEggs.tex = load("res://assets/bird_end_nests/nest_empty.png")
