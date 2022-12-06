extends "res://scripts/score.gd"


func _ready():
	pass


func _on_bag_body_entered(body):
	if body.name == "Player":
		#get_node("/root/SummerMap/ParallaxBackground/Score").score += 1
		Score.score += 1
		$AnimationPlayer.play("bag")
		GameSfx.play_item()
	
	


func _on_AnimationPlayer_animation_finished(anim_name):
	queue_free()
