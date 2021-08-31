extends Spatial
var player = null
 


func _on_Area_input_event(camera, event, click_position, click_normal, shape_idx):
	InformationNode.nextSphere = global_transform.origin
	
	if event is InputEventMouseButton:
		
		if event.button_index == BUTTON_LEFT and event.pressed == true:
			print("Wow!!!!!")
			InformationNode.nextSphere = self.global_transform.origin
			
func _process(delta):
	if InformationNode.CurrentPosition == self.global_transform.origin:
		visible = true
	else:
		visible = false
