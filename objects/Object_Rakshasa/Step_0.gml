if (global.rakshasaHealth <= 0 && global.rakshasaDefeated == false) {
	ds_list_add(global.chat, "[BOSS] Rakshasa:I guess I'm not as strong as I thought.")
	ds_list_add(global.chat, "[BOSS] Rakshasa: Congrats adventurer, for you have now conquered Rakshasa.")
	audio_play_sound(Sound_WitherDeath, 1, false)
	global.rakshasaDefeated = true
	room_goto(Room_Win)
}