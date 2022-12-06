extends Node2D


func _ready():
	GameAudio.play_summer_music()
	GameAudio.hide()
	GameSfx.hide()
	$movingboat/AnimationPlayer.play("moving_boat")
	Score.score = 0
	


var sfx_bus = AudioServer.get_bus_index("sfx")
var active = false
var score = 0
var speed1 = 250
var direction = Vector2(0,1)

func _process(delta):
	$Background.scroll_offset += direction * speed1 * delta

func change_background():
	$Background/bg1.visible = false
	$Background/bg2.visible = false
	$Background/bg3.visible = false
	$Background/bg4.visible = false
	$Background/bg5.visible = false
	$Background/bg6.visible = false
	$Background/bg7.visible = false




func _on_FallZone_body_entered(body):
	if body.name == "Player":
		get_tree().change_scene("res://scenes/game over.tscn")


func _on_pause_child_entered_tree(node):
	GameAudio.reset_volume()

func _on_Pause_Button_pressed():
	get_tree().change_scene("res://scenes/game pause.tscn")


#func _on_portal_exit_body_entered(body):
	#if body.name == "Player":
		#$Player.position = Vector2(31250,350)


func _on_portal_enter_body_entered(body):
	if body.name == "Player":
		$Player.position = Vector2(30125,350)
		$portal_summer/bat/bat1/AnimationPlayer.play("bat1")
		$portal_summer/bat/bat2/AnimationPlayer.play("bat2")


func _on_Area2D_body_entered(body):
	if body.name == "Player":
		$Player.position = Vector2(13450,500)


func _on_portal_music_body_entered(body):
	if body.name == "Player":
		GameAudio.play_horror_music()


func _on_portal_music_body_exited(body):
	if body.name == "Player":
		GameAudio.turn_down_music()


#func _on_Ready_area_entered(area):
	#$Ready/CollisionShape2D/Deliver.visible = true

#func _on_Ready_body_entered(body):
	#if body.name == "Player":
		#active = true

#func _on_Ani_animation_finished(anim_name):
	#queue_free()

func _on_bg_chg_body_entered(body):
	if  body.name == "Player":
		change_background()


func _on_bg_chg_body_exited(body):
	if body.name == "Player":
		$Background/bg1.visible = true
		$Background/bg2.visible = true
		$Background/bg3.visible = true
		$Background/bg4.visible = true
		$Background/bg5.visible = true
		$Background/bg6.visible = true
		$Background/bg7.visible = true

