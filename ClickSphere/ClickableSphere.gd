extends Spatial
var player = null

func _ready():
	visible = false

func _on_Area_input_event(camera, event, click_position, click_normal, shape_idx):
	InformationNode.nextSphere = global_transform.origin
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT and event.pressed == true:
			print("Wow!!!!!")
			
func _process(delta):
	if InformationNode.CurrentSphere360 == self.get_name():
		visible = true
	else:
		visible = false
