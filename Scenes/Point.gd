extends Spatial

onready var sphereconnect = get_node("Sphere")
onready var sphere360connect = get_node("360Sphere")
onready var player = get_node("../Player")

player.connect("switch_spheres", self, "make_360_visible"):
	get_node("360Sphere").visible = true #nextsphere will show up
	print("nextSphere360 appeared")

sphereconnect.connect("on_click", self, "sphere_invisible"):
	sphereconnect.visible = false #go invisible before entering
	print("nextSphere went invisible")	



#get_node("360Sphere").visible  #Tell 360Sphere to go invisible when player exits the location
#get_node("Sphere").visible 	#Tell the sphere to go invisible when the player enters the location

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
