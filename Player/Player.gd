extends KinematicBody


export var mouse_sensitivity = 0.3
var locked = false
var letgo = true
var gooutside = true
var tonextsphere = false
var starting_position
var player_position
export (float) var speed = 2

var interpolation_value = 0


var camera_x_rotation = 0


func _ready():
	starting_position = get_global_transform().origin



func _input(event): #look for input method
	

	
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT and event.pressed == false and gooutside == true:
			letgo = true
			
		
func _on_Area_input_event(camera, event, click_position, click_normal, shape_idx):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT and event.pressed == true:
			print("got clicked")
			locked = true
			letgo = false
			gooutside = false
		if event.button_index == BUTTON_LEFT and event.pressed == false and letgo == false and locked == false:
			letgo = true
		if event.button_index == BUTTON_LEFT and event.pressed == false and letgo == false and locked == true:
			letgo = true
			print("released inside ")
			tonextsphere = true
			#CALL POINT HERE?
			#WARP TO NEXT CIRCLE????????????????
			
			
func _moveto(delta):
	print("Now move! Somehow...")
	


func _on_Area_mouse_exited():
	gooutside = true
	locked = false


func _process(delta):
	if letgo == true:
		locked = false
	if tonextsphere == true:
		global_transform.origin = InformationNode.CurrentPosition
			
	var where = global_transform.origin
	if Input.is_action_just_pressed("ui_accept"):
		print(where)
		
func _physics_process(delta):
	global_transform.origin = InformationNode.CurrentPosition



