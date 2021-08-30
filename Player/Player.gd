extends KinematicBody


export var mouse_sensitivity = 0.3
var locked = false
var letgo = true
var gooutside = true
var tonextsphere = false
var starting_position
export (float) var speed = 3
var where = global_transform.origin


onready var head = $Head
onready var camera = $Head/Camera

var interpolation_value = 0


var camera_x_rotation = 0


func _ready():
	starting_position = get_global_transform().origin



func _input(event): #look for input method
	if Input.is_mouse_button_pressed(true) and locked == false and letgo == true:
		if event is InputEventMouseMotion: # does the mouse move
			head.rotate_y(deg2rad(-event.relative.x * mouse_sensitivity)) #negative because it's inverted
			
			var x_delta = event.relative.y * mouse_sensitivity #how far of an angle do we want to move by?
			if camera_x_rotation + x_delta > -90 and camera_x_rotation + x_delta < 90: #is it pushing it past the 90 degrees boundary?
				camera.rotate_x(deg2rad(-event.relative.y * mouse_sensitivity)) #if it isn't, rotate the camera
				camera_x_rotation += x_delta #increase the camera rotation value to keep track

	
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
		
		if (interpolation_value < 1):
			InformationNode.RequestName()
			interpolation_value += delta * speed
			
		if (interpolation_value > 1):
			global_transform.origin = starting_position.linear_interpolate(InformationNode.nextSphere, interpolation_value)
			InformationNode.RequesterOff()
			tonextsphere = false
			
	var where = global_transform.origin
	if Input.is_action_just_pressed("ui_accept"):
		print(where)




