/*if (clicked) {
	top = bbox_top
	bottom = bbox_bottom
	left = bbox_left
	right = bbox_right
	with (Object_Light) {
		overlaps = ds_list_create()
		{
			ds_list_add(overlaps, self.bbox_bottom >= bottom)
			ds_list_add(overlaps, self.bbox_right  >= left  )
			ds_list_add(overlaps, self.bbox_top    <= top   )
			ds_list_add(overlaps, self.bbox_left   <= right)
		}
		size = ds_list_size(overlaps)
		trues = 0
		for (index = 0; index < size; index += 1) {
			if (ds_list_find_value(overlaps, index)) {
				trues += 1
			}
		}
		show_debug_message(string(trues))
	}
	Script_Toggle()
	clicked = false
}*/

if (clicked) {
    top = bbox_top;
    bottom = bbox_bottom;
    left = bbox_left;
    right = bbox_right;
    with (Object_Light) {
		if (place_meeting(x, y, other)) {
			Script_Toggle()
		}
    }
    Script_Toggle();
    clicked = false;
}
