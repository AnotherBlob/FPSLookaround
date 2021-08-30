extends MeshInstance

onready var player = $Player


func _on_Area_input_event(camera, event, click_position, click_normal, shape_idx):
	if player.tonextsphere == true:
		emit_signal("on_click")
