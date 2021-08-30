extends Spatial
var player = null
 


func _on_Area_input_event(camera, event, click_position, click_normal, shape_idx):
	InformationNode.nextSphere = global_transform.origin
	
	if event is InputEventMouseButton:
		
		if event.button_index == BUTTON_LEFT and event.pressed == true:
			print("Wow!!!!!")
			if InformationNode.RequestName():
				InformationNode.CurrentSphere360 = self.get_name()
			
func _process(delta):
	if InformationNode.CurrentPosition == self.global_transform.origin:
		visible = true
	else:
		visible = false
