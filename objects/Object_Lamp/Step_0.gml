if (clicked) {
	if (instance_number(object_index) <= 1) {
		global.midasDefeated = true
	}
	global.remainingDiamond -= 1
	image_index = 0
	enabled = false
	clicked = false
}