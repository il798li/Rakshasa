
	event_inherited()
	
	image_speed = 0
if (room != Room_Win) {
	randomize()
	image_index = irandom_range(1, 2)
	//image_xscale = 4
	//image_yscale = 4
} else {
	number = irandom(8)
	if (number == 8) {
		image_index = 0
	} else if (number <= 3) {
		image_index = 1
	} else {
		image_index = 2
	}
}
