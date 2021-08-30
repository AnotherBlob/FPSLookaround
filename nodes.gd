extends Node
onready var player = $Player
var CurrentPosition : Vector3 = player.global_transform.origin
var nextSphere
var done
var RequestName = false

func RequestName():
	
	RequestName = true
	

	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
