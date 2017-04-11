/// @DnDAction : YoYo Games.Data Structures.If_DS_Exists
/// @DnDVersion : 1
/// @DnDHash : 41A6E02E
/// @DnDArgument : "ds" "2"
/// @DnDArgument : "var" "global.battlemap"

	var l41A6E02E_0 = global.battlemap;

if(ds_exists(l41A6E02E_0, ds_type_grid))
{
	

	/// @DnDAction : YoYo Games.Data Structures.DS_Free
	/// @DnDVersion : 1
	/// @DnDHash : 7E8E55B1
	/// @DnDParent : 41A6E02E
	/// @DnDArgument : "ds" "2"
	/// @DnDArgument : "var" "global.battlemap"
	ds_grid_destroy(global.battlemap);


}

/// @DnDAction : YoYo Games.Data Structures.Create_Grid
/// @DnDVersion : 1
/// @DnDHash : 57757102
/// @DnDArgument : "var" "global.battlemap"
/// @DnDArgument : "width" "battlemapwidth"
/// @DnDArgument : "height" "battlemapheight"
global.battlemap = ds_grid_create(battlemapwidth, battlemapheight);


/// @DnDAction : YoYo Games.Data Structures.Grid_Clear
/// @DnDVersion : 1
/// @DnDHash : 7D896E06
/// @DnDArgument : "var" "global.battlemap"
/// @DnDArgument : "value" "-1"

{
	ds_grid_clear(global.battlemap, -1);
}

