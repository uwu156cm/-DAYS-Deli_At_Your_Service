extends Control


var sentence ="You evil hideous creature!!!!! No matter how hard the journey, I'll make sure to deliver and fulfill my duty even if I have to annihilate you. Wait and see you evil."
var sen_index = 0



func _on_Timer_timeout():
	if sen_index< sentence.length():
		$bg/textbox/dialogue.append_bbcode(sentence[sen_index])
		sen_index+=1


func _on_previous_pressed():
	get_tree().change_scene("res://scenes/story3.tscn")

