/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7DC75496
/// @DnDArgument : "var" "global.ui_cross_select"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "5"
if(global.ui_cross_select >= 5)
{
	

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 7D684CAA
	/// @DnDParent : 7DC75496
	/// @DnDArgument : "msg" ""battle act - action too high""
	show_debug_message(string("battle act - action too high"));

	/// @DnDAction : YoYo Games.Game.End_Game
	/// @DnDVersion : 1
	/// @DnDHash : 494A34EA
	/// @DnDParent : 7DC75496
	game_end();


}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 53680D97
/// @DnDArgument : "var" "global.ui_cross_select"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "-1"
if(global.ui_cross_select <= -1)
{
	

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 0D31AA9C
	/// @DnDParent : 53680D97
	/// @DnDArgument : "msg" ""battle act - action too low""
	show_debug_message(string("battle act - action too low"));

	/// @DnDAction : YoYo Games.Game.End_Game
	/// @DnDVersion : 1
	/// @DnDHash : 320E6B0B
	/// @DnDParent : 53680D97
	game_end();


}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6A9C9AEC
/// @DnDArgument : "var" "global.ui_cross_select"
/// @DnDArgument : "value" "2"
if(global.ui_cross_select == 2)
{
	

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 7FF3CA6E
	/// @DnDParent : 6A9C9AEC
	/// @DnDArgument : "msg" ""battle act - defend not implemented""
	show_debug_message(string("battle act - defend not implemented"));

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 607BB1FB
	/// @DnDParent : 6A9C9AEC
	/// @DnDArgument : "expr" "8"
	/// @DnDArgument : "var" "global.battle_stage"
	global.battle_stage = 8;
	

	/// @DnDAction : YoYo Games.Common.Return
	/// @DnDVersion : 1
	/// @DnDHash : 3CDFAA29
	/// @DnDParent : 6A9C9AEC
	return;


}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0488AFE8
/// @DnDArgument : "var" "global.ui_cross_select"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "1"
if(global.ui_cross_select <= 1)
{
	

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 7BBA5337
	/// @DnDParent : 0488AFE8
	/// @DnDArgument : "msg" ""battle act - attack - find target tiles""
	show_debug_message(string("battle act - attack - find target tiles"));

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0D0814CB
	/// @DnDParent : 0488AFE8
	/// @DnDArgument : "var" "global.attack_area_type"
	global.attack_area_type = 0;
	

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 7B1C893A
	/// @DnDInput : 4
	/// @DnDParent : 0488AFE8
	/// @DnDArgument : "script" "check_valid_targets"
	/// @DnDArgument : "arg" "global.attack_area_type"
	/// @DnDArgument : "arg_1" "selfgridx"
	/// @DnDArgument : "arg_2" "selfgridy"
	/// @DnDArgument : "arg_3" "myself"
	/// @DnDSaveInfo : "script" "d4bb39fa-a13b-4399-b874-81785a4a77f8"
	script_execute(check_valid_targets, global.attack_area_type, selfgridx, selfgridy, myself);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 18B78437
	/// @DnDParent : 0488AFE8
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "global.show_valid"
	global.show_valid = 1;
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 751CAFEE
	/// @DnDParent : 0488AFE8
	/// @DnDArgument : "expr" "6"
	/// @DnDArgument : "var" "global.battle_state"
	global.battle_state = 6;
	


}

