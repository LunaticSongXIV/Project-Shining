/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6AA55299
/// @DnDArgument : "var" "argument0"
/// @DnDArgument : "value" ""x""
if(argument0 == "x")
{
	

	/// @DnDAction : YoYo Games.Common.Return
	/// @DnDVersion : 1
	/// @DnDHash : 73D36B0F
	/// @DnDParent : 6AA55299
	/// @DnDArgument : "value" "self.x"
	return self.x;


}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5F89A870
/// @DnDArgument : "var" "argument0"
/// @DnDArgument : "value" ""y""
if(argument0 == "y")
{
	

	/// @DnDAction : YoYo Games.Common.Return
	/// @DnDVersion : 1
	/// @DnDHash : 07303A2D
	/// @DnDParent : 5F89A870
	/// @DnDArgument : "value" "self.y"
	return self.y;


}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 6F4011C3
else
{
	

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 1CBB6018
	/// @DnDParent : 6F4011C3
	/// @DnDArgument : "msg" ""get xy from instid - Invalid or No Axis Specified""
	show_debug_message(string("get xy from instid - Invalid or No Axis Specified"));


}

