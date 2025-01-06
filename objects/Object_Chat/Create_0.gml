try {
	global.chat = global.chat
} catch (exception) {
	global.chat = ds_list_create()
	ds_list_add(global.chat, " ")
}
maxLines = 8