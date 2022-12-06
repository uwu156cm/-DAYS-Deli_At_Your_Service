extends Control

func _ready():
	GameAudio.play_story_music()

func _on_Play_Button_pressed():
	get_tree().change_scene("res://scenes/levelmap.tscn")

func _on_Story_Button_pressed():
	get_tree().change_scene("res://scenes/story1.tscn")


func _on_Setting_Button_pressed():
		get_tree().change_scene("res://scenes/game_audio.tscn")


func _on_Exit_Button_pressed():
	get_tree().quit()


func _on_Help_pressed():
	get_tree().change_scene("res://scenes/HowToPlay.tscn")


func _on_Feedback_pressed():
	OS.shell_open("https://forms.gle/3mbDj55sHKV7t2Ln7")
