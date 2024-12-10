event_inherited();
Script_OrganizePuzzles()

locations = ds_list_create();
originalX = x;
originalY = y;

function generateRow() {
    var rows = ds_list_create();
    repeat (puzzleRoomWidth) {
        ds_list_add(rows, Object_Diorite);
    }
    return rows;
}

function generateLocation(maxX = puzzleRoomWidth, maxY = puzzleRoomHeight) {
    var locationX = irandom_range(0, maxX - 1);
    var locationY = irandom_range(0, maxY - 1);
    var row = ds_list_find_value(locations, locationY);
    var location = ds_list_find_value(row, locationX);
    if (location == Object_Diorite) {
        var locationList = ds_list_create();
        ds_list_add(locationList, locationX);
        ds_list_add(locationList, locationY);
        return locationList;
    } else {
        return generateLocation(maxX, maxY);
    }
}

repeat (puzzleRoomHeight) {
    ds_list_add(locations, generateRow());
}

colors = ds_list_create();
ds_list_add(colors, Object_RedWool);
ds_list_add(colors, Object_OrangeWool);
ds_list_add(colors, Object_YellowWool);
ds_list_add(colors, Object_GreenWool);
ds_list_add(colors, Object_BlueWool);
ds_list_add(colors, Object_PurpleWool);
ds_list_add(colors, Object_PinkWool);
global.colors = ds_list_create()
ds_list_copy(global.colors, colors)
ds_list_shuffle(colors);
global.nextColor = 0

for (var colorIndex = 0; colorIndex < ds_list_size(colors); colorIndex += 1) {
    var location = generateLocation();
    var locationX = ds_list_find_value(location, 0);
    var locationY = ds_list_find_value(location, 1);
    var row = ds_list_find_value(locations, locationY);
    ds_list_set(row, locationX, ds_list_find_value(colors, colorIndex));
    ds_list_set(locations, locationY, row);
}

for (var locationY = 0; locationY < ds_list_size(locations); locationY += 1) {
    var row = ds_list_find_value(locations, locationY);
    for (var locationX = 0; locationX < ds_list_size(row); locationX += 1) {
        x = originalX + locationX * 64;
        y = originalY + locationY * 64;
        var object = ds_list_find_value(row, locationX);
        if (object != Object_Diorite) {
			instance_create_layer(x, y, "RainbowPuzzleForeground", object);
		}
	}
}

x = originalX
y = originalY

objective = "Select all 7 colors in order."

visible = false;