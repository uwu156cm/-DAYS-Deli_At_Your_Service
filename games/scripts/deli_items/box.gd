extends "res://scripts/score.gd"




func _on_box_body_entered(body):
	if body.name == "Player":
		#get_node("/root/SummerMap/ParallaxBackground/Score").score += 1
		$AnimationPlayer.play("box")
		Score.score += 1
		GameSfx.play_item()

		
	
	

func _on_AnimationPlayer_animation_finished(anim_name):
	queue_free()





func _on_Ani_animation_finished(anim_name):
	queue_free()
