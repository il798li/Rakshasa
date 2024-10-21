// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Script_GetDiorites () {
	layerID = layer_get_id("GameForeground")
	dioritesList = ds_list_create()
	dioritesCount = instance_number(Object_Diorite)
	for (dioriteIndex = 0; dioriteIndex < dioritesCount; dioriteIndex += 1) {
		dioriteInstance = instance_find(Object_Diorite, dioriteIndex)
		ds_list_add_add(dioritesList, dioriteInstance)
	}
	return dioritesList
}