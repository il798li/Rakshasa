function Script_OrganizePuzzles () {
	randomize()
	markersCount = instance_number(Object_PuzzleRoomMarker)
	index = irandom_range(0, markersCount - 1)
	puzzleRoomMarker = Script_GetOriginalPuzzle()
	x = puzzleRoomMarker.x
	y = puzzleRoomMarker.y
	puzzleRoomMarker.visible = false
}

function Script_GetOriginalPuzzle() {
	randomize()
	markersCount = instance_number(Object_PuzzleRoomMarker)
	index = irandom_range(0, markersCount - 1)
	puzzleRoomMarker = instance_find(Object_PuzzleRoomMarker, index)
	if (puzzleRoomMarker.object_index == Object_PuzzleRoomMarker) {
		return puzzleRoomMarker
	} else {
		return Script_GetOriginalPuzzle()
	}
}