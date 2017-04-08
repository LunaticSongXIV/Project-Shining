/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 5FA9F826
/// @DnDInput : 3
/// @DnDArgument : "value" "8"
/// @DnDArgument : "value_1" "8"
/// @DnDArgument : "value_2" "1"
/// @DnDArgument : "var" "movetime"
/// @DnDArgument : "var_1" "movespeed"
/// @DnDArgument : "var_2" "partysize"
global.movetime = 8;
global.movespeed = 8;
global.partysize = 1;


/// @DnDAction : YoYo Games.Data Structures.Create_Grid
/// @DnDVersion : 1
/// @DnDHash : 006A989F
/// @DnDArgument : "var" "global.partystat"
/// @DnDArgument : "width" "20"
/// @DnDArgument : "height" "26"
global.partystat = ds_grid_create(20, 26);


/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
/// @DnDVersion : 1
/// @DnDHash : 650FC1C9
/// @DnDArgument : "var" "global.partystat"
/// @DnDArgument : "value" ""Genesis""

{
	ds_grid_set(global.partystat, 0, 0, "Genesis");
}

/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
/// @DnDVersion : 1
/// @DnDHash : 75FC1517
/// @DnDArgument : "var" "global.partystat"
/// @DnDArgument : "y" "1"
/// @DnDArgument : "value" "8"

{
	ds_grid_set(global.partystat, 0, 1, 8);
}

/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
/// @DnDVersion : 1
/// @DnDHash : 3006A803
/// @DnDArgument : "var" "global.partystat"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "value" "8"

{
	ds_grid_set(global.partystat, 0, 2, 8);
}

/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
/// @DnDVersion : 1
/// @DnDHash : 48531DB9
/// @DnDArgument : "var" "global.partystat"
/// @DnDArgument : "y" "3"
/// @DnDArgument : "value" "5"

{
	ds_grid_set(global.partystat, 0, 3, 5);
}

/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
/// @DnDVersion : 1
/// @DnDHash : 1CDDCF5F
/// @DnDArgument : "var" "global.partystat"
/// @DnDArgument : "y" "4"
/// @DnDArgument : "value" "5"

{
	ds_grid_set(global.partystat, 0, 4, 5);
}

/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
/// @DnDVersion : 1
/// @DnDHash : 1FA399AE
/// @DnDArgument : "var" "global.partystat"
/// @DnDArgument : "y" "5"
/// @DnDArgument : "value" "8"

{
	ds_grid_set(global.partystat, 0, 5, 8);
}

/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
/// @DnDVersion : 1
/// @DnDHash : 66BE1072
/// @DnDArgument : "var" "global.partystat"
/// @DnDArgument : "y" "6"
/// @DnDArgument : "value" "4"

{
	ds_grid_set(global.partystat, 0, 6, 4);
}

/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
/// @DnDVersion : 1
/// @DnDHash : 72D428ED
/// @DnDArgument : "var" "global.partystat"
/// @DnDArgument : "y" "7"
/// @DnDArgument : "value" "6"

{
	ds_grid_set(global.partystat, 0, 7, 6);
}

/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
/// @DnDVersion : 1
/// @DnDHash : 763967F9
/// @DnDArgument : "var" "global.partystat"
/// @DnDArgument : "y" "8"
/// @DnDArgument : "value" "7"

{
	ds_grid_set(global.partystat, 0, 8, 7);
}

/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
/// @DnDVersion : 1
/// @DnDHash : 3A500FB0
/// @DnDArgument : "var" "global.partystat"
/// @DnDArgument : "y" "9"
/// @DnDArgument : "value" "6"

{
	ds_grid_set(global.partystat, 0, 9, 6);
}

/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
/// @DnDVersion : 1
/// @DnDHash : 64DAD6A8
/// @DnDArgument : "var" "global.partystat"
/// @DnDArgument : "y" "10"
/// @DnDArgument : "value" "27"

{
	ds_grid_set(global.partystat, 0, 10, 27);
}

