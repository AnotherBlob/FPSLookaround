extends Camera

onready var head = get_parent()
onready var camera = self

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
func _input(event): #look for input method
	if Input.is_mouse_button_pressed(true) and Player.locked == false and Player.letgo == true:
		if event is InputEventMouseMotion: # does the mouse move
			head.rotate_y(deg2rad(-event.relative.x * Player.mouse_sensitivity)) #negative because it's inverted
			
			var x_delta = event.relative.y * Player.mouse_sensitivity #how far of an angle do we want to move by?
			if Player.camera_x_rotation + x_delta > -90 and Player.camera_x_rotation + x_delta < 90: #is it pushing it past the 90 degrees boundary?
				camera.rotate_x(deg2rad(-event.relative.y * Player.mouse_sensitivity)) #if it isn't, rotate the camera
				Player.camera_x_rotation += x_delta #increase the camera rotation value to keep track


# Called when the node enters the scene tree for the first time.



# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


#func _on_Player_CameraRotation(event):
	#if Player.rotate = true:
		#head.rotate_y(deg2rad(-event.relative.x * mouse_sensitivity)) #negative because it's inverted
		
		#var x_delta = event.relative.y * mouse_sensitivity #how far of an angle do we want to move by?
		#if camera_x_rotation + x_delta > -90 and camera_x_rotation + x_delta < 90: #is it pushing it past the 90 degrees boundary?
		#	camera.rotate_x(deg2rad(-event.relative.y * mouse_sensitivity)) #if it isn't, rotate the camera
		#	camera_x_rotation += x_delta #increase the camera rotation value to keep track
