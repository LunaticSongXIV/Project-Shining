/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 25645FA6
/// @DnDArgument : "msg" ""Getting Faction For""
show_debug_message(string("Getting Faction For"));

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 2E242C21
/// @DnDArgument : "msg" "argument0"
show_debug_message(string(argument0));

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 03592281
/// @DnDArgument : "msg" "argument1"
show_debug_message(string(argument1));

/// @DnDAction : YoYo Games.Data Structures.Grid_Get_Value
/// @DnDVersion : 1
/// @DnDHash : 358E81C3
/// @DnDArgument : "assignee" "fact"
/// @DnDArgument : "assignee_temp" "1"
/// @DnDArgument : "var" "global.battlemap"
/// @DnDArgument : "x" "argument0"
/// @DnDArgument : "y" "argument1"

{
	var fact = ds_grid_get(global.battlemap, argument0, argument1);
}

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 4A91256A
/// @DnDArgument : "msg" "fact"
show_debug_message(string(fact));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6CDDA472
/// @DnDArgument : "var" "fact"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "-1"
if(fact < -1)
{
	

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 35496038
	/// @DnDParent : 6CDDA472
	/// @DnDArgument : "msg" ""Attempted to get faction on invalid target""
	show_debug_message(string("Attempted to get faction on invalid target"));

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 576D0898
	/// @DnDParent : 6CDDA472
	/// @DnDArgument : "msg" "fact"
	show_debug_message(string(fact));

	/// @DnDAction : YoYo Games.Game.End_Game
	/// @DnDVersion : 1
	/// @DnDHash : 048122C1
	/// @DnDParent : 6CDDA472
	game_end();


}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4272CEFF
/// @DnDArgument : "var" "fact"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "60"
if(fact >= 60)
{
	

	/// @DnDAction : YoYo Games.Common.Return
	/// @DnDVersion : 1
	/// @DnDHash : 2D6B910C
	/// @DnDParent : 4272CEFF
	/// @DnDArgument : "value" "2"
	return 2;


}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1EF2964D
/// @DnDArgument : "var" "fact"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "20"
if(fact >= 20)
{
	

	/// @DnDAction : YoYo Games.Common.Return
	/// @DnDVersion : 1
	/// @DnDHash : 6EE35F63
	/// @DnDParent : 1EF2964D
	/// @DnDArgument : "value" "1"
	return 1;


}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1B922339
/// @DnDArgument : "var" "fact"
/// @DnDArgument : "op" "4"
if(fact >= 0)
{
	

	/// @DnDAction : YoYo Games.Common.Return
	/// @DnDVersion : 1
	/// @DnDHash : 491DC01C
	/// @DnDParent : 1B922339
	/// @DnDArgument : "value" "0"
	return 0;


}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 53688240
/// @DnDArgument : "var" "fact"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "-1"
if(fact <= -1)
{
	

	/// @DnDAction : YoYo Games.Common.Return
	/// @DnDVersion : 1
	/// @DnDHash : 1281C3BD
	/// @DnDParent : 53688240
	/// @DnDArgument : "value" "-1"
	return -1;


}

