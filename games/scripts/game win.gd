extends CanvasLayer

onready var label : Label = get_node("CanvasLayer/TextureRect/Label")
var sfx_bus = AudioServer.get_bus_index("sfx")


func _ready():
	GameAudio.play_win()
	AudioServer.set_bus_mute(sfx_bus, not AudioServer.is_bus_mute(sfx_bus))
	label.text = "You delivered %s" % Score.score 
	
 
func _on_Replay_pressed():
	get_tree().change_scene("res://scenes/SummerMap.tscn")
	
func _on_Main_Menu_pressed():
	get_tree().change_scene("res://scenes/main menu.tscn")

func _on_Select_Game_pressed():
	get_tree().change_scene("res://scenes/levelmap.tscn")

#func set_score(value):
	#score = value
	#$CanvasLayer/TextureRect/Label.text = "You deliverd   "+str(score)
