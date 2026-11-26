extends Node2D

var consequence_data: ConsequenceData

#PackedScene not string
var decision_scene : PackedScene
var decision : DecisionData

var EndTruth: bool

# prepares variables based on loaded data from prev scene
func _ready() -> void:
	consequence_data = SceneManager.result_con
	
	SceneManager.score += consequence_data.Score

	$ConsequenceHeader/ConsequenceHeaderPanel/ConsequenceHeaderLabel.text = consequence_data.Consequence
	$BodyText2.text = consequence_data.BodyText
	
	if consequence_data.End:
		EndTruth = true
		SceneManager.chose_end()
		SceneManager.score = 0
	else:
		decision = load(consequence_data.Go_On)
