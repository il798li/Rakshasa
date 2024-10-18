if (clicked) {
	layerID = layer_get_id("Game")
	show_debug_message(string(layerID == noone))
	instance_deactivate_layer(layerID)
	clicked = false
	show_debug_message(layer_get_name(layerID))
}
