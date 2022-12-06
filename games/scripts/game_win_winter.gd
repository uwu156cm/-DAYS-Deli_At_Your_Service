extends CanvasLayer


onready var label : Label = get_node("CanvasLayer1/TextureRect1/Label")
var sfx_bus = AudioServer.get_bus_index("sfx")


func _ready():
	GameAudio.play_win()
	AudioServer.set_bus_mute(sfx_bus, not AudioServer.is_bus_mute(sfx_bus))
	label.text = "You delivered %s" % Score.score 
	
func _on_Replay1_pressed():
	get_tree().change_scene("res://scenes/wintermap.tscn")

func _on_Select_Game1_pressed():
	get_tree().change_scene("res://scenes/levelmap.tscn")
	
func _on_Main_Menu1_pressed():
	get_tree().change_scene("res://scenes/levelmap.tscn")
