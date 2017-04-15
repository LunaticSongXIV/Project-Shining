/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 52C97AC2
/// @DnDArgument : "var" "movedx"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "script" "make_absolute"
/// @DnDArgument : "arg" "argument0 - argument2"
/// @DnDSaveInfo : "script" "c404b9f3-c85f-41fc-8974-e47216d55bd8"
var movedx = script_execute(make_absolute, argument0 - argument2);

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 0233C3E9
/// @DnDArgument : "var" "movedy"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "script" "make_absolute"
/// @DnDArgument : "arg" "argument1 - argument3"
/// @DnDSaveInfo : "script" "c404b9f3-c85f-41fc-8974-e47216d55bd8"
var movedy = script_execute(make_absolute, argument1 - argument3);

/// @DnDAction : YoYo Games.Common.Return
/// @DnDVersion : 1
/// @DnDHash : 321EC1BD
/// @DnDArgument : "value" "movedx + movedy"
return movedx + movedy;

