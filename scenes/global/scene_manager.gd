extends Node

var selected_decision: DecisionData

var result_con: ConsequenceData


#most likely needed for end scene
#var choices: Array[String] = []
var score: int = 0
var end_result: EndData

func chose_end() -> void:
	if score > 2:
		end_result = load("res://data/Food/End/greatend.tres")
	elif score > 0:
			end_result = load("res://data/Food/End/goodend.tres")
	else:
		end_result = load("res://data/Food/End/badend.tres")


func change_scene(path: String) -> void:
	get_tree().change_scene_to_file(path)
