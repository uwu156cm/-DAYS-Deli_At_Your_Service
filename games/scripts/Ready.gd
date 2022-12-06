extends Area2D

func _ready():
	$Label.visible = false

func _on_Ready_body_entered(body):
	if body.name == "Player":
		$Label.visible = true
		$play.play("ready")




func _on_play_animation_finished(anim_name):
	$Label.visible = false
	queue_free()
