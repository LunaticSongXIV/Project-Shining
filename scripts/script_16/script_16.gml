/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 377F861D
/// @DnDArgument : "var" "argument0"
/// @DnDArgument : "op" "1"
if(argument0 < 0)
{
	

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 33D86F34
	/// @DnDParent : 377F861D
	/// @DnDArgument : "var" "absreturn"
	/// @DnDArgument : "value" "argument0 * -1"
	var absreturn = argument0 * -1;
	

	/// @DnDAction : YoYo Games.Common.Return
	/// @DnDVersion : 1
	/// @DnDHash : 366D5B7D
	/// @DnDParent : 377F861D
	/// @DnDArgument : "value" "absreturn"
	return absreturn;


}

/// @DnDAction : YoYo Games.Common.Return
/// @DnDVersion : 1
/// @DnDHash : 5A31DDDB
/// @DnDArgument : "value" "argument0"
return argument0;

