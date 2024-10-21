originalX = x
originalY = y
draw_set_font(Font_Minecraft)
totalChat = 0
for (index = ds_list_size(global.chat); index >= 0; index -= 1) {
	if (index < 0 || totalChat >= 6) {
		continue
	}
	chatMessage = ds_list_find_value(global.chat, index)
	Script_DrawTextOutline(chatMessage)
	y -= 32
	totalChat += 1
}
x = originalX
y = originalY