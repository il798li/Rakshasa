function Script_FailRainbowPuzzle(){
	player = instance_find(Object_Player, 0)
	rainbowPuzzle = instance_find(Object_RainbowPuzzle, 0)
	player.x = rainbowPuzzle.x + 2.5 * Object_Diorite.sprite_width
	player.y = rainbowPuzzle.y + 7 * Object_Diorite.sprite_height
	player.xSpeed = 0
	player.ySpeed = 0
	instance_destroy(Object_Wool, false)
	rainbowPuzzle.status = false
	audio_play_sound(Sound_WitherDeath, 1, false)
	ds_list_add(global.chat, "[PUZZLE] Rainbow Puzzle: You failed! ")
	
}