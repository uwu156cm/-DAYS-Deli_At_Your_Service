extends Control

var sentence ="Anywhere you want. You name it we transport in style. At your service Miss."
var sen_index = 0

func _on_Timer_timeout():
	if sen_index< sentence.length():
		$bg/textbox/dialogue.append_bbcode(sentence[sen_index])
		sen_index+=1



func _on_previous_pressed():
	get_tree().change_scene("res://scenes/story1.tscn")



func _on_next_pressed():
	get_tree().change_scene("res://scenes/story3.tscn")
	
