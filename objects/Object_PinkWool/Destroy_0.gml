event_inherited();

if (global.nextColor >= 7) {
	object = instance_find(Object_RainbowPuzzle, 0)
	instance_create_layer(object.x + 6 * 64 / 2, object.y + 6 * 64 / 2, "RainbowPuzzleForeground",  Object_Blessing)
}
