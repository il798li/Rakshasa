speed = 1
randomize()
event_inherited()
dead = false
with (Object_Diorite) {
	if (x >= 1920) {
		if (irandom_range(1, 4) == 1) {
			instance_create_layer(x, y, "GoldTrinkets", Object_Lamp)
		}
	}
	randomize();
}
global.claimed = 0