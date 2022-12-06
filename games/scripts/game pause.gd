extends CanvasLayer

var is_paused = false setget set_is_paused

func _ready():
	$CanvasLayer/TextureRect.visible = false


func _unhandled_key_input(event):
	if event.is_action_pressed("pause"):
		self.is_paused = !is_paused
		$CanvasLayer/TextureRect.visible = true
		
func set_is_paused(value):
	is_paused = value
	get_tree().paused = is_paused
	$CanvasLayer/TextureRect.visible = is_paused
		
func _on_Resume_pressed():
	self.is_paused = false
	$CanvasLayer/TextureRect.hide()


func _on_Main_Menu_pressed():
	self.is_paused = !is_paused
	get_tree().change_scene("res://scenes/main menu.tscn")
	

func _on_Pause_Button_pressed():
	self.is_paused = true
	$CanvasLayer/TextureRect.visible = true


func _on_Select_pressed():
	self.is_paused = !is_paused
	get_tree().change_scene("res://scenes/levelmap.tscn")
