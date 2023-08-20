extends Node3D

@onready var camera = $"../Camera3D" 

func _physics_process(delta):
	transform = camera.transform
