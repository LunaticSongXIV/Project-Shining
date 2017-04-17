/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0CAB7C89
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "global.ui_show_stat_turn"
global.ui_show_stat_turn = 1;


/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2AEC1E60
/// @DnDArgument : "var" "myturn"
if(myturn == 0)
{
	

	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 7EB6BD10
	/// @DnDParent : 2AEC1E60
	exit;


}

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 2710F17A
/// @DnDArgument : "msg" ""OLD MOVE CODE, DUMMIED OUT""
show_debug_message(string("OLD MOVE CODE, DUMMIED OUT"));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4DC88C59
/// @DnDArgument : "var" "global.battle_state"
/// @DnDArgument : "value" "3"
if(global.battle_state == 3)
{
	

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 51D25ECE
	/// @DnDParent : 4DC88C59
	/// @DnDArgument : "script" "battle_move_new"
	/// @DnDSaveInfo : "script" "588e2acf-4d00-4c18-bb96-11ec4bc9cd8f"
	script_execute(battle_move_new);


}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 54B1E0E2
/// @DnDArgument : "var" "global.battle_state"
/// @DnDArgument : "value" "5"
if(global.battle_state == 5)
{
	

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 5A37F2C7
	/// @DnDParent : 54B1E0E2
	/// @DnDArgument : "script" "battle_act"
	/// @DnDSaveInfo : "script" "f927fbbf-2b24-44ad-aa5e-6849f84f44cf"
	script_execute(battle_act);


}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3723DD9F
/// @DnDArgument : "var" "global.battle_state"
/// @DnDArgument : "value" "6"
if(global.battle_state == 6)
{
	
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0E309922
/// @DnDArgument : "var" "global.battle_state"
/// @DnDArgument : "value" "7"
if(global.battle_state == 7)
{
	
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 41298593
/// @DnDArgument : "var" "global.battle_state"
/// @DnDArgument : "value" "8"
if(global.battle_state == 8)
{
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 69458696
	/// @DnDParent : 41298593
	/// @DnDArgument : "var" "global.ui_show_turn_player_stat"
	global.ui_show_turn_player_stat = 0;
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2F2A83F7
	/// @DnDParent : 41298593
	/// @DnDArgument : "var" "myturn"
	myturn = 0;
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5A3FD7D9
	/// @DnDParent : 41298593
	/// @DnDArgument : "expr" "(global.turninitcost + (global.moveinitcost / ds_grid_get(global.charstat, myself, 19) * global.distancemoved) + global.actinitcost) * 10"
	/// @DnDArgument : "var" "initlost"
	initlost = (global.turninitcost + (global.moveinitcost / ds_grid_get(global.charstat, myself, 19) * global.distancemoved) + global.actinitcost) * 10;
	

	/// @DnDAction : YoYo Games.Types.Number_To_String
	/// @DnDVersion : 1
	/// @DnDHash : 1A424B41
	/// @DnDParent : 41298593
	/// @DnDArgument : "var" "initlostdebug"
	/// @DnDArgument : "value" "initlost"
	
	{
		initlostdebug = string(initlost);
	}

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 0AB6C45A
	/// @DnDParent : 41298593
	/// @DnDArgument : "msg" ""Initiative Lost: " + initlostdebug"
	show_debug_message(string("Initiative Lost: " + initlostdebug));

	/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
	/// @DnDVersion : 1
	/// @DnDHash : 696C43C4
	/// @DnDParent : 41298593
	/// @DnDArgument : "var" "global.charstat"
	/// @DnDArgument : "x" "myself"
	/// @DnDArgument : "y" "18"
	/// @DnDArgument : "value" "ds_grid_get(global.charstat, myself, 18) - initlost"
	
	{
		ds_grid_set(global.charstat, myself, 18, ds_grid_get(global.charstat, myself, 18) - initlost);
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1101E3BA
	/// @DnDParent : 41298593
	/// @DnDArgument : "var" "global.turn_order_done"
	global.turn_order_done = 0;
	

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 6B275F02
	/// @DnDParent : 41298593
	/// @DnDArgument : "script" "next_turn"
	/// @DnDSaveInfo : "script" "0fe46899-5d60-428b-a93d-27aff7d9aaa8"
	script_execute(next_turn);


}

