extends Node

@onready var animplayer = $"../CharacterBody3D/Camera3D/pistol/animplayer"
# Animation names
var fire_animation:String = "attachment_vm_pi_papa320_mag_skeleton|fire1"
var reload_animation:String = "attachment_vm_pi_papa320_mag_skeleton|reload_empty"
var draw_animation:String = "attachment_vm_pi_papa320_mag_skeleton|draw_first"
var draw_empty_animation:String = "attachment_vm_pi_papa320_mag_skeleton|draw_empty"
var idle_animation:String = "attachment_vm_pi_papa320_mag_skeleton|idle"
var ads_animation:String = "ads"

@onready var firesound = $"../CharacterBody3D/firesound"
@onready var dryFireSound = $"../CharacterBody3D/dryFireSound"
@onready var aimcast = $"../CharacterBody3D/Camera3D/RayCast3D"


var ammo = 7
var damage = 50
var target
var shots = 0
var ads = false
var reload_finished = true
var inspecting = false


func shoot():
	if reload_finished and not inspecting:
		if ammo != 0:
			animplayer.stop()
			animplayer.play(fire_animation)
			firesound.playing = true
			shots += 1
			ammo -= 1
			if aimcast.is_colliding():
				target = aimcast.get_collider()
				if target.is_in_group("enemy"):
					target.health -= damage
		if ammo == 0:
			dryFireSound.playing = true
	else:
		pass

func reload():
	if inspecting:
		pass
	elif ammo == 0:
		animplayer.play(reload_animation)
		ammo += 7
		shots = 0
	elif ammo == 7:
		pass
	else:
		animplayer.play(reload_animation)
		ammo += shots
		shots = 0

func idle():
	if animplayer.is_playing() == false:
		animplayer.play(idle_animation)


func draw():
	if ads:
		pass
	elif !reload_finished:
		pass
	else:
		if ammo == 0:
			animplayer.stop()
			animplayer.play(draw_empty_animation)
		else:
			animplayer.stop()
			animplayer.play(draw_animation)

func ads_func():
	if ads and reload_finished:
		ads = false
		animplayer.play_backwards(ads_animation)
	elif ads and not reload_finished or inspecting:
		pass
	elif not ads and not reload_finished or inspecting:
		pass
	else:
		ads = true
		animplayer.play(ads_animation)


func _on_animplayer_animation_finished(anim_name):
	if anim_name == reload_animation:
		reload_finished = true
	elif anim_name == draw_animation or anim_name == draw_empty_animation:
		inspecting = false



func _on_animplayer_animation_started(anim_name):
	if anim_name == reload_animation:
		reload_finished = false
	elif anim_name == draw_animation or anim_name == draw_empty_animation:
		inspecting = true
