extends Spatial
signal ReplaceInfo
onready var sphere360connect = get_node("Sphere")
export onready var texture_name = "untitled.png"

func _ready():
	var sphereconnect = get_node("Sphere")
	var sphere360connect = get_node("360Sphere")
	var player = get_node("../Player")

#player.connect("switch_spheres", self, "make_360_visible"):
	#get_node("360Sphere").visible = true #nextsphere will show up
	#print("nextSphere360 appeared")

#sphereconnect.connect("on_click", self, "sphere_invisible"):
	#sphereconnect.visible = false #go invisible before entering
	#print("nextSphere went invisible")



func _on_Area_input_event(camera, event, click_position, click_normal, shape_idx):
	if Input.is_action_just_pressed("mouseleftclick"):
		print("huh??")
		InformationNode.CurrentPosition = InformationNode.nextSphere
		
		get_node("360Sphere").visible = true
