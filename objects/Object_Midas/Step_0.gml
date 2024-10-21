layerID = layer_get_id("GameBackground")
layerElements = layer_get_all_elements(layerID)
for (index = 0; index < array_length(layerElements); index += 1) {
	layerElement = array_get(layerElements, index)
	if (layerElement.x <= x/* && layerElement.object_index == Object_Diorite*/) {
		instance_create_layer(layerElement.x, layerElement.y, layerElement.layer, Object_GoldBackground)
		instance_destroy(layerElement)
	}
}