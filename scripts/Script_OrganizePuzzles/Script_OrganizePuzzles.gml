function Script_OrganizePuzzles () {
	markersCount = instance_number(Object_PuzzleRoomMarker)
	index = irandom_range(0, markersCount - 1)
	puzzleRoomMarker = instance_find(Object_PuzzleRoomMarker, index)
	while (puzzleRoomMarker.visible == false) {
		puzzleRoomMarker = instance_find(Object_PuzzleRoomMarker, index)
	}
	x = puzzleRoomMarker.x
	y = puzzleRoomMarker.y
	puzzleRoomMarker.visible = false
}