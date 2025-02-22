draw_set_font(Font_Minecraft)
if (room == Room_Win) {
	Script_DrawTextOutline("Time: " + string(global.elapsedTime / 1000) + "s")
} else if (room == Room_Start) {
	originalY = y
	Script_DrawTextOutline("Think you can beat Rakshasa?")
	y += 64
	Script_DrawTextOutline("Click anywhere to start.")
	y = originalY
}