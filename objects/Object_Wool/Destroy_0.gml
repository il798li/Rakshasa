nextObject = ds_list_find_value(global.colors, global.nextColor)
show_debug_message("Next Object: " + string(nextObject.object_index))
show_debug_message("This Object: " + string(object_index))
if (object_index == nextObject.object_index) {
	instance_destroy()
	global.nextColor += 1
} else {
	game_end()
}