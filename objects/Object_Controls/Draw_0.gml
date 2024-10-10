draw_set_font(Font_Minecraft)
controlsText = "> Controls: \n> > Move: Up/Down/Left/Right\n> > Select: Shift"
objectiveText = "Objective: "
for (puzzleRoomMarkerIndex = 0; puzzleRoomMarkerIndex < puzzleRoomMarkers; puzzleRoomMarkerIndex += 1) {
	puzzleRoomMarker = instance_find(Object_RainbowPuzzle, puzzleRoomMarkerIndex)
	prmHeight = puzzleRoomMarker.puzzleRoomHeight
	prmY = puzzleRoomMarker.y
	if (
		Script_CheckBoundary(
			player,
			puzzleRoomMarker.x,
			puzzleRoomMarker.y,
			puzzleRoomMarker.x + puzzleRoomMarker.puzzleRoomWidth,
			puzzleRoomMarker.y + puzzleRoomMarker.puzzleRoomHeight
		)
	) {
		objectiveText += puzzleRoomMarker.objective
	}
}
objectiveText += "\n\n> " + objectiveText
Script_DrawTextOutline(controlsText)
