layerID = layer_get_id("GameBackground")
diorites = Script_GetDiorites()
dioritesCount = ds_list_size(diorites)
damaged = false
for (dioriteIndex = 0; dioriteIndex < dioritesCount; dioriteIndex += 1) {
	dioriteObject = ds_list_find_value(diorites, dioriteIndex)
	if (dioriteObject.x <= x + sprite_width && dioriteObject.layer == layer_get_id("GameBackground")) {
		show_debug_message("turn to gold")
		instance_create_layer(dioriteObject.x, dioriteObject.y, dioriteObject.layer, Object_GoldBackground)
		if (!damaged) {
			if (instance_find(Object_Player, 0).x <= dioriteObject.x + 64) {
				damaged = true
				global.remainingHealth -= 10
			}
		}
		instance_destroy(dioriteObject)
	}
}

if (global.remainingDiamond == 1) {
	ds_list_add(global.chat, "[BOSS] Midas: My golden touch... It fades away...")
	global.remainingDiamond -= 0.01
}

if (global.remainingDiamond <= 0 && !dead) {
	dead = true
	speed = 0
	instance_deactivate_object(Object_MidasRoomMarker)
	playWitherSounds = true
	alarm[0] = 2 * 60
	alarm[1] = 1
	ds_list_add(global.chat, "[BOSS] Midas: IT HURTS!")
}
if (x + sprite_width >= room_width - Object_StoneBrick.sprite_width) {
	speed = 0
	ds_list_add(global.chat, "Challenging me was a grave error...")
}

if (global.remainingHealth <= 0) {
	audio_play_sound(Sound_WitherDeath, 1, false)
	room_goto(Room_Main)
}