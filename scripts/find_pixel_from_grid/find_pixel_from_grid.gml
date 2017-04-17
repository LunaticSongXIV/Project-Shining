/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 79D2D600
/// @DnDArgument : "var" "tempreturn"
/// @DnDArgument : "value" "(argument0 * global.world_tile_size) + (global.world_tile_size / 2)"
var tempreturn = (argument0 * global.world_tile_size) + (global.world_tile_size / 2);


/// @DnDAction : YoYo Games.Common.Return
/// @DnDVersion : 1
/// @DnDHash : 03C5AC75
/// @DnDArgument : "value" "tempreturn"
return tempreturn;

