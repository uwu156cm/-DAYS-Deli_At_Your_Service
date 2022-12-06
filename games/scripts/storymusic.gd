extends Control

var story_music = load ("res://audios/NewJeans - Attention inst.mp3")
var levelmap_music = load ("res://audios/ATEEZ - Eternal Sunshin inst.mp3") 
var summer_music = load ("res://audios/red flavor.mp3")
var winter_music = load ("res://audios/heart shaker.mp3")
var horror_music = load ("res://audios/Red Velvet Peek-A-Boo( Instrumental).mp3")
var win = load ("res://audios/Aju Nice.mp3")
var over = load ("res://audios/Loser(Outro).mp3")

var music : AudioStreamPlayer


onready var Play_button = $GridContainer/Setting1/Buttons/Play
onready var Mute_button = $GridContainer/Setting1/Buttons/Mute

onready var play2_button = $GridContainer2/Setting2/Buttons/play2
onready var mute2_button = $GridContainer2/Setting2/Buttons/mute2

var music_bus = AudioServer.get_bus_index("Music")
var sfx_bus = AudioServer.get_bus_index("sfx")

func play_horror_music():
	$music.stream = horror_music
	$music.play()

func play_winter_music():
	$music.stream = winter_music
	$music.play()

func play_over():
	$music.stream = over
	$music.play()
	
func play_win():
	$music.stream = win
	$music.play()

func play_story_music():
	$music.stream = story_music
	$music.play()

func play_levelmap_music():
	$music.stream = levelmap_music
	$music.play()

func play_summer_music():
	$music.stream = summer_music
	$music.play()
	
func reset_volume():
	$music.volume_db = 0

func turn_down_music():
	$music.volume_db = -12

func _on_Play_pressed():
	AudioServer.set_bus_mute(music_bus, false)

func _on_Mute_pressed():
	AudioServer.set_bus_mute(music_bus, not AudioServer.is_bus_mute(music_bus))
	
func _on_play2_pressed():
	AudioServer.set_bus_mute(sfx_bus, false)

func _on_mute2_pressed():
	AudioServer.set_bus_mute(sfx_bus, not AudioServer.is_bus_mute(sfx_bus))

