/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 63C8EFEC
/// @DnDArgument : "expr" "self.x"
/// @DnDArgument : "var" "global.targetx"
global.targetx = self.x;


/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 3B098C36
/// @DnDArgument : "msg" ""Global Target X""
show_debug_message(string("Global Target X"));

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 2B2841FE
/// @DnDArgument : "msg" "global.targetx"
show_debug_message(string(global.targetx));

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7383E027
/// @DnDArgument : "expr" "self.y"
/// @DnDArgument : "var" "global.targety"
global.targety = self.y;


