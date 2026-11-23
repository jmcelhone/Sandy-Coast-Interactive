extends Node2D

var decision_data: DecisionData

#decision does not go to end so preload here
var consequence_scene = preload("res://scenes/bird_scenes/Consequence/consequence.tscn")

var consequence_1 : ConsequenceData
var consequence_2 : ConsequenceData
var consequence_3 : ConsequenceData

# prepares variables based on loaded data from prev scene
func _ready() -> void:
	decision_data = SceneManager.selected_decision

	$DecisionHeader/DecisionHeaderPanel/DecisionHeaderLabel.text = decision_data.question
	$Option1.text = decision_data.option1
	$Option2.text = decision_data.option2
	$Option3.text = decision_data.option3
	consequence_1 = load(decision_data.path1)
	consequence_2 = load(decision_data.path2)
	consequence_3 = load(decision_data.path3)

	var is_nest := decision_data.resource_path == "res://data/NestLoc/nest_location.tres"
	# NestBackground2 is the name that the child is given by the system
	$NestBackground2.visible = is_nest
