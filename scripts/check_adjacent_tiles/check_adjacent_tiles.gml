/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3F45213E
/// @DnDArgument : "var" "global.checkclear"
global.checkclear = 0;


/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7C152575
/// @DnDArgument : "var" "ds_grid_get(global.battlemap, argument0, argument1)"
/// @DnDArgument : "value" "-1"
if(ds_grid_get(global.battlemap, argument0, argument1) == -1)
{
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 59ACC465
	/// @DnDParent : 7C152575
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "global.checkclear"
	global.checkclear = 1;
	


}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 4C34057E
else
{
	

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3F85C31C
	/// @DnDParent : 4C34057E
	/// @DnDArgument : "var" "ds_grid_get(global.battlemap, argument0, argument1)"
	/// @DnDArgument : "op" "3"
	/// @DnDArgument : "value" "99"
	if(ds_grid_get(global.battlemap, argument0, argument1) <= 99)
	{
		
	
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 2EF4C6E8
			/// @DnDInput : 2
			/// @DnDParent : 3F85C31C
			/// @DnDArgument : "var" "checkfaction"
			/// @DnDArgument : "script" "getfaction"
			/// @DnDArgument : "arg" "argument0"
			/// @DnDArgument : "arg_1" "argument1"
			/// @DnDSaveInfo : "script" "d3c0aa70-424a-47ae-ba73-0edbea07686d"
			checkfaction = script_execute(getfaction, argument0, argument1);
	
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 3676C2DE
			/// @DnDParent : 3F85C31C
			/// @DnDArgument : "expr" "myfaction == checkfaction"
			if(myfaction == checkfaction)
			{
				
			
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 01449F5B
						/// @DnDParent : 3676C2DE
						/// @DnDArgument : "expr" "1"
						/// @DnDArgument : "var" "global.checkclear"
						global.checkclear = 1;
						
			
			
			}
	
	
	}


}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0E628674
/// @DnDArgument : "var" "global.checkclear"
/// @DnDArgument : "value" "1"
if(global.checkclear == 1)
{
	

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 16AFC443
	/// @DnDParent : 0E628674
	/// @DnDArgument : "var" "ds_grid_get(global.terrainmap, argument0, argument1)"
	if(ds_grid_get(global.terrainmap, argument0, argument1) == 0)
	{
		
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0966C98E
			/// @DnDParent : 16AFC443
			/// @DnDArgument : "var" "global.checkclear"
			global.checkclear = 0;
			
	
	
	}


}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 40D0D090
/// @DnDArgument : "var" "global.checkclear"
/// @DnDArgument : "value" "1"
if(global.checkclear == 1)
{
	

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3DBBB78D
	/// @DnDParent : 40D0D090
	/// @DnDArgument : "var" "ds_grid_get(global.valid_moves, argument0, argument1)"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "moveremain - 1"
	if(ds_grid_get(global.valid_moves, argument0, argument1) < moveremain - 1)
	{
		
	
			/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
			/// @DnDVersion : 1
			/// @DnDHash : 4D586D5A
			/// @DnDParent : 3DBBB78D
			/// @DnDArgument : "var" "global.valid_moves"
			/// @DnDArgument : "x" "argument0"
			/// @DnDArgument : "y" "argument1"
			/// @DnDArgument : "value" "moveremain - 1"
			
			{
				ds_grid_set(global.valid_moves, argument0, argument1, moveremain - 1);
			}
	
			/// @DnDAction : YoYo Games.Common.Return
			/// @DnDVersion : 1
			/// @DnDHash : 08435BAC
			/// @DnDParent : 3DBBB78D
			/// @DnDArgument : "value" "1"
			return 1;
	
	
	}


}

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 4F4742AF
/// @DnDArgument : "msg" ""DEBUG:  BAD TILE RETURNED""
show_debug_message(string("DEBUG:  BAD TILE RETURNED"));

/// @DnDAction : YoYo Games.Common.Return
/// @DnDVersion : 1
/// @DnDHash : 1CECC79B
/// @DnDArgument : "value" "0"
return 0;

