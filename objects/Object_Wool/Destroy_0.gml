nextObject = ds_list_find_value(global.colors, global.nextColor)
if (object_index == nextObject.object_index) {
	instance_destroy()
	global.nextColor += 1
} else {
	player = instance_find(Object_Player, 0)
	rainbowPuzzle = instance_find(Object_RainbowPuzzle, 0)
	player.x = rainbowPuzzle.x + 2.5 * Object_Diorite.sprite_width
	player.y = rainbowPuzzle.y + 7 * Object_Diorite.sprite_height
	player.xSpeed = 0
	player.ySpeed = 0
	instance_destroy(Object_Wool)
	rainbowPuzzle.status = false
}