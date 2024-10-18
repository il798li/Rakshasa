layerID = layer_get_id("Selected")
selectables = instance_number(Object_Selectable)
for (index = 0; index < selectables; index++) {
	object = instance_find(Object_Selectable, index)
	if (object.layer == layerID || object.depth == depth + 1) {
		object.clicked = true
		show_debug_message("Clicked!")
	}
}