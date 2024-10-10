function Script_DrawTextOutline (text, textColor = c_white, shadowOffset = 2.2857142857, shadowColor = c_black) {
	draw_set_color(shadowColor)
	for (xCoord = x - shadowOffset; xCoord <= x + shadowOffset; xCoord += 1) {
		for (yCoord = y - shadowOffset; yCoord <= y + shadowOffset; yCoord += 1) {
			if (yCoord == y && xCoord == x) {
				continue
			}
			draw_text(xCoord, yCoord, text)
		}
	}
	draw_set_color(textColor)
	draw_text(x, y, text)
}