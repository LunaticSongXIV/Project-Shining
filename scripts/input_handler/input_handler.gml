/// @DnDAction : YoYo Games.Gamepad.Get_Gamepad_Axis_Value
/// @DnDVersion : 1
/// @DnDHash : 38B6E263
/// @DnDArgument : "var" "lsx"
/// @DnDArgument : "var_temp" "1"

{
	var lsx;
	if(gamepad_is_connected(0))
		lsx = gamepad_axis_value(0, gp_axislh);
	else lsx = 0;
}

/// @DnDAction : YoYo Games.Gamepad.Get_Gamepad_Axis_Value
/// @DnDVersion : 1
/// @DnDHash : 0C589A47
/// @DnDArgument : "var" "lsy"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "axis" "1"

{
	var lsy;
	if(gamepad_is_connected(0))
		lsy = gamepad_axis_value(0, gp_axislv);
	else lsy = 0;
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 275DD8C3
/// @DnDArgument : "var" "global.confirmpressed"
global.confirmpressed = 0;


/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Down
/// @DnDVersion : 1.1
/// @DnDHash : 0F76B71D
var l0F76B71D_0;
l0F76B71D_0 = mouse_check_button(mb_left);
if (l0F76B71D_0)
{
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1935ED61
	/// @DnDParent : 0F76B71D
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "global.confirmpressed"
	global.confirmpressed = 1;
	


}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 6F8DF14F
var l6F8DF14F_0;
l6F8DF14F_0 = keyboard_check(vk_space);
if (l6F8DF14F_0)
{
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 378FC0C7
	/// @DnDParent : 6F8DF14F
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "global.confirmpressed"
	global.confirmpressed = 1;
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7BAC715E
	/// @DnDParent : 6F8DF14F
	/// @DnDArgument : "var" "global.mouseenabled"
	global.mouseenabled = 0;
	


}

/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Down
/// @DnDVersion : 1
/// @DnDHash : 736C57DD
/// @DnDArgument : "btn" "2"

	var l736C57DD_0 = 0;

if(gamepad_is_connected(l736C57DD_0))
{
	var __dnd_gp_btn = gp_face1;
	if((gamepad_button_check(l736C57DD_0, __dnd_gp_btn) || gamepad_button_check_released(l736C57DD_0, __dnd_gp_btn)))
	{
		

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 650C8E36
	/// @DnDParent : 736C57DD
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "global.confirmpressed"
	global.confirmpressed = 1;
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3A7C7ABE
	/// @DnDParent : 736C57DD
	/// @DnDArgument : "var" "global.mouseenabled"
	global.mouseenabled = 0;
	


	}
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 06CA81B1
/// @DnDArgument : "var" "global.cancelpressed"
global.cancelpressed = 0;


/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Down
/// @DnDVersion : 1.1
/// @DnDHash : 3ACC9DC6
/// @DnDArgument : "button" "mb_right"
var l3ACC9DC6_0;
l3ACC9DC6_0 = mouse_check_button(mb_right);
if (l3ACC9DC6_0)
{
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6E9CE240
	/// @DnDParent : 3ACC9DC6
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "global.cancelpressed"
	global.cancelpressed = 1;
	


}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 1CC85FC8
/// @DnDArgument : "key" "vk_backspace"
var l1CC85FC8_0;
l1CC85FC8_0 = keyboard_check(vk_backspace);
if (l1CC85FC8_0)
{
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6C92C229
	/// @DnDParent : 1CC85FC8
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "global.cancelpressed"
	global.cancelpressed = 1;
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7DCDB903
	/// @DnDParent : 1CC85FC8
	/// @DnDArgument : "var" "global.mouseenabled"
	global.mouseenabled = 0;
	


}

/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Down
/// @DnDVersion : 1
/// @DnDHash : 7521426E
/// @DnDArgument : "btn" "3"

	var l7521426E_0 = 0;

if(gamepad_is_connected(l7521426E_0))
{
	var __dnd_gp_btn = gp_face2;
	if((gamepad_button_check(l7521426E_0, __dnd_gp_btn) || gamepad_button_check_released(l7521426E_0, __dnd_gp_btn)))
	{
		

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 30202D14
	/// @DnDParent : 7521426E
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "global.cancelpressed"
	global.cancelpressed = 1;
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5EDAC44B
	/// @DnDParent : 7521426E
	/// @DnDArgument : "var" "global.mouseenabled"
	global.mouseenabled = 0;
	


	}
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 73D3003F
/// @DnDArgument : "var" "global.releasepressed"
global.releasepressed = 0;


/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Down
/// @DnDVersion : 1.1
/// @DnDHash : 4258AC7B
/// @DnDArgument : "button" "mb_middle"
var l4258AC7B_0;
l4258AC7B_0 = mouse_check_button(mb_middle);
if (l4258AC7B_0)
{
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 197B047E
	/// @DnDParent : 4258AC7B
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "global.releasepressed"
	global.releasepressed = 1;
	


}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 513CF103
/// @DnDArgument : "key" "vk_tab"
var l513CF103_0;
l513CF103_0 = keyboard_check(vk_tab);
if (l513CF103_0)
{
	

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 76F52B93
	/// @DnDParent : 513CF103
	/// @DnDArgument : "msg" ""VK_Tab Verified""
	show_debug_message(string("VK_Tab Verified"));

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 59E71EC6
	/// @DnDParent : 513CF103
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "global.releasepressed"
	global.releasepressed = 1;
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3C1AF259
	/// @DnDParent : 513CF103
	/// @DnDArgument : "var" "global.mouseenabled"
	global.mouseenabled = 0;
	


}

/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Down
/// @DnDVersion : 1
/// @DnDHash : 2B369B6F
/// @DnDArgument : "btn" "1"

	var l2B369B6F_0 = 0;

if(gamepad_is_connected(l2B369B6F_0))
{
	var __dnd_gp_btn = gp_face3;
	if((gamepad_button_check(l2B369B6F_0, __dnd_gp_btn) || gamepad_button_check_released(l2B369B6F_0, __dnd_gp_btn)))
	{
		

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2E55F45E
	/// @DnDParent : 2B369B6F
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "global.releasepressed"
	global.releasepressed = 1;
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7389E9BE
	/// @DnDParent : 2B369B6F
	/// @DnDArgument : "var" "global.mouseenabled"
	global.mouseenabled = 0;
	


	}
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6C587CE5
/// @DnDArgument : "var" "global.menupressed"
global.menupressed = 0;


/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 634D02EB
/// @DnDArgument : "key" "vk_escape"
var l634D02EB_0;
l634D02EB_0 = keyboard_check(vk_escape);
if (l634D02EB_0)
{
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0002B74B
	/// @DnDParent : 634D02EB
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "global.menupressed"
	global.menupressed = 1;
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 74FDA030
	/// @DnDParent : 634D02EB
	/// @DnDArgument : "var" "global.mouseenabled"
	global.mouseenabled = 0;
	


}

/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Down
/// @DnDVersion : 1
/// @DnDHash : 1C262DA5
/// @DnDArgument : "btn" "13"

	var l1C262DA5_0 = 0;

if(gamepad_is_connected(l1C262DA5_0))
{
	var __dnd_gp_btn = gp_start;
	if((gamepad_button_check(l1C262DA5_0, __dnd_gp_btn) || gamepad_button_check_released(l1C262DA5_0, __dnd_gp_btn)))
	{
		

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5DC01806
	/// @DnDParent : 1C262DA5
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "global.menupressed"
	global.menupressed = 1;
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7BAE737A
	/// @DnDParent : 1C262DA5
	/// @DnDArgument : "var" "global.mouseenabled"
	global.mouseenabled = 0;
	


	}
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1D68DACB
/// @DnDArgument : "var" "global.leftpressed"
global.leftpressed = 0;


/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 2E66EFB5
/// @DnDArgument : "key" "ord("A")"
var l2E66EFB5_0;
l2E66EFB5_0 = keyboard_check(ord("A"));
if (l2E66EFB5_0)
{
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 495B1E66
	/// @DnDParent : 2E66EFB5
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "global.leftpressed"
	global.leftpressed = 1;
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 436CC2E3
	/// @DnDParent : 2E66EFB5
	/// @DnDArgument : "var" "global.mouseenabled"
	global.mouseenabled = 0;
	


}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 473F40D1
/// @DnDArgument : "key" "vk_left"
var l473F40D1_0;
l473F40D1_0 = keyboard_check(vk_left);
if (l473F40D1_0)
{
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 08E61E1E
	/// @DnDParent : 473F40D1
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "global.leftpressed"
	global.leftpressed = 1;
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 03CA3417
	/// @DnDParent : 473F40D1
	/// @DnDArgument : "var" "global.mouseenabled"
	global.mouseenabled = 0;
	


}

/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Down
/// @DnDVersion : 1
/// @DnDHash : 72520B07
/// @DnDArgument : "btn" "7"

	var l72520B07_0 = 0;

if(gamepad_is_connected(l72520B07_0))
{
	var __dnd_gp_btn = gp_padl;
	if((gamepad_button_check(l72520B07_0, __dnd_gp_btn) || gamepad_button_check_released(l72520B07_0, __dnd_gp_btn)))
	{
		

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4C737300
	/// @DnDParent : 72520B07
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "global.leftpressed"
	global.leftpressed = 1;
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5ED61BD8
	/// @DnDParent : 72520B07
	/// @DnDArgument : "var" "global.mouseenabled"
	global.mouseenabled = 0;
	


	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4CF1B3CC
/// @DnDArgument : "var" "lsx"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "-.2"
if(lsx <= -.2)
{
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 20ED47FC
	/// @DnDParent : 4CF1B3CC
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "global.leftpressed"
	global.leftpressed = 1;
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 58A63DAD
	/// @DnDParent : 4CF1B3CC
	/// @DnDArgument : "var" "global.mouseenabled"
	global.mouseenabled = 0;
	


}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7DDC4387
/// @DnDArgument : "var" "global.downpressed"
global.downpressed = 0;


/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 716AFF30
/// @DnDArgument : "key" "ord("S")"
var l716AFF30_0;
l716AFF30_0 = keyboard_check(ord("S"));
if (l716AFF30_0)
{
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 76E0501D
	/// @DnDParent : 716AFF30
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "global.downpressed"
	global.downpressed = 1;
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2FA4F43E
	/// @DnDParent : 716AFF30
	/// @DnDArgument : "var" "global.mouseenabled"
	global.mouseenabled = 0;
	


}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 58C5F9C0
/// @DnDArgument : "key" "vk_down"
var l58C5F9C0_0;
l58C5F9C0_0 = keyboard_check(vk_down);
if (l58C5F9C0_0)
{
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0506927C
	/// @DnDParent : 58C5F9C0
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "global.downpressed"
	global.downpressed = 1;
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1B5AE845
	/// @DnDParent : 58C5F9C0
	/// @DnDArgument : "var" "global.mouseenabled"
	global.mouseenabled = 0;
	


}

/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Down
/// @DnDVersion : 1
/// @DnDHash : 23CED552
/// @DnDArgument : "btn" "8"

	var l23CED552_0 = 0;

if(gamepad_is_connected(l23CED552_0))
{
	var __dnd_gp_btn = gp_padd;
	if((gamepad_button_check(l23CED552_0, __dnd_gp_btn) || gamepad_button_check_released(l23CED552_0, __dnd_gp_btn)))
	{
		

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5D498A1F
	/// @DnDParent : 23CED552
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "global.downpressed"
	global.downpressed = 1;
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 092DD1C8
	/// @DnDParent : 23CED552
	/// @DnDArgument : "var" "global.mouseenabled"
	global.mouseenabled = 0;
	


	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6EBB7800
/// @DnDArgument : "var" "lsy"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" ".2"
if(lsy >= .2)
{
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3D40492E
	/// @DnDParent : 6EBB7800
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "global.downpressed"
	global.downpressed = 1;
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 563887E2
	/// @DnDParent : 6EBB7800
	/// @DnDArgument : "var" "global.mouseenabled"
	global.mouseenabled = 0;
	


}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4A00AA57
/// @DnDArgument : "var" "global.rightpressed"
global.rightpressed = 0;


/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 047657FD
/// @DnDArgument : "key" "ord("D")"
var l047657FD_0;
l047657FD_0 = keyboard_check(ord("D"));
if (l047657FD_0)
{
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6F7296EC
	/// @DnDParent : 047657FD
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "global.rightpressed"
	global.rightpressed = 1;
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 21F485B7
	/// @DnDParent : 047657FD
	/// @DnDArgument : "var" "global.mouseenabled"
	global.mouseenabled = 0;
	


}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 6CA5EFBE
/// @DnDArgument : "key" "vk_right"
var l6CA5EFBE_0;
l6CA5EFBE_0 = keyboard_check(vk_right);
if (l6CA5EFBE_0)
{
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0B331984
	/// @DnDParent : 6CA5EFBE
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "global.rightpressed"
	global.rightpressed = 1;
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4C115490
	/// @DnDParent : 6CA5EFBE
	/// @DnDArgument : "var" "global.mouseenabled"
	global.mouseenabled = 0;
	


}

/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Down
/// @DnDVersion : 1
/// @DnDHash : 3D9C7180
/// @DnDArgument : "btn" "9"

	var l3D9C7180_0 = 0;

if(gamepad_is_connected(l3D9C7180_0))
{
	var __dnd_gp_btn = gp_padr;
	if((gamepad_button_check(l3D9C7180_0, __dnd_gp_btn) || gamepad_button_check_released(l3D9C7180_0, __dnd_gp_btn)))
	{
		

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 656F2E22
	/// @DnDParent : 3D9C7180
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "global.rightpressed"
	global.rightpressed = 1;
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 18F58F8F
	/// @DnDParent : 3D9C7180
	/// @DnDArgument : "var" "global.mouseenabled"
	global.mouseenabled = 0;
	


	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6F080C6D
/// @DnDArgument : "var" "lsx"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" ".2"
if(lsx >= .2)
{
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1876903D
	/// @DnDParent : 6F080C6D
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "global.rightpressed"
	global.rightpressed = 1;
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 13F1931B
	/// @DnDParent : 6F080C6D
	/// @DnDArgument : "var" "global.mouseenabled"
	global.mouseenabled = 0;
	


}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 270AA497
/// @DnDArgument : "var" "global.uppressed"
global.uppressed = 0;


/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 4014B4E1
/// @DnDArgument : "key" "ord("W")"
var l4014B4E1_0;
l4014B4E1_0 = keyboard_check(ord("W"));
if (l4014B4E1_0)
{
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 05CAF221
	/// @DnDParent : 4014B4E1
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "global.uppressed"
	global.uppressed = 1;
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 54C19E4A
	/// @DnDParent : 4014B4E1
	/// @DnDArgument : "var" "global.mouseenabled"
	global.mouseenabled = 0;
	


}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 69AA770F
/// @DnDArgument : "key" "vk_up"
var l69AA770F_0;
l69AA770F_0 = keyboard_check(vk_up);
if (l69AA770F_0)
{
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2AEC3A25
	/// @DnDParent : 69AA770F
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "global.uppressed"
	global.uppressed = 1;
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 56AD183C
	/// @DnDParent : 69AA770F
	/// @DnDArgument : "var" "global.mouseenabled"
	global.mouseenabled = 0;
	


}

/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Down
/// @DnDVersion : 1
/// @DnDHash : 0442EECB
/// @DnDArgument : "btn" "6"

	var l0442EECB_0 = 0;

if(gamepad_is_connected(l0442EECB_0))
{
	var __dnd_gp_btn = gp_padu;
	if((gamepad_button_check(l0442EECB_0, __dnd_gp_btn) || gamepad_button_check_released(l0442EECB_0, __dnd_gp_btn)))
	{
		

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4785C644
	/// @DnDParent : 0442EECB
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "global.uppressed"
	global.uppressed = 1;
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2BD6508A
	/// @DnDParent : 0442EECB
	/// @DnDArgument : "var" "global.mouseenabled"
	global.mouseenabled = 0;
	


	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1DE0C221
/// @DnDArgument : "var" "lsy"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "-.2"
if(lsy <= -.2)
{
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7BE23532
	/// @DnDParent : 1DE0C221
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "global.uppressed"
	global.uppressed = 1;
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 08E99575
	/// @DnDParent : 1DE0C221
	/// @DnDArgument : "var" "global.mouseenabled"
	global.mouseenabled = 0;
	


}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 239E3B7E
/// @DnDArgument : "expr" "global.uppressed + global.downpressed = 2"
if(global.uppressed + global.downpressed = 2)
{
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6313505E
	/// @DnDParent : 239E3B7E
	/// @DnDArgument : "var" "global.uppressed"
	global.uppressed = 0;
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4329C1CE
	/// @DnDParent : 239E3B7E
	/// @DnDArgument : "var" "global.downpressed"
	global.downpressed = 0;
	


}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 0BC94F64
/// @DnDArgument : "expr" "global.leftpressed + global.rightpressed = 2"
if(global.leftpressed + global.rightpressed = 2)
{
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1A060473
	/// @DnDParent : 0BC94F64
	/// @DnDArgument : "var" "global.leftpressed"
	global.leftpressed = 0;
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 42B511C9
	/// @DnDParent : 0BC94F64
	/// @DnDArgument : "var" "global.rightpressed"
	global.rightpressed = 0;
	


}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 5CC0509A
/// @DnDArgument : "expr" "global.confirmpressed + global.cancelpressed = 2"
if(global.confirmpressed + global.cancelpressed = 2)
{
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4DD4001C
	/// @DnDParent : 5CC0509A
	/// @DnDArgument : "var" "global.cancelpressed"
	global.cancelpressed = 0;
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3B83592C
	/// @DnDParent : 5CC0509A
	/// @DnDArgument : "var" "global.confirmpressed"
	global.confirmpressed = 0;
	


}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 4F2EBCBA
/// @DnDArgument : "expr" "global.releasepressed + global.cancelpressed = 2"
if(global.releasepressed + global.cancelpressed = 2)
{
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 46097BDE
	/// @DnDParent : 4F2EBCBA
	/// @DnDArgument : "var" "global.cancelpressed"
	global.cancelpressed = 0;
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 372802AC
	/// @DnDParent : 4F2EBCBA
	/// @DnDArgument : "var" "global.releasepressed"
	global.releasepressed = 0;
	


}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 7E36A237
/// @DnDArgument : "expr" "global.menupressed + global.cancelpressed = 2"
if(global.menupressed + global.cancelpressed = 2)
{
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3C64731F
	/// @DnDParent : 7E36A237
	/// @DnDArgument : "var" "global.cancelpressed"
	global.cancelpressed = 0;
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1AC28ED6
	/// @DnDParent : 7E36A237
	/// @DnDArgument : "var" "global.menupressed"
	global.menupressed = 0;
	


}

