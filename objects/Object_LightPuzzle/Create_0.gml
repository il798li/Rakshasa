event_inherited();
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