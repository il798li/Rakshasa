if (collided == false) {
	rakshasa = instance_find(Object_Rakshasa, 0)
	global.rakshasaHealth -= global.damage

	randomize()
	soundNumber = irandom(3)
	if (soundNumber == 1) {
		audio_play_sound(Sound_WitherHurt1, 1, false)
	} else if (soundNumber == 2) {
		audio_play_sound(Sound_WitherHurt2, 1, false)
	} else if (soundNumber == 3) {
		audio_play_sound(Sound_WitherHurt3, 1, false)
	} else if (soundNumber == 4) {
		audio_play_sound(Sound_WitherHurt4, 1, false)
	}
	instance_destroy(self)
}
if (global.midasHit) {
	ds_list_add(global.chat, "[BOSS] Rakshasa: I see you finally learned how to use your fireballs.")
}
if (global.rakshasaHealth <= global.damage && global.midasLow == false) {
	ds_list_add(global.chat, "[BOSS] Rakshasa: My firepower... It weakens...")
	global.midasLow = true
}
global.midasHit = true
collided = true