event_inherited();

if (global.nextColor >= 7) {
	rainbowPuzzle = instance_find(Object_RainbowPuzzle, 0)
	rainbowPuzzle.status = true
	instance_create_layer(object.x + 6 * 64 / 2, object.y + 6 * 64 / 2, "RainbowPuzzleForeground",  Object_Blessing)
}
