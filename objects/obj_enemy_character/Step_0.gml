/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 70246968
/// @DnDArgument : "var" "myturn"
if(myturn == 0)
{
	

	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 00825491
	/// @DnDParent : 70246968
	exit;


}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 270E98B1
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "global.ui_show_stat_turn"
global.ui_show_stat_turn = 1;


/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 66ED15BC
/// @DnDArgument : "var" "global.battle_state"
/// @DnDArgument : "value" "3"
if(global.battle_state == 3)
{
	

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 1F3677AD
	/// @DnDParent : 66ED15BC
	/// @DnDArgument : "script" "battle_move"
	/// @DnDSaveInfo : "script" "993f8805-532f-423d-8c8b-0fbd5e9d2c4f"
	script_execute(battle_move);


}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4FB2E620
/// @DnDArgument : "var" "global.battle_state"
/// @DnDArgument : "value" "5"
if(global.battle_state == 5)
{
	

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 6721E317
	/// @DnDParent : 4FB2E620
	/// @DnDArgument : "script" "battle_act"
	/// @DnDSaveInfo : "script" "f927fbbf-2b24-44ad-aa5e-6849f84f44cf"
	script_execute(battle_act);


}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 091EE233
/// @DnDArgument : "var" "global.battle_state"
/// @DnDArgument : "value" "8"
if(global.battle_state == 8)
{
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 02208283
	/// @DnDParent : 091EE233
	/// @DnDArgument : "var" "global.ui_show_turn_player_stat"
	global.ui_show_turn_player_stat = 0;
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 324D9E93
	/// @DnDParent : 091EE233
	/// @DnDArgument : "var" "myturn"
	myturn = 0;
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 19FBE976
	/// @DnDParent : 091EE233
	/// @DnDArgument : "expr" "(global.turninitcost + (global.moveinitcost / ds_grid_get(global.charstat, myself, 19) * global.distancemoved) + global.actinitcost) * 10"
	/// @DnDArgument : "var" "initlost"
	initlost = (global.turninitcost + (global.moveinitcost / ds_grid_get(global.charstat, myself, 19) * global.distancemoved) + global.actinitcost) * 10;
	

	/// @DnDAction : YoYo Games.Types.Number_To_String
	/// @DnDVersion : 1
	/// @DnDHash : 7CCE453C
	/// @DnDParent : 091EE233
	/// @DnDArgument : "var" "initlostdebug"
	/// @DnDArgument : "value" "initlost"
	
	{
		initlostdebug = string(initlost);
	}

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 60844303
	/// @DnDParent : 091EE233
	/// @DnDArgument : "msg" ""Initiative Lost: " + initlostdebug"
	show_debug_message(string("Initiative Lost: " + initlostdebug));

	/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
	/// @DnDVersion : 1
	/// @DnDHash : 0BAEB7AD
	/// @DnDParent : 091EE233
	/// @DnDArgument : "var" "global.charstat"
	/// @DnDArgument : "x" "myself"
	/// @DnDArgument : "y" "18"
	/// @DnDArgument : "value" "ds_grid_get(global.charstat, myself, 18) - initlost"
	
	{
		ds_grid_set(global.charstat, myself, 18, ds_grid_get(global.charstat, myself, 18) - initlost);
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6BE99991
	/// @DnDParent : 091EE233
	/// @DnDArgument : "var" "global.turn_order_done"
	global.turn_order_done = 0;
	

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 1119EA67
	/// @DnDParent : 091EE233
	/// @DnDArgument : "script" "next_turn"
	/// @DnDSaveInfo : "script" "0fe46899-5d60-428b-a93d-27aff7d9aaa8"
	script_execute(next_turn);


}

