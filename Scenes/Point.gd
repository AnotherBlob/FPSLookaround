tool
extends Spatial
onready var sphere360connect = get_node("Sphere")
onready var sphere = get_node("MeshInstance2")
export var texture_name = "untitled.png"
onready var img = texture_name setget set_img
var player = null

func load_img(res):
	
	var material = SpatialMaterial.new()
	material.params_cull_mode = 2
	material.albedo_color = Color( 0.8, 0.8, 0.8, 1 )
	material.albedo_texture = load(res)
	material.metallic_specular = 0.0
	material.roughness = 0.076
	material.emission_enabled = true
	material.emission = Color( 0, 0, 0, 1 )
	material.emission_energy = 1.0
	material.emission_operator = 0
	material.emission_on_uv2 = false
	material.emission_texture = load(res)
	sphere.set_surface_material(0, material)

func set_img(res):
	if Engine.editor_hint:
		load_img("res://Panoramas/"+img)

func _ready():
	load_img("res://Panoramas/"+img)
#	var sphereconnect = get_node("Sphere")
#	var sphere = get_node("MeshInstance2")
#	var player = get_node("../Player")
	
#player.connect("switch_spheres", self, "make_360_visible"):
	#get_node("360Sphere").visible = true #nextsphere will show up
	#print("nextSphere360 appeared")
func _process(delta):
	if not Engine.editor_hint:
		if InformationNode.CurrentPosition == self.global_transform.origin:
			sphere.visible = true
		else:
			sphere.visible = false
#sphereconnect.connect("on_click", self, "sphere_invisible"):
	#sphereconnect.visible = false #go invisible before entering
	#print("nextSphere went invisible")



func _on_Area_input_event(camera, event, click_position, click_normal, shape_idx):
	if Input.is_action_just_pressed("mouseleftclick"):
		print("huh??")
		InformationNode.CurrentPosition = InformationNode.nextSphere
		
		get_node("360Sphere").visible = true
