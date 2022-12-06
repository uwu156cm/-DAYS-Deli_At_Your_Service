extends TextureRect


var sentence ="Hello Mr.Delivery Hero. I would like to get my packages arrive at my doorstep. But I am afraid that I live in Chromer Forest which is full with dangers and it is ruled by creatures called Gurr. Is the delivery possible sir?"
var sen_index = 0


func _ready():
	GameAudio.play_story_music()

func _on_Timer_timeout():
	if sen_index< sentence.length():
		$textbox/dialogue.append_bbcode(sentence[sen_index])
		sen_index+=1


func _on_next_pressed():
	get_tree().change_scene("res://scenes/story2.tscn")
