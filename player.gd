extends CharacterBody3D


const SPEED = 10.0
const JUMP_VELOCITY = 5
const mouse_sensitivity = 0.002

@onready var firesound = $firesound
@onready var dryFireSound = $dryFireSound
@onready var animplayer = $Camera3D/pistol/AnimationPlayer

# Animation names
var fire_animation:String = "attachment_vm_pi_papa320_mag_skeleton|fire1"
var reload_animation:String = "attachment_vm_pi_papa320_mag_skeleton|reload_empty"
var draw_animation:String = "attachment_vm_pi_papa320_mag_skeleton|draw_first"
var draw_empty_animation:String = "attachment_vm_pi_papa320_mag_skeleton|draw_empty"
var idle_animation:String = "attachment_vm_pi_papa320_mag_skeleton|idle"
var ads_animation:String = "ads"

var ammo = 7
var shots = 0
var ads = false
var reload_finished = true
var inspecting = false

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/3d/default_gravity")

# Initialize the animation player and the audio stream players
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
	if Input.is_action_just_pressed("fire"):
		shoot()
	if Input.is_action_just_pressed("reload") and not inspecting:
		reload()
	if Input.is_action_just_pressed("ads"):
		ads_func()
	if Input.is_action_just_pressed("inspect"):
		draw()

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
	

func reload():
	if ammo == 0:
		animplayer.play(reload_animation)
		ammo += 7
		shots = 0
	elif ammo == 7:
		pass
	else:
		animplayer.play(reload_animation)
		ammo += shots
		shots = 0


func draw():
	if ads:
		pass
	elif !reload_finished:
		pass
	elif ammo == 0:
		animplayer.stop()
		animplayer.play(draw_empty_animation)
	else:
		animplayer.stop()
		animplayer.play(draw_animation)

func shoot():
	if reload_finished and not inspecting:
		if ammo != 0:
			animplayer.stop()
			animplayer.play(fire_animation)
			firesound.playing = true
			shots += 1
			ammo -= 1
		if ammo == 0:
			dryFireSound.playing = true
	else:
		pass
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

func idle():
	if animplayer.is_playing() == false:
		animplayer.play(idle_animation)
	


func _on_animation_player_animation_started(anim_name):
	if anim_name == reload_animation:
		reload_finished = false
	elif anim_name == draw_animation or anim_name == draw_empty_animation:
		inspecting = true

func _on_animation_player_animation_finished(anim_name):
	if anim_name == reload_animation:
		reload_finished = true
	elif anim_name == draw_animation or anim_name == draw_empty_animation:
		inspecting = false

