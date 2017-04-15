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

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 0F626ED5
/// @DnDApplyTo : camtargetid
/// @DnDArgument : "var" "global.cam_zoom_x"
/// @DnDArgument : "script" "get_xy_pixel_from_instid"
/// @DnDArgument : "arg" ""x""
/// @DnDSaveInfo : "script" "309a8748-b9f2-4a17-80ab-e22275b7b56f"
with(camtargetid) {
	global.cam_zoom_x = script_execute(get_xy_pixel_from_instid, "x");
}

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 017ED056
/// @DnDApplyTo : camtargetid
/// @DnDArgument : "var" "global.cam_zoom_y"
/// @DnDArgument : "script" "get_xy_pixel_from_instid"
/// @DnDArgument : "arg" ""y""
/// @DnDSaveInfo : "script" "309a8748-b9f2-4a17-80ab-e22275b7b56f"
with(camtargetid) {
	global.cam_zoom_y = script_execute(get_xy_pixel_from_instid, "y");
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3633BB4C
/// @DnDArgument : "var" "global.battle_state"
/// @DnDArgument : "value" "1"
if(global.battle_state == 1)
{
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2985A9EC
	/// @DnDParent : 3633BB4C
	/// @DnDArgument : "expr" "2"
	/// @DnDArgument : "var" "global.battle_state"
	global.battle_state = 2;
	


}

