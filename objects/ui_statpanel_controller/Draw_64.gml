/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 42F59C3D
/// @DnDArgument : "var" "global.active_turn_char"
/// @DnDArgument : "op" "4"
if(global.active_turn_char >= 0)
{
	

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 21C24BAA
	/// @DnDParent : 42F59C3D
	/// @DnDArgument : "script" "ui_show_current_unit_panel"
	/// @DnDSaveInfo : "script" "959243b0-4150-4a91-ae2a-54e950c1f59b"
	script_execute(ui_show_current_unit_panel);


}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 40A79357
/// @DnDArgument : "var" "global.ui_show_turn_order"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "1"
if(global.ui_show_turn_order >= 1)
{
	

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 2B9DC996
	/// @DnDParent : 40A79357
	/// @DnDArgument : "script" "find_turn_order"
	/// @DnDSaveInfo : "script" "fc88b982-4e2d-4e95-82ac-89e641dfbccf"
	script_execute(find_turn_order);


}

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 29D6B126
/// @DnDArgument : "x" "400"
/// @DnDArgument : "y" "400"
/// @DnDArgument : "caption" ""Battle State:""
/// @DnDArgument : "var" "global.battle_state"

{
	var l29D6B126_0 = 400;
	var l29D6B126_1 = 400;
	draw_text(l29D6B126_0, l29D6B126_1, string("Battle State:") + string(global.battle_state));
}

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 65938D67
/// @DnDArgument : "x" "400"
/// @DnDArgument : "y" "420"
/// @DnDArgument : "caption" ""Player Turn:""
/// @DnDArgument : "var" "global.active_turn_char"

{
	var l65938D67_0 = 400;
	var l65938D67_1 = 420;
	draw_text(l65938D67_0, l65938D67_1, string("Player Turn:") + string(global.active_turn_char));
}

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 5EC1A971
/// @DnDArgument : "x" "400"
/// @DnDArgument : "y" "440"
/// @DnDArgument : "caption" ""Mouse Enabled:""
/// @DnDArgument : "var" "global.mouseenabled"

{
	var l5EC1A971_0 = 400;
	var l5EC1A971_1 = 440;
	draw_text(l5EC1A971_0, l5EC1A971_1, string("Mouse Enabled:") + string(global.mouseenabled));
}

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 251A0B58
/// @DnDArgument : "x" "400"
/// @DnDArgument : "y" "460"
/// @DnDArgument : "caption" ""Mouse X:""
/// @DnDArgument : "var" "window_mouse_get_x()"

{
	var l251A0B58_0 = 400;
	var l251A0B58_1 = 460;
	draw_text(l251A0B58_0, l251A0B58_1, string("Mouse X:") + string(window_mouse_get_x()));
}

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 78938579
/// @DnDArgument : "x" "400"
/// @DnDArgument : "y" "480"
/// @DnDArgument : "caption" ""Mouse Y:""
/// @DnDArgument : "var" "window_mouse_get_y()"

{
	var l78938579_0 = 400;
	var l78938579_1 = 480;
	draw_text(l78938579_0, l78938579_1, string("Mouse Y:") + string(window_mouse_get_y()));
}

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 488BF89F
/// @DnDApplyTo : 158cba7d-4ad9-43ca-a23f-76de2abab19d
/// @DnDArgument : "x" "400"
/// @DnDArgument : "y" "500"
/// @DnDArgument : "caption" ""Last Mouse X:""
/// @DnDArgument : "var" "last_mouse_x"
with(obj_input_handler)
{
	var l488BF89F_0 = 400;
	var l488BF89F_1 = 500;
	draw_text(l488BF89F_0, l488BF89F_1, string("Last Mouse X:") + string(last_mouse_x));
}

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 186C239C
/// @DnDApplyTo : 158cba7d-4ad9-43ca-a23f-76de2abab19d
/// @DnDArgument : "x" "400"
/// @DnDArgument : "y" "520"
/// @DnDArgument : "caption" ""Last Mouse Y:""
/// @DnDArgument : "var" "last_mouse_y"
with(obj_input_handler)
{
	var l186C239C_0 = 400;
	var l186C239C_1 = 520;
	draw_text(l186C239C_0, l186C239C_1, string("Last Mouse Y:") + string(last_mouse_y));
}

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 617598DA
/// @DnDApplyTo : 158cba7d-4ad9-43ca-a23f-76de2abab19d
/// @DnDArgument : "x" "400"
/// @DnDArgument : "y" "540"
/// @DnDArgument : "caption" ""Mouse Moved:""
/// @DnDArgument : "var" "movemousesum"
with(obj_input_handler)
{
	var l617598DA_0 = 400;
	var l617598DA_1 = 540;
	draw_text(l617598DA_0, l617598DA_1, string("Mouse Moved:") + string(movemousesum));
}

