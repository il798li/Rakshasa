nextObject = ds_list_find_value(global.colors, global.nextColor)
if (object_index == nextObject.object_index) {
	global.nextColor += 1
	if (object_index == Object_PinkWool) {
		instance_create_layer(object.x + 6 * 64 / 2, object.y + 6 * 64 / 2, "RainbowPuzzleForeground",  Object_Blessing)
		show_debug_message("Correct object")
		rainbowPuzzle = instance_find(Object_RainbowPuzzle, 0)
		rainbowPuzzle.status = true
		global.nextColor += 1
		show_debug_message("correct pink")
	}
	audio_play_sound(Sound_Click, 1, false)
} else {
	Script_FailRainbowPuzzle()
}