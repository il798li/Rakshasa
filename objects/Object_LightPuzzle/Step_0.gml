allOff = true
with (Object_Light) {
	if (image_index == 1) {
		other.allOff = false
	}
}
if (allOff && !won) {
	audio_play_sound(Sound_Victory, 1, false)
	instance_create_layer(x + 3 * 64, y + 3 * 64, "LightPuzzleForeground", Object_Blessing)
	with (Object_Light) {
		instance_destroy(self)
	}
	ds_list_add(global.chat, "You completed the Light Puzzle!")
	won = true
}