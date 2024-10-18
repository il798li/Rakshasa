draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, 1)
if (clicked) {
	nextObject = ds_list_find_value(global.colors, global.nextColor)
	if (object_index == nextObject.object_index) {
		global.nextColor += 1
		if (object_index == Object_PinkWool) {
			object = instance_find(Object_RainbowPuzzle, 0)
			instance_create_layer(object.x + 6 * 64 / 2, object.y + 6 * 64 / 2, "RainbowPuzzleForeground",  Object_Blessing)
			rainbowPuzzle = instance_find(Object_RainbowPuzzle, 0)
			rainbowPuzzle.status = true
			audio_play_sound(Sound_Victory, 1, false)
		}
		audio_play_sound(Sound_Click, 1, false)
	} else {
		Script_FailRainbowPuzzle()
	}
	instance_destroy()
}