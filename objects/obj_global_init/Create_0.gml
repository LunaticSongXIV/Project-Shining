/// @DnDAction : YoYo Games.Random.Randomize
/// @DnDVersion : 1
/// @DnDHash : 5D67B39E
randomize();

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 5FA9F826
/// @DnDInput : 11
/// @DnDArgument : "value" "16"
/// @DnDArgument : "value_1" "8"
/// @DnDArgument : "value_3" "12"
/// @DnDArgument : "value_4" "-1"
/// @DnDArgument : "value_5" "-1"
/// @DnDArgument : "value_8" "-1"
/// @DnDArgument : "var" "movetime"
/// @DnDArgument : "var_1" "movespeed"
/// @DnDArgument : "var_2" "cameramoving"
/// @DnDArgument : "var_3" "cameraspeed"
/// @DnDArgument : "var_4" "uiactivechar"
/// @DnDArgument : "var_5" "battlemap"
/// @DnDArgument : "var_6" "movecomplete"
/// @DnDArgument : "var_7" "ui_show_stat_turn"
/// @DnDArgument : "var_8" "valid_moves"
/// @DnDArgument : "var_9" "show_valid"
/// @DnDArgument : "var_10" "nummovesleft"
global.movetime = 16;
global.movespeed = 8;
global.cameramoving = 0;
global.cameraspeed = 12;
global.uiactivechar = -1;
global.battlemap = -1;
global.movecomplete = 0;
global.ui_show_stat_turn = 0;
global.valid_moves = -1;
global.show_valid = 0;
global.nummovesleft = 0;


/// @DnDAction : YoYo Games.Data Structures.Create_Grid
/// @DnDVersion : 1
/// @DnDHash : 006A989F
/// @DnDArgument : "var" "global.charstat"
/// @DnDArgument : "width" "100"
/// @DnDArgument : "height" "28"
global.charstat = ds_grid_create(100, 28);


/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
/// @DnDVersion : 1
/// @DnDHash : 650FC1C9
/// @DnDArgument : "var" "global.charstat"
/// @DnDArgument : "value" ""Genesis""

{
	ds_grid_set(global.charstat, 0, 0, "Genesis");
}

/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
/// @DnDVersion : 1
/// @DnDHash : 75FC1517
/// @DnDArgument : "var" "global.charstat"
/// @DnDArgument : "y" "1"
/// @DnDArgument : "value" "8"

{
	ds_grid_set(global.charstat, 0, 1, 8);
}

/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
/// @DnDVersion : 1
/// @DnDHash : 3006A803
/// @DnDArgument : "var" "global.charstat"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "value" "8"

{
	ds_grid_set(global.charstat, 0, 2, 8);
}

/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
/// @DnDVersion : 1
/// @DnDHash : 48531DB9
/// @DnDArgument : "var" "global.charstat"
/// @DnDArgument : "y" "3"
/// @DnDArgument : "value" "5"

{
	ds_grid_set(global.charstat, 0, 3, 5);
}

/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
/// @DnDVersion : 1
/// @DnDHash : 1CDDCF5F
/// @DnDArgument : "var" "global.charstat"
/// @DnDArgument : "y" "4"
/// @DnDArgument : "value" "5"

{
	ds_grid_set(global.charstat, 0, 4, 5);
}

/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
/// @DnDVersion : 1
/// @DnDHash : 1FA399AE
/// @DnDArgument : "var" "global.charstat"
/// @DnDArgument : "y" "5"
/// @DnDArgument : "value" "8"

{
	ds_grid_set(global.charstat, 0, 5, 8);
}

/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
/// @DnDVersion : 1
/// @DnDHash : 66BE1072
/// @DnDArgument : "var" "global.charstat"
/// @DnDArgument : "y" "6"
/// @DnDArgument : "value" "4"

{
	ds_grid_set(global.charstat, 0, 6, 4);
}

/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
/// @DnDVersion : 1
/// @DnDHash : 72D428ED
/// @DnDArgument : "var" "global.charstat"
/// @DnDArgument : "y" "7"
/// @DnDArgument : "value" "6"

{
	ds_grid_set(global.charstat, 0, 7, 6);
}

/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
/// @DnDVersion : 1
/// @DnDHash : 763967F9
/// @DnDArgument : "var" "global.charstat"
/// @DnDArgument : "y" "8"
/// @DnDArgument : "value" "7"

{
	ds_grid_set(global.charstat, 0, 8, 7);
}

/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
/// @DnDVersion : 1
/// @DnDHash : 3A500FB0
/// @DnDArgument : "var" "global.charstat"
/// @DnDArgument : "y" "9"
/// @DnDArgument : "value" "6"

{
	ds_grid_set(global.charstat, 0, 9, 6);
}

/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
/// @DnDVersion : 1
/// @DnDHash : 64DAD6A8
/// @DnDArgument : "var" "global.charstat"
/// @DnDArgument : "y" "10"
/// @DnDArgument : "value" "27"

{
	ds_grid_set(global.charstat, 0, 10, 27);
}

/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
/// @DnDVersion : 1
/// @DnDHash : 50F2745B
/// @DnDArgument : "var" "global.charstat"
/// @DnDArgument : "y" "17"
/// @DnDArgument : "value" "9"

{
	ds_grid_set(global.charstat, 0, 17, 9);
}

/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
/// @DnDVersion : 1
/// @DnDHash : 26FD5A69
/// @DnDArgument : "var" "global.charstat"
/// @DnDArgument : "x" "1"
/// @DnDArgument : "y" "17"
/// @DnDArgument : "value" "9"

{
	ds_grid_set(global.charstat, 1, 17, 9);
}

/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
/// @DnDVersion : 1
/// @DnDHash : 717DB012
/// @DnDArgument : "var" "global.charstat"
/// @DnDArgument : "x" "20"
/// @DnDArgument : "y" "17"
/// @DnDArgument : "value" "9"

{
	ds_grid_set(global.charstat, 20, 17, 9);
}

/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
/// @DnDVersion : 1
/// @DnDHash : 461C5304
/// @DnDArgument : "var" "global.charstat"
/// @DnDArgument : "y" "19"
/// @DnDArgument : "value" "3"

{
	ds_grid_set(global.charstat, 0, 19, 3);
}

/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
/// @DnDVersion : 1
/// @DnDHash : 23B6CF33
/// @DnDArgument : "var" "global.charstat"
/// @DnDArgument : "x" "1"
/// @DnDArgument : "y" "19"
/// @DnDArgument : "value" "3"

{
	ds_grid_set(global.charstat, 1, 19, 3);
}

/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
/// @DnDVersion : 1
/// @DnDHash : 7F5F7035
/// @DnDArgument : "var" "global.charstat"
/// @DnDArgument : "x" "20"
/// @DnDArgument : "y" "19"
/// @DnDArgument : "value" "3"

{
	ds_grid_set(global.charstat, 20, 19, 3);
}

