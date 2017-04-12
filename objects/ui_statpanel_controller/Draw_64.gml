/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 42F59C3D
/// @DnDArgument : "var" "global.uiactivechar"
/// @DnDArgument : "op" "4"
if(global.uiactivechar >= 0)
{
	

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 21C24BAA
	/// @DnDParent : 42F59C3D
	/// @DnDArgument : "script" "ui_show_current_unit_panel"
	/// @DnDSaveInfo : "script" "959243b0-4150-4a91-ae2a-54e950c1f59b"
	script_execute(ui_show_current_unit_panel);


}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 40A79357
/// @DnDArgument : "var" "global.showturnorder"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "1"
if(global.showturnorder >= 1)
{
	

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 2B9DC996
	/// @DnDParent : 40A79357
	/// @DnDArgument : "script" "find_turn_order"
	/// @DnDSaveInfo : "script" "fc88b982-4e2d-4e95-82ac-89e641dfbccf"
	script_execute(find_turn_order);


}

