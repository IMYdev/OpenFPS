extends Camera3D
@onready var camera = $"../../../Camera3D"

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	transform = camera.transform
