extends CharacterBody3D

const SPEED = 5.0
const JUMP_VELOCITY = 4.5
const mouse_sensitivity = 0.002



# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/3d/default_gravity")
var ammo = 5
var shots = 0
var is_moving = false
var stop_walking = true
var reload_finished = true
var ads = false
# Initialize the animation player and the audio stream players
@onready var animplayer = $Camera3D/pistol/AnimationPlayer
@onready var firesound = $firesound
@onready var dryFireSound = $dryFireSound
@onready var camera = $Camera3D


func _input(event):
	if event is InputEventMouseMotion and Input.mouse_mode == Input.MOUSE_MODE_CAPTURED:
		rotate_y(-event.relative.x * mouse_sensitivity)
		camera.rotate_x(-event.relative.y * mouse_sensitivity)
		camera.rotation.x = clampf(camera.rotation.x, -deg_to_rad(70), deg_to_rad(70))



func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y -= gravity * delta
	# Handle Jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY
	# Handle the left mouse button (fire) event
	if Input.is_action_just_pressed("fire") and reload_finished:
		print("U pressed me!")
		print("ammo is" + str(ammo) + "and shots are" + str(shots))
		if ammo != 0:
			animplayer.stop()
			animplayer.play("attachment_vm_pi_papa320_mag_skeleton|fire1")
			firesound.playing = true
			shots += 1
			ammo -= 1
		if ammo == 0:
			dryFireSound.playing = true
	if Input.is_action_just_pressed("reload"):
		reload()
	if Input.is_action_just_pressed("ads"):
		if ads and reload_finished:
			ads = false
			animplayer.play_backwards("ads")
		elif ads and not reload_finished:
			pass
		elif not ads and not reload_finished:
			pass
		else:
			ads = true
			animplayer.play("ads")
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var input_dir = Input.get_vector("left", "right", "forward", "backward")
	var direction = (transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
	if direction:
		velocity.x = direction.x * SPEED
		velocity.z = direction.z * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.z = move_toward(velocity.z, 0, SPEED)

	move_and_slide()
	idle()


func _on_animation_player_animation_started(anim_name):
	if anim_name == "attachment_vm_pi_papa320_mag_skeleton|fire1":
		print("I started playing")
	elif anim_name == "" and not is_moving:
		stop_walking = true
	elif anim_name == "attachment_vm_pi_papa320_mag_skeleton|reload_empty":
		reload_finished = false
		stop_walking = true
	else:
		stop_walking = false
	



func _on_animation_player_animation_finished(anim_name):
	if anim_name == "attachment_vm_pi_papa320_mag_skeleton|fire1":
		print("I finished playing")
	elif anim_name == "attachment_vm_pi_papa320_mag_skeleton|reload_empty":
		reload_finished = true

func reload():
	if ammo == 0:
		animplayer.play("attachment_vm_pi_papa320_mag_skeleton|reload_empty")
		ammo += 5
		shots = 0
	elif ammo == 5:
		pass
	else:
		animplayer.play("attachment_vm_pi_papa320_mag_skeleton|reload_empty")
		ammo += shots
		shots = 0

func idle():
	if animplayer.is_playing() == false:
		animplayer.play("attachment_vm_pi_papa320_mag_skeleton|idle")

