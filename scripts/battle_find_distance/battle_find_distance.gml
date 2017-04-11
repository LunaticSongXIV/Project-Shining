/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 52C97AC2
/// @DnDArgument : "var" "movedx"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "script" "make_absolute"
/// @DnDArgument : "arg" "nextgridx - selfgridx"
/// @DnDSaveInfo : "script" "c404b9f3-c85f-41fc-8974-e47216d55bd8"
var movedx = script_execute(make_absolute, nextgridx - selfgridx);

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 0233C3E9
/// @DnDArgument : "var" "movedy"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "script" "make_absolute"
/// @DnDArgument : "arg" "nextgridy - selfgridy"
/// @DnDSaveInfo : "script" "c404b9f3-c85f-41fc-8974-e47216d55bd8"
var movedy = script_execute(make_absolute, nextgridy - selfgridy);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5A79C434
/// @DnDArgument : "expr" "movedx + movedy"
/// @DnDArgument : "var" "global.distancemoved"
global.distancemoved = movedx + movedy;


