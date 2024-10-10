function Script_CheckBoundary (instance, x1, y1, x2, y2) {
	left = instance.bbox_left >= x1
	right = instance.bbox_right <= x2
	up = instance.bbox_top >= y1
	down = instance.bbox_bottom <= y2
	return left && right && up && down
}