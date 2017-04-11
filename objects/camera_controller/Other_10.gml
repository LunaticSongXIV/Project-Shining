/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 19FEEF21
/// @DnDArgument : "msg" ""Camera Zoom to Target""
show_debug_message(string("Camera Zoom to Target"));

/// @DnDAction : YoYo Games.Data Structures.Grid_Get_Value
/// @DnDVersion : 1
/// @DnDHash : 7597AB2A
/// @DnDArgument : "assignee" "camtargetid"
/// @DnDArgument : "var" "global.charstat"
/// @DnDArgument : "x" "global.cameratarget"
/// @DnDArgument : "y" "27"

{
	camtargetid = ds_grid_get(global.charstat, global.cameratarget, 27);
}

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 0D50EF43
/// @DnDArgument : "msg" ""Camera Target ID""
show_debug_message(string("Camera Target ID"));

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 26FFCC46
/// @DnDArgument : "msg" "camtargetid"
show_debug_message(string(camtargetid));

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 15385F56
/// @DnDArgument : "script" "get_cam_data"
/// @DnDSaveInfo : "script" "081b6494-0f7e-4144-a49f-bb843f8fcd6e"
script_execute(get_cam_data);

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 0F626ED5
/// @DnDApplyTo : camtargetid
/// @DnDArgument : "script" "get_targetxy"
/// @DnDSaveInfo : "script" "309a8748-b9f2-4a17-80ab-e22275b7b56f"
with(camtargetid) {
	script_execute(get_targetxy);
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2985A9EC
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "global.cameramoving"
global.cameramoving = 1;


/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 46F86ABA
/// @DnDArgument : "msg" ""GO TO Camera Step""
show_debug_message(string("GO TO Camera Step"));

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 3B6AEA13
/// @DnDArgument : "msg" "self.x"
show_debug_message(string(self.x));

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 1DE38180
/// @DnDArgument : "msg" "self.y"
show_debug_message(string(self.y));

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 5567D0DC
/// @DnDArgument : "msg" "global.cameramoving"
show_debug_message(string(global.cameramoving));

