extends Sprite


func _ready():
	GameAudio.hide()
	#GameSfx.hide()
	
func _process(delta):
	_zoom_changed()

func _zoom_changed():
	material.set_shader_param ("y_zoom", get_viewport().global_canvas_transform.y.y)
	

func _on_water_item_rect_changed():
	material.set_shader_param ("scale", scale)




func _on_Area2D_body_entered(body):
	if body.name == "Player":
		GameSfx.play_water()
