if (clicked) {
	for (index = 0; index < array_length(global.mainLayers); index++) {
		layerName = array_get(global.mainLayers, index)
		layerID = layer_get_id(layerName)
		instance_deactivate_layer(layerID)
	}
	instance_deactivate_object(object_index)
}
