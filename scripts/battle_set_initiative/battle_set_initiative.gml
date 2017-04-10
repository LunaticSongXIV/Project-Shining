/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 551F5EB9
/// @DnDArgument : "var" "setinitiative"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "max" "700"
var setinitiative = floor(random_range(0, 700 + 1));

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 0149EB58
/// @DnDArgument : "msg" ""Setting initiative for player and value""
show_debug_message(string("Setting initiative for player and value"));

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 7278E5E1
/// @DnDArgument : "msg" "myself"
show_debug_message(string(myself));

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 449D1C8C
/// @DnDArgument : "msg" "setinitiative"
show_debug_message(string(setinitiative));

/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
/// @DnDVersion : 1
/// @DnDHash : 1C96D1F7
/// @DnDArgument : "var" "global.charstat"
/// @DnDArgument : "x" "myself"
/// @DnDArgument : "y" "18"
/// @DnDArgument : "value" "setinitiative"

{
	ds_grid_set(global.charstat, myself, 18, setinitiative);
}

