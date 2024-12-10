try {
	global.chat = global.chat
} catch (exception) {
	global.chat = ds_list_create()
	ds_list_add(global.chat, " ")
}
maxLines = 6

ds_list_add(global.chat, "Welcome...")
ds_list_add(global.chat, "...to Rakshasa...")