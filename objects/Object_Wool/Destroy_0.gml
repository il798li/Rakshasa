nextObject = ds_list_find_value(global.colors, global.nextColor)
show_debug_message("Next Object: " + string(nextObject.object_index))
show_debug_message("This Object: " + string(object_index))
if (object_index == nextObject.object_index) {
	instance_destroy()
	global.nextColor += 1
} else {
	player = instance_find(Object_Player, 0)
	rainbowPuzzle = instance_find(Object_RainbowPuzzle, 0)
	player.x = rainbowPuzzle.x + 2.5 * Object_Diorite.sprite_width
	player.y = rainbowPuzzle.y + 7 * Object_Diorite.sprite_height
	instance_destroy(Object_Wool)
}