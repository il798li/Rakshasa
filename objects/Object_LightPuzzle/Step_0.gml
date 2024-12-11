allOff = true
with (Object_Light) {
	if (image_index == 1) {
		other.allOff = false
	}
}
if (allOff && !won) {
	with (Object_Light) {
		instance_destroy(self)
	}
	audio_play_sound(Sound_Victory, 1, false)
	instance_create_layer(x + 2 * Object_Light.sprite_width, y + 2 * Object_Light.sprite_height, "LightPuzzleForeground", Object_Blessing)
}