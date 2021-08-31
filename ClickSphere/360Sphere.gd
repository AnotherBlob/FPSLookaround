tool
extends Spatial
onready var sphere = get_node("MeshInstance2")
var player = null


export var img = "untitled.png"

func _ready():
	if Engine.editor_hint:
		load_img("res://Panoramas/"+img)

func load_img(res):
	if Engine.editor_hint:
		var material = SpatialMaterial.new()
		material.params_cull_mode = 2
		material.albedo_color = Color( 0.8, 0.8, 0.8, 1 )
		material.albedo_texture = load(res)
		material.metallic_specular = 0.0
		material.roughness = 0.0764706
		material.emission_enabled = true
		material.emission = Color( 0, 0, 0, 1 )
		material.emission_energy = 1.0
		material.emission_operator = 0
		material.emission_on_uv2 = false
		material.emission_texture = load(res)
		sphere.set_surface_material(0, material)


func _on_Area_input_event(camera, event, click_position, click_normal, shape_idx):
	if not Engine.editor_hint:
		
		InformationNode.nextSphere = global_transform.origin
		
		if event is InputEventMouseButton:
			
			if event.button_index == BUTTON_LEFT and event.pressed == true:
				print("Wow!!!!!")
				InformationNode.nextSphere = self.global_transform.origin
			
func _process(delta):
	if not Engine.editor_hint:
		if InformationNode.CurrentPosition == self.global_transform.origin:
			visible = true
		else:
			visible = false
