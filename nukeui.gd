extends Control

var nuke_anim = "nuke"
@onready var vid = $VideoStreamPlayer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	if anim_name == nuke_anim:
		vid.play()


func _on_video_stream_player_finished() -> void:
	get_tree().quit()
