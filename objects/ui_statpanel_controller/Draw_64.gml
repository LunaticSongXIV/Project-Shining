/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 42F59C3D
/// @DnDArgument : "var" "global.uiactivechar"
/// @DnDArgument : "op" "4"
if(global.uiactivechar >= 0)
{
	

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 21C24BAA
	/// @DnDParent : 42F59C3D
	/// @DnDArgument : "script" "ui_show_current_unit_panel"
	/// @DnDSaveInfo : "script" "959243b0-4150-4a91-ae2a-54e950c1f59b"
	script_execute(ui_show_current_unit_panel);


}

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 1450ADB5
/// @DnDArgument : "x" "200"
/// @DnDArgument : "y" "200"
/// @DnDArgument : "caption" ""Battle Phase: ""
/// @DnDArgument : "var" "global.battlephase"

{
	var l1450ADB5_0 = 200;
	var l1450ADB5_1 = 200;
	draw_text(l1450ADB5_0, l1450ADB5_1, string("Battle Phase: ") + string(global.battlephase));
}

