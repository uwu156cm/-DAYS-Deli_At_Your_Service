extends Node

var score = 0
func _ready():
	GameAudio.hide()
	GameSfx.hide()
	
	

##signal score_updated
##var score = 0 setget set_score
#
##func set_score(value):
#	score = value
#	emit_signal("score_updated")
#	get_node("/root/SummerMap/ParallaxBackground/Score/ui/Label").set_text("Item Colletcted: "+str(score))
