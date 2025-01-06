event_inherited();
objective = "Turn of all the lights."
won = false
original = false
Script_OrganizePuzzles()

originalX = x
originalY = y

for (x = 1; x <= 4; x += 1) {
	for (y = 1; y <= 4; y += 1) {
		layerID = layer_get_id("LightPuzzleForeground")
		instance_create_layer(originalX + 64 * x, originalY + 64 * y, layerID, Object_Light)
	}
}
x = originalX
y = originalY

with (Object_Light) {
	number = irandom_range(1, 2)
	if (number == 1) {
		clicked = true
	}
	show_debug_message("x = " + string(x) + ", y = " + string(y) + "): " + string(number))
}