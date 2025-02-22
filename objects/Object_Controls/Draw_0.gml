draw_set_font(Font_Minecraft)
puzzleRoomMarkers = instance_number(Object_PuzzleRoomMarker)

var controlsText = "> Controls: \n> > Move: Up/Down/Left/Right\n> > Select: Shift"
if (room == Room_Rakshasa) {
	controlsText = "> Controls: \n> > Move: Up/Down/Left/Right\n> > Shoot: Shift"
}
var objectiveText = "Objective: "
puzzleRoomMarker = noone
for (puzzleRoomMarkerIndex = 0; puzzleRoomMarkerIndex < puzzleRoomMarkers; puzzleRoomMarkerIndex += 1) {
	puzzleRoomMarker = instance_find(Object_PuzzleRoomMarker, puzzleRoomMarkerIndex)
	prmHeight = 6
	prmY = puzzleRoomMarker.y
	inBoundary = Script_CheckBoundary(player, puzzleRoomMarker.x, puzzleRoomMarker.y, puzzleRoomMarker.x + puzzleRoomMarker.puzzleRoomWidth * Object_Diorite.sprite_width, puzzleRoomMarker.y + (puzzleRoomMarker.puzzleRoomHeight + 1) * Object_Diorite.sprite_height)
	if (inBoundary) {
		if (puzzleRoomMarker.status) {
			objectiveText += "None; You solved this puzzle!"
		} else if (puzzleRoomMarker.status == false) {
			objectiveText += "None; You failed this puzzle."
		} else {
			objectiveText += puzzleRoomMarker.objective
		}
	}
}
healthText = "Your health: " + string(global.remainingHealth) + "/" + string(global.health)
damageText = "Your damage:" + string(global.damage)
objectiveText = "\n\n> " + objectiveText
controlsText += objectiveText
if (room != Room_Main) {
	controlsText += "\n\n" + healthText + "\n" + damageText
	
}
if (room == Room_Rakshasa) {
	controlsText += "\n\n Rakshasa's Health: " + string(global.rakshasaHealth) + "/100"
}
Script_DrawTextOutline(controlsText)
