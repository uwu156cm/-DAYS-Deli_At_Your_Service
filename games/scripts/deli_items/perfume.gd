extends "res://scripts/score.gd"


func _ready():
	pass


func _on_perfume_body_entered(body):
	if body.name == "Player":
		#get_node("/root/SummerMap/ParallaxBackground/Score").score += 1
		$AnimationPlayer.play("perfume")
		Score.score += 1
		GameSfx.play_item()
	
	

func _on_AnimationPlayer_animation_finished(anim_name):
	queue_free()
