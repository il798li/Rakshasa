function Script_CheckBoundary (instance, x1, y1, x2, y2) {
	left = instance.bbox_left >= x1
	right = instance.bbox_right <= x2
	up = instance.bbox_top >= y1
	down = instance.bbox_bottom <= y2
	show_debug_message("Left: " + string(instance.bbox_left) + ", Right: " + string(instance.bbox_right) + ", Up: " + string(instance.bbox_top) + ", Down: " + string(instance.bbox_bottom))
	show_debug_message("(" + string(x1) + ", " + string(y1) + "), (" + string(x2) + ", " + string(y2) + ")")
	show_debug_message("Left: " + string(left) + ", Right: " + string(right) + ", Up: " + string(up) + ", Down: " + string(down))
	return left && right && up && down
}