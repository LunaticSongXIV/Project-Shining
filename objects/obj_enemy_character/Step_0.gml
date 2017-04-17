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


/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 190D2DC4
/// @DnDArgument : "msg" ""OLD MOVE CODE, DUMMIED OUT""
show_debug_message(string("OLD MOVE CODE, DUMMIED OUT"));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 700F198F
/// @DnDArgument : "var" "global.battle_state"
/// @DnDArgument : "value" "3"
if(global.battle_state == 3)
{
	

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 6AAB7B54
	/// @DnDParent : 700F198F
	/// @DnDArgument : "script" "battle_move_new"
	/// @DnDSaveInfo : "script" "588e2acf-4d00-4c18-bb96-11ec4bc9cd8f"
	script_execute(battle_move_new);


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
/// @DnDHash : 1C6831C1
/// @DnDArgument : "var" "global.battle_state"
/// @DnDArgument : "value" "6"
if(global.battle_state == 6)
{
	
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 25DC8DA4
/// @DnDArgument : "var" "global.battle_state"
/// @DnDArgument : "value" "7"
if(global.battle_state == 7)
{
	
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

