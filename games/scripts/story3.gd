extends Control


var sentence ="No one passes through us!! HAHAHAHA. Whoever dare to come against us shall die. We will destory you. You little two-legged breathing organism. "
var sen_index = 0



func _on_Timer_timeout():
	if sen_index< sentence.length():
		$bg/textbox/dialogue.append_bbcode(sentence[sen_index])
		sen_index+=1


func _on_previous_pressed():
	get_tree().change_scene("res://scenes/story2.tscn")


func _on_next_pressed():
	get_tree().change_scene("res://scenes/story4.tscn")
