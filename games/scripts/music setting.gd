extends VBoxContainer


export (String) var label
export (NodePath) var audio_stream_player_path
export (String) var bus_name

#var music : AudioStreamPlayer

#onready var Play_button = $Buttons/Play
#onready var Mute_button = $Buttons/Mute



func _on_HSlider_value_changed(value):
	var bus_idx = AudioServer.get_bus_index(bus_name)
	if value > $HSlider.min_value:
		AudioServer.set_bus_mute(bus_idx, false)
		AudioServer.set_bus_volume_db(bus_idx, value)
	else:
		AudioServer.set_bus_mute(bus_idx, true)
		


