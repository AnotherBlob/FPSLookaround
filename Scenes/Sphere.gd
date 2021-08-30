extends MeshInstance

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.

func _process(delta):
	if InformationNode.RequestName == true:
		InformationNode.CurrentSphere = self.get_name()
		visible = false
	if InformationNode.CurrentSphere != self.get_name():
		visible = true
