extends Node
onready var CurrentSphere = "Sphere1"
onready var CurrentSphere360 = ("360" + CurrentSphere)
var nextSphere
var done
var RequestName = false

func RequestName():
	RequestName = true
	CurrentSphere360 = ("360" + CurrentSphere)
	
func RequesterOff():
	RequestName = false
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	print(InformationNode.CurrentSphere360)
