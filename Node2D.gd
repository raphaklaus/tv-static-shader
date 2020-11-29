extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

export var interference: Vector2 
export var vsync_issues: float

# Called when the node enters the scene tree for the first time.

# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimationPlayer.play('interference')

func _process(delta):
	randomize()
	print(vsync_issues)
	print(interference)
	$ColorRect.material.set_shader_param("mouse_pos", interference * Vector2(rand_range(1.045, 2.23), rand_range(-1.01, 4.3)))
	$ColorRect.material.set_shader_param("vsync_issues", vsync_issues * rand_range(-1.01, 2.37))

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
