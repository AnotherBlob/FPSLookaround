extends Spatial

func load_img(res):
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
	World.set_surface_material(0, material)
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
