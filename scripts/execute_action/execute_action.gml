/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4D70380F
/// @DnDArgument : "var" "global.singletarget"
/// @DnDArgument : "value" "1"
if(global.singletarget == 1)
{
	
}

/// @DnDAction : YoYo Games.Data Structures.Grid_Get_Value
/// @DnDVersion : 1
/// @DnDHash : 4C760B51
/// @DnDArgument : "assignee" "abilitytarget"
/// @DnDArgument : "var" "global.battlemap"
/// @DnDArgument : "x" "global.ability_target_x"
/// @DnDArgument : "y" "global.ability_target_y"

{
	abilitytarget = ds_grid_get(global.battlemap, global.ability_target_x, global.ability_target_y);
}

