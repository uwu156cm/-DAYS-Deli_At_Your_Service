extends Node2D


func _ready():
	GameAudio.hide()
	$bat/bat1/AnimatedSprite.play("default")
	$bat/bat1/AnimationPlayer.play("bat1")
	$bat/bat2/AnimatedSprite.play("default")
	$bat/bat2/AnimationPlayer.play("bat2")


func _on_Area2D_body_entered(body):
	if body.name == "Player":
		get_tree().change_scene("res://scenes/summer(afterportal).tscn")


func _on_FallZone_body_entered(body):
	if body.name == "Player":
		get_tree().change_scene("res://scenes/gameover portal.tscn")
