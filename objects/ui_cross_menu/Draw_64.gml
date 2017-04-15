/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 207A10D2
/// @DnDArgument : "expr" "300"
/// @DnDArgument : "var" "ui_battle_action_menu_x"
ui_battle_action_menu_x = 300;


/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 180F6147
/// @DnDArgument : "expr" "300"
/// @DnDArgument : "var" "ui_battle_action_menu_y"
ui_battle_action_menu_y = 300;


/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 042FEAB2
/// @DnDArgument : "var" "global.battle_pause"
/// @DnDArgument : "value" "1"
if(global.battle_pause == 1)
{
	

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 11B27AF7
	/// @DnDParent : 042FEAB2
	/// @DnDArgument : "msg" ""Aborting Menu Draw - Battle UI Opened""
	show_debug_message(string("Aborting Menu Draw - Battle UI Opened"));

	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 46AB15F6
	/// @DnDParent : 042FEAB2
	exit;


}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4D2C5FF4
/// @DnDArgument : "var" "global.battle_state"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "4"
if(!(global.battle_state == 4))
{
	

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 20303BEF
	/// @DnDParent : 4D2C5FF4
	/// @DnDArgument : "msg" ""Aborting Menu Draw - Not Correct Battle State""
	show_debug_message(string("Aborting Menu Draw - Not Correct Battle State"));

	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 67B86CBF
	/// @DnDParent : 4D2C5FF4
	exit;


}

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 7DD15261
/// @DnDArgument : "x" "ui_battle_action_menu_x"
/// @DnDArgument : "y" "ui_battle_action_menu_y"
/// @DnDArgument : "sprite" "spr_ui_cross"
/// @DnDSaveInfo : "sprite" "1420b916-432c-4fdb-a927-3546b506cf48"

var l7DD15261_0 = ui_battle_action_menu_x;
var l7DD15261_1 = ui_battle_action_menu_y;
draw_sprite(spr_ui_cross, 0, l7DD15261_0, l7DD15261_1);


/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2D548396
/// @DnDArgument : "var" "global.ui_cross_select"
if(global.ui_cross_select == 0)
{
	

	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 6930FC0A
	/// @DnDParent : 2D548396
	/// @DnDArgument : "x" "ui_battle_action_menu_x + 64"
	/// @DnDArgument : "y" "ui_battle_action_menu_y + 64"
	/// @DnDArgument : "sprite" "spr_ui_stay"
	/// @DnDSaveInfo : "sprite" "3a7ca5bd-3275-4d1e-983f-c022024c2823"
	
	var l6930FC0A_0 = ui_battle_action_menu_x + 64;
	var l6930FC0A_1 = ui_battle_action_menu_y + 64;
	draw_sprite(spr_ui_stay, 0, l6930FC0A_0, l6930FC0A_1);
	


}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7D074104
/// @DnDArgument : "var" "global.ui_cross_select"
/// @DnDArgument : "value" "1"
if(global.ui_cross_select == 1)
{
	

	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 26774256
	/// @DnDParent : 7D074104
	/// @DnDArgument : "x" "ui_battle_action_menu_x + 64"
	/// @DnDArgument : "y" "ui_battle_action_menu_y"
	/// @DnDArgument : "sprite" "spr_ui_attack"
	/// @DnDSaveInfo : "sprite" "55da1e8e-f8aa-4102-bc7a-ea364bb1dcee"
	
	var l26774256_0 = ui_battle_action_menu_x + 64;
	var l26774256_1 = ui_battle_action_menu_y;
	draw_sprite(spr_ui_attack, 0, l26774256_0, l26774256_1);
	


}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 154DA717
/// @DnDArgument : "var" "global.ui_cross_select"
/// @DnDArgument : "value" "2"
if(global.ui_cross_select == 2)
{
	

	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 53EEFF56
	/// @DnDParent : 154DA717
	/// @DnDArgument : "x" "ui_battle_action_menu_x + 64"
	/// @DnDArgument : "y" "ui_battle_action_menu_y + 128"
	/// @DnDArgument : "sprite" "spr_ui_defend"
	/// @DnDSaveInfo : "sprite" "157ead84-febe-496d-a642-ef98077e7a35"
	
	var l53EEFF56_0 = ui_battle_action_menu_x + 64;
	var l53EEFF56_1 = ui_battle_action_menu_y + 128;
	draw_sprite(spr_ui_defend, 0, l53EEFF56_0, l53EEFF56_1);
	


}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 67FFFA92
/// @DnDArgument : "var" "global.ui_cross_select"
/// @DnDArgument : "value" "3"
if(global.ui_cross_select == 3)
{
	

	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 1CDF8A7E
	/// @DnDParent : 67FFFA92
	/// @DnDArgument : "x" "ui_battle_action_menu_x"
	/// @DnDArgument : "y" "ui_battle_action_menu_y + 64"
	/// @DnDArgument : "sprite" "spr_ui_skillspell"
	/// @DnDSaveInfo : "sprite" "2be90f5b-c725-4c7f-9a7f-6b64cca14370"
	
	var l1CDF8A7E_0 = ui_battle_action_menu_x;
	var l1CDF8A7E_1 = ui_battle_action_menu_y + 64;
	draw_sprite(spr_ui_skillspell, 0, l1CDF8A7E_0, l1CDF8A7E_1);
	


}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2DF39F48
/// @DnDArgument : "var" "global.ui_cross_select"
/// @DnDArgument : "value" "4"
if(global.ui_cross_select == 4)
{
	

	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 1C33DF0B
	/// @DnDParent : 2DF39F48
	/// @DnDArgument : "x" "ui_battle_action_menu_x + 128"
	/// @DnDArgument : "y" "ui_battle_action_menu_y + 64"
	/// @DnDArgument : "sprite" "spr_ui_item"
	/// @DnDSaveInfo : "sprite" "6185ffa3-46f2-4509-824b-26c495d356e4"
	
	var l1C33DF0B_0 = ui_battle_action_menu_x + 128;
	var l1C33DF0B_1 = ui_battle_action_menu_y + 64;
	draw_sprite(spr_ui_item, 0, l1C33DF0B_0, l1C33DF0B_1);
	


}

