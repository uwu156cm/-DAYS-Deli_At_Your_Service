extends Node2D

func _ready():
	GameAudio.play_winter_music()
	GameAudio.hide()
	GameSfx.hide()
	Score.score = 0
	
var sfx_bus = AudioServer.get_bus_index("sfx")
var active = false
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
		get_tree().change_scene("res://scenes/game over winter.tscn")

func _on_pause_child_entered_tree(node):
	GameAudio.reset_volume()

func _on_portal_enter_winter_body_entered(body):
	if body.name == "Player":
		$Player.position = Vector2(30125,350)
		$portal_winter/bat/bat1/AnimationPlayer.play("bat1")
		$portal_winter/bat/bat2/AnimationPlayer.play("bat2")
	
func _on_portal_exit_body_entered(body):
	if body.name == "Player":
		$Player.position = Vector2(10800,550)


func _on_bg_chg_body_entered(body):
	if body.name == "Player":
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
		
func _on_portal_music_body_entered(body):
	if body.name == "Player":
		GameAudio.play_horror_music()


func _on_portal_music_body_exited(body):
	if body.name == "Player":
		GameAudio.turn_down_music()
