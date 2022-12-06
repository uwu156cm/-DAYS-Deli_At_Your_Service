extends CanvasLayer


func _process(delta):
	$Label.text = "Item Collected: %s " % str(Score.score)
