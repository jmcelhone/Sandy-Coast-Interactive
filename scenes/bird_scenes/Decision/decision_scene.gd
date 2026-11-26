extends Node2D

var decision_data: DecisionData

# Decision does not go to end so preload here
var consequence_scene = preload("res://scenes/bird_scenes/Consequence/consequence.tscn")

var consequence_1 : ConsequenceData
var consequence_2 : ConsequenceData
var consequence_3 : ConsequenceData

# prepares variables based on loaded data from prev scene
func _ready() -> void:
	decision_data = SceneManager.selected_decision
	
	# Sets the question text into the header
	$DecisionHeader/DecisionHeaderPanel/DecisionHeaderLabel.text = decision_data.question
	$Option1.text = decision_data.option1
	$Option2.text = decision_data.option2
	$Option3.text = decision_data.option3
	consequence_1 = load(decision_data.path1)
	consequence_2 = load(decision_data.path2)
	consequence_3 = load(decision_data.path3)

	var is_nest := decision_data.resource_path == "res://data/NestLoc/nest_location.tres"
	var is_food := decision_data.resource_path == "res://data/Food/food.tres"
	var is_material := decision_data.resource_path == "res://data/NestMat/nest_mats.tres"
	
	# Remember which nest was picked (0-4, can be dynamic in the future)
	if is_nest: # runs on the nest location decision
		$Option1.pressed.connect(func(): GameState.nest_index = 0)
		$Option2.pressed.connect(func(): GameState.nest_index = 1)
		$Option3.pressed.connect(func(): GameState.nest_index = 2)
		# $Option4.pressed.connect(func(): GameState.nest_index = 3)
		# $Option5.pressed.connect(func(): GameState.nest_index = 4)
	
	# NestBackground2 is the name that the child is given by the system
	$NestBackground2.visible = is_nest or GameState.nest_index >= 0
	$FoodChoices.visible = is_food
	$MaterialChoice.visible = is_material
