extends Spatial

var CurrentPosition

func _ready():
	CurrentPosition = Player.global_transform.origin
#onready var player = $Player
onready var player = $Player
var nextSphere
var done

func _process(delta):
	
	print(CurrentPosition)
	

	
# Called every frame. 'delta' is the elapsed time since the previous frame.

