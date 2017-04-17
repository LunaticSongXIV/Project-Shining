/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7FD2F963
/// @DnDArgument : "var" "myturn"
if(myturn == 0)
{
	

	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 7D681F4F
	/// @DnDParent : 7FD2F963
	exit;


}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3E1061D2
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "global.ui_show_stat_turn"
global.ui_show_stat_turn = 1;


/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4E97B430
/// @DnDArgument : "var" "global.battle_state"
/// @DnDArgument : "value" "3"
if(global.battle_state == 3)
{
	

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 1AD8E9CF
	/// @DnDParent : 4E97B430
	/// @DnDArgument : "script" "battle_move"
	/// @DnDSaveInfo : "script" "993f8805-532f-423d-8c8b-0fbd5e9d2c4f"
	script_execute(battle_move);


}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2C39F840
/// @DnDArgument : "var" "global.battle_state"
/// @DnDArgument : "value" "5"
if(global.battle_state == 5)
{
	

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 00D8A794
	/// @DnDParent : 2C39F840
	/// @DnDArgument : "script" "battle_act"
	/// @DnDSaveInfo : "script" "f927fbbf-2b24-44ad-aa5e-6849f84f44cf"
	script_execute(battle_act);


}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2732D26F
/// @DnDArgument : "var" "global.battle_state"
/// @DnDArgument : "value" "6"
if(global.battle_state == 6)
{
	
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4B7691D4
/// @DnDArgument : "var" "global.battle_state"
/// @DnDArgument : "value" "7"
if(global.battle_state == 7)
{
	
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3640B9AF
/// @DnDArgument : "var" "global.battle_state"
/// @DnDArgument : "value" "8"
if(global.battle_state == 8)
{
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 67D24679
	/// @DnDParent : 3640B9AF
	/// @DnDArgument : "var" "global.ui_show_turn_player_stat"
	global.ui_show_turn_player_stat = 0;
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6A373A86
	/// @DnDParent : 3640B9AF
	/// @DnDArgument : "var" "myturn"
	myturn = 0;
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1D1C14CF
	/// @DnDParent : 3640B9AF
	/// @DnDArgument : "expr" "(global.turninitcost + (global.moveinitcost / ds_grid_get(global.charstat, myself, 19) * global.distancemoved) + global.actinitcost) * 10"
	/// @DnDArgument : "var" "initlost"
	initlost = (global.turninitcost + (global.moveinitcost / ds_grid_get(global.charstat, myself, 19) * global.distancemoved) + global.actinitcost) * 10;
	

	/// @DnDAction : YoYo Games.Types.Number_To_String
	/// @DnDVersion : 1
	/// @DnDHash : 505881BB
	/// @DnDParent : 3640B9AF
	/// @DnDArgument : "var" "initlostdebug"
	/// @DnDArgument : "value" "initlost"
	
	{
		initlostdebug = string(initlost);
	}

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 08DD8B36
	/// @DnDParent : 3640B9AF
	/// @DnDArgument : "msg" ""Initiative Lost: " + initlostdebug"
	show_debug_message(string("Initiative Lost: " + initlostdebug));

	/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
	/// @DnDVersion : 1
	/// @DnDHash : 772F14C1
	/// @DnDParent : 3640B9AF
	/// @DnDArgument : "var" "global.charstat"
	/// @DnDArgument : "x" "myself"
	/// @DnDArgument : "y" "18"
	/// @DnDArgument : "value" "ds_grid_get(global.charstat, myself, 18) - initlost"
	
	{
		ds_grid_set(global.charstat, myself, 18, ds_grid_get(global.charstat, myself, 18) - initlost);
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6979AA46
	/// @DnDParent : 3640B9AF
	/// @DnDArgument : "var" "global.turn_order_done"
	global.turn_order_done = 0;
	

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 3E6B933D
	/// @DnDParent : 3640B9AF
	/// @DnDArgument : "script" "next_turn"
	/// @DnDSaveInfo : "script" "0fe46899-5d60-428b-a93d-27aff7d9aaa8"
	script_execute(next_turn);


}

