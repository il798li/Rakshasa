layerID = layer_get_id("GameBackground")
diorites = Script_GetDiorites()
dioritesCount = ds_list_size(diorites)
for (dioriteIndex = 0; dioriteIndex < dioritesCount; dioriteIndex += 1) {
	dioriteObject = ds_list_find_value(diorites, dioriteIndex)
	if (dioriteObject.x <= x && dioriteObject.layer == layer_get_id("GameBackground")) {
		show_debug_message("turn to gold")
		instance_create_layer(dioriteObject.x, dioriteObject.y, dioriteObject.layer, Object_GoldBackground)
		instance_destroy(dioriteObject)
	}
}