extends Control

@onready var bullets = [$Background/Bullet, $Background/Bullet2, $Background/Bullet3, $Background/Bullet4, $Background/Bullet5, $Background/Bullet6, $Background/Bullet7]
@onready var player = $"../CharacterBody3D"

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if player.ammo == 6:
		bullets[0].visible = false
	elif player.ammo == 5:
		bullets[1].visible = false
	elif player.ammo == 4:
		bullets[2].visible = false
	elif player.ammo == 3:
		bullets[3].visible = false
	elif player.ammo == 2:
		bullets[4].visible = false
	elif player.ammo == 1:
		bullets[5].visible = false
	elif player.ammo == 0:
		bullets[6].visible = false
	else:
		for bullet in bullets:
			bullet.visible = true
