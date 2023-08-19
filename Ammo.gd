extends Node

class Ammo:
	var ammo = 20
	func _ready():
		if Input.is_action_just_pressed("fire"):
			ammo -= 1
