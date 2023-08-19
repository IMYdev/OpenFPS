extends Camera3D
@onready var player = $".."
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position = player.position

