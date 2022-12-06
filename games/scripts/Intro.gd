extends Node2D


func _ready():
	$AnimationPlayer.play("intro")
	yield(get_tree().create_timer(5), "timeout")
	$AnimationPlayer.play("outro")
	yield(get_tree().create_timer(2), "timeout")
	get_tree().change_scene("res://scenes/main menu.tscn")
