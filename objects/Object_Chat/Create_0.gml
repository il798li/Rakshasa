try {
	check = global.chat
} catch (exception) {
	global.chat = ds_list_create()
}
maxLines = 6