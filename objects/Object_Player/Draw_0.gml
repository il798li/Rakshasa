
draw_set_font(Font_Minecraft)
draw_sprite(sprite_index, 0, x, y)

selectables = instance_number(Object_Selectable)
closestDistance = room_width
closestObject = noone

for (index = 0; index < selectables; index += 1) {
	object = instance_find(Object_Selectable, index)
	distance = distance_to_object(object)
	if (distance < closestDistance && object.enabled) {
		closestDistance = distance
		closestObject = object
	}
	object.x = object.originalX
	object.y = object.originalY
	object.image_xscale = 1
	object.image_yscale = 1
	object.layer = object.originalLayer
}
if (closestDistance < selectionRange * 64) {
	closestObject.x -= global.scale / 2 * closestObject.sprite_width
	closestObject.y -= global.scale / 2 * closestObject.sprite_height
	closestObject.image_xscale = 1 + global.scale
	closestObject.image_yscale = 1 + global.scale
	closestObject.layer = layer
	closestObject.depth = depth + 1
}