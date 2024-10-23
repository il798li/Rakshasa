image_angle += 6
if (clicked) {
	if (instance_number(object_index) <= 1) {
		global.midasDefeated = true
	}
	instance_destroy()
}