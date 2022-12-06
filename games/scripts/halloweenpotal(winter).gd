extends Node2D

var speed1 = 250
var direction = Vector2(0,1)

func _ready():
	GameAudio.hide()
	$bat/bat1/AnimatedSprite.play("default")
	$bat/bat1/AnimationPlayer.play("bat1")
	$bat/bat2/AnimatedSprite.play("default")
	$bat/bat2/AnimationPlayer.play("bat2")

func _process(delta):
	$background.scroll_offset += direction * speed1 * delta

func change_background():
	$background/bg1.visible =false
	$background/bg5.visible = false


func _on_Area2D_body_entered(body):
	if body.name == "Player":
		get_tree().change_scene("res://scenes/winter(afterportal).tscn")
		


func _on_FallZone_body_entered(body):
	if body.name == "Player":
		get_tree().change_scene("res://scenes/game over portal winter.tscn"	)


func _on_bg_chg_body_entered(body):
	change_background()


func _on_bg_chg_body_exited(body):
	$background/bg1.visible = true
	$background/bg5.visible = true
