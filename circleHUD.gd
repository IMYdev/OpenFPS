extends Control

@onready var frame0 = $Hud
@onready var button = $Label
@onready var frame1 = $Hud2
@onready var main = $"../main"
@onready var animplayer = $"../AnimationPlayer"
@onready var ui_animplayer = $"../nuke/AnimationPlayer"
@onready var audio = $"../nuke/AudioStreamPlayer"
@onready var vid = $"../CharacterBody3D/Camera3D/tablet/Sketchfab_model/root/GLTF_SceneRootNode/ekran_3/Object_10/SubViewport/VideoStreamPlayer"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	frame0.visible = false
	button.visible = false
	frame1.visible = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("HUD"):
		frame0.visible = true
		button.visible = true
		Input.mouse_mode = Input.MOUSE_MODE_VISIBLE
	if Input.is_action_just_released("HUD"):
		frame0.visible = false
		button.visible = false
		frame1.visible = false
		Input.mouse_mode = Input.MOUSE_MODE_CAPTURED



func _on_label_mouse_entered() -> void:
	if button.visible == true:
		frame1.visible = true
		frame0.visible = false


func _on_label_mouse_exited() -> void:
	if button.visible == true:
		frame1.visible = false
		frame0.visible = true
		main.nuke()


func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	if anim_name == "tablet":
		animplayer.play("plane")
		ui_animplayer.play("nuke")
		audio.play()
	if anim_name == "plane":
		animplayer.play("nuke")


func _on_animation_player_animation_started(anim_name: StringName) -> void:
	if anim_name == "tablet":
		vid.play()
