/// @description Play wither sounds
if (playWitherSounds) {
	index = irandom_range(0, 3)
	audio_play_sound(sounds[index], 1, false)
	alarm[1] = 15
}