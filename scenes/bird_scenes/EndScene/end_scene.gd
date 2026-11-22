extends Node2D

var end_data: EndData

func _ready() -> void:
	end_data = SceneManager.end_result
	
	$Title.text  = end_data.Title
	$BodyText.text = end_data.BodyText
