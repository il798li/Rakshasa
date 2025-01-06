layerID = layer_get_id("GameBackground")
diorites = Script_GetDiorites()
dioritesCount = ds_list_size(diorites)
damaged = false
for (dioriteIndex = 0; dioriteIndex < dioritesCount; dioriteIndex += 1) {
	dioriteObject = ds_list_find_value(diorites, dioriteIndex)
	if (dioriteObject.x <= x && dioriteObject.layer == layer_get_id("GameBackground")) {
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
	ds_list_add(global.chat, "[BOSS] Midas: MY POWER! IT HURTS!")
}
