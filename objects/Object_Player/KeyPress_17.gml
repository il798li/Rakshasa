/// @description Interaction
layerID = layer_get_id("Selected")

selectables = instance_number(Object_Selectable)
for (index = 0; index < selectables; index++) {
	object = instance_find(Object_Selectable, index)
	try {
		if (object.layer == layerID || object.depth == depth + 1) {
			if (object_is_ancestor(object.object_index, Object_Wool)) {
				instance_destroy(object)
			}
		}
	} catch (exception) {
		return
	}
}