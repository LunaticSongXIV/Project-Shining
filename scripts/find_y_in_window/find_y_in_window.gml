/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 61C0DD03
/// @DnDArgument : "expr" "camera_get_view_y(view_current)"
/// @DnDArgument : "var" "screeny"
screeny = camera_get_view_y(view_current);


/// @DnDAction : YoYo Games.Common.Return
/// @DnDVersion : 1
/// @DnDHash : 671900F4
/// @DnDArgument : "value" "argument0 - screeny"
return argument0 - screeny;

