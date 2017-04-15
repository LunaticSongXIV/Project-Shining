/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 61C0DD03
/// @DnDArgument : "expr" "camera_get_view_x(view_current)"
/// @DnDArgument : "var" "screenx"
screenx = camera_get_view_x(view_current);


/// @DnDAction : YoYo Games.Common.Return
/// @DnDVersion : 1
/// @DnDHash : 671900F4
/// @DnDArgument : "value" "argument0 - screenx"
return argument0 - screenx;

