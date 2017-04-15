/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 527ED6C2
/// @DnDArgument : "var" "myturn"
if(myturn == 0)
{
	

	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 42E87FA8
	/// @DnDParent : 527ED6C2
	exit;


}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4EE46AB0
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "global.ui_show_stat_turn"
global.ui_show_stat_turn = 1;


/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 01BF2765
/// @DnDArgument : "var" "global.battlephase"
/// @DnDArgument : "value" "2"
if(global.battlephase == 2)
{
	

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 60AAD3EB
	/// @DnDParent : 01BF2765
	/// @DnDArgument : "script" "battle_move"
	/// @DnDSaveInfo : "script" "993f8805-532f-423d-8c8b-0fbd5e9d2c4f"
	script_execute(battle_move);


}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2F47ACC9
/// @DnDArgument : "var" "global.battlephase"
/// @DnDArgument : "value" "3"
if(global.battlephase == 3)
{
	

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1F00455A
	/// @DnDParent : 2F47ACC9
	/// @DnDArgument : "var" "global.selectingaction"
	/// @DnDArgument : "value" "1"
	if(global.selectingaction == 1)
	{
		
	
			/// @DnDAction : YoYo Games.Common.Exit_Event
			/// @DnDVersion : 1
			/// @DnDHash : 22DEF041
			/// @DnDParent : 1F00455A
			exit;
	
	
	}

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 65BB516C
	/// @DnDParent : 2F47ACC9
	/// @DnDArgument : "script" "battle_act"
	/// @DnDSaveInfo : "script" "f927fbbf-2b24-44ad-aa5e-6849f84f44cf"
	script_execute(battle_act);


}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2C320439
/// @DnDArgument : "var" "global.battlephase"
/// @DnDArgument : "value" "5"
if(global.battlephase == 5)
{
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 45916F51
	/// @DnDParent : 2C320439
	/// @DnDArgument : "var" "global.ui_show_stat_turn"
	global.ui_show_stat_turn = 0;
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5CA1307F
	/// @DnDParent : 2C320439
	/// @DnDArgument : "var" "myturn"
	myturn = 0;
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5DAFCE47
	/// @DnDParent : 2C320439
	/// @DnDArgument : "expr" "(global.turninitcost + (global.moveinitcost / ds_grid_get(global.charstat, myself, 19) * global.distancemoved) + global.actinitcost) * 10"
	/// @DnDArgument : "var" "initlost"
	initlost = (global.turninitcost + (global.moveinitcost / ds_grid_get(global.charstat, myself, 19) * global.distancemoved) + global.actinitcost) * 10;
	

	/// @DnDAction : YoYo Games.Types.Number_To_String
	/// @DnDVersion : 1
	/// @DnDHash : 3F68DFE9
	/// @DnDParent : 2C320439
	/// @DnDArgument : "var" "initlostdebug"
	/// @DnDArgument : "value" "initlost"
	
	{
		initlostdebug = string(initlost);
	}

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 50DC0F00
	/// @DnDParent : 2C320439
	/// @DnDArgument : "msg" ""Initiative Lost: " + initlostdebug"
	show_debug_message(string("Initiative Lost: " + initlostdebug));

	/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
	/// @DnDVersion : 1
	/// @DnDHash : 1D44D7F5
	/// @DnDParent : 2C320439
	/// @DnDArgument : "var" "global.charstat"
	/// @DnDArgument : "x" "myself"
	/// @DnDArgument : "y" "18"
	/// @DnDArgument : "value" "ds_grid_get(global.charstat, myself, 18) - initlost"
	
	{
		ds_grid_set(global.charstat, myself, 18, ds_grid_get(global.charstat, myself, 18) - initlost);
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4122BF00
	/// @DnDParent : 2C320439
	/// @DnDArgument : "var" "global.turnorderdone"
	global.turnorderdone = 0;
	

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 4FF0D3F8
	/// @DnDParent : 2C320439
	/// @DnDArgument : "script" "next_turn"
	/// @DnDSaveInfo : "script" "0fe46899-5d60-428b-a93d-27aff7d9aaa8"
	script_execute(next_turn);


}

