/// @DnDAction : YoYo Games.Data Structures.Grid_Clear
/// @DnDVersion : 1
/// @DnDHash : 3C439FA3
/// @DnDArgument : "var" "global.valid_moves"

{
	ds_grid_clear(global.valid_moves, 0);
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 28FA3820
/// @DnDInput : 3
/// @DnDArgument : "expr" "argument0"
/// @DnDArgument : "expr_1" "argument1"
/// @DnDArgument : "expr_2" "argument2"
/// @DnDArgument : "var" "originx"
/// @DnDArgument : "var_1" "originy"
/// @DnDArgument : "var_2" "originme"
originx = argument0;
originy = argument1;
originme = argument2;


/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4AE2FA11
/// @DnDArgument : "expr" "ds_grid_get(global.charstat,originme,19)"
/// @DnDArgument : "var" "moveremain"
moveremain = ds_grid_get(global.charstat,originme,19);


/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2D3FFAC0
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "moveremain"
moveremain += 1;


/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
/// @DnDVersion : 1
/// @DnDHash : 73E3B3EA
/// @DnDArgument : "var" "global.valid_moves"
/// @DnDArgument : "x" "originx"
/// @DnDArgument : "y" "originy"
/// @DnDArgument : "value" "moveremain"

{
	ds_grid_set(global.valid_moves, originx, originy, moveremain);
}

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 60E49158
/// @DnDInput : 2
/// @DnDArgument : "var" "myfaction"
/// @DnDArgument : "script" "getfaction"
/// @DnDArgument : "arg" "originx"
/// @DnDArgument : "arg_1" "originy"
/// @DnDSaveInfo : "script" "d3c0aa70-424a-47ae-ba73-0edbea07686d"
myfaction = script_execute(getfaction, originx, originy);

/// @DnDAction : YoYo Games.Data Structures.Create_Stack
/// @DnDVersion : 1
/// @DnDHash : 57F5E4E2
/// @DnDArgument : "var" "global.nextmovestackx"
global.nextmovestackx = ds_stack_create();


/// @DnDAction : YoYo Games.Data Structures.Create_Stack
/// @DnDVersion : 1
/// @DnDHash : 4D0506A3
/// @DnDArgument : "var" "global.nextmovestacky"
global.nextmovestacky = ds_stack_create();


/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 3ED45041
/// @DnDInput : 2
/// @DnDArgument : "var" "checkgood"
/// @DnDArgument : "script" "check_adjacent_tiles"
/// @DnDArgument : "arg" "originx "
/// @DnDArgument : "arg_1" "originy - 1"
/// @DnDSaveInfo : "script" "07d83860-7fd4-4e36-95e5-4796975a33b8"
checkgood = script_execute(check_adjacent_tiles, originx , originy - 1);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 57850A7C
/// @DnDArgument : "var" "checkgood"
/// @DnDArgument : "value" "1"
if(checkgood == 1)
{
	

	/// @DnDAction : YoYo Games.Data Structures.Stack_Push
	/// @DnDVersion : 1
	/// @DnDHash : 236AD8A4
	/// @DnDParent : 57850A7C
	/// @DnDArgument : "var" "global.nextmovestacky"
	/// @DnDArgument : "value" "originy - 1"
	
		ds_stack_push(global.nextmovestacky, originy - 1);

	/// @DnDAction : YoYo Games.Data Structures.Stack_Push
	/// @DnDVersion : 1
	/// @DnDHash : 5B52B96D
	/// @DnDParent : 57850A7C
	/// @DnDArgument : "var" "global.nextmovestackx"
	/// @DnDArgument : "value" "originx"
	
		ds_stack_push(global.nextmovestackx, originx);


}

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 0A9F5988
/// @DnDInput : 2
/// @DnDArgument : "var" "checkgood"
/// @DnDArgument : "script" "check_adjacent_tiles"
/// @DnDArgument : "arg" "originx "
/// @DnDArgument : "arg_1" "originy + 1"
/// @DnDSaveInfo : "script" "07d83860-7fd4-4e36-95e5-4796975a33b8"
checkgood = script_execute(check_adjacent_tiles, originx , originy + 1);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1A579238
/// @DnDArgument : "var" "checkgood"
/// @DnDArgument : "value" "1"
if(checkgood == 1)
{
	

	/// @DnDAction : YoYo Games.Data Structures.Stack_Push
	/// @DnDVersion : 1
	/// @DnDHash : 5C491EDE
	/// @DnDParent : 1A579238
	/// @DnDArgument : "var" "global.nextmovestacky"
	/// @DnDArgument : "value" "originy + 1"
	
		ds_stack_push(global.nextmovestacky, originy + 1);

	/// @DnDAction : YoYo Games.Data Structures.Stack_Push
	/// @DnDVersion : 1
	/// @DnDHash : 26BBB668
	/// @DnDParent : 1A579238
	/// @DnDArgument : "var" "global.nextmovestackx"
	/// @DnDArgument : "value" "originx"
	
		ds_stack_push(global.nextmovestackx, originx);


}

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 297C6585
/// @DnDInput : 2
/// @DnDArgument : "var" "checkgood"
/// @DnDArgument : "script" "check_adjacent_tiles"
/// @DnDArgument : "arg" "originx +1"
/// @DnDArgument : "arg_1" "originy"
/// @DnDSaveInfo : "script" "07d83860-7fd4-4e36-95e5-4796975a33b8"
checkgood = script_execute(check_adjacent_tiles, originx +1, originy);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4C10E1C1
/// @DnDArgument : "var" "checkgood"
/// @DnDArgument : "value" "1"
if(checkgood == 1)
{
	

	/// @DnDAction : YoYo Games.Data Structures.Stack_Push
	/// @DnDVersion : 1
	/// @DnDHash : 400A9AD6
	/// @DnDParent : 4C10E1C1
	/// @DnDArgument : "var" "global.nextmovestacky"
	/// @DnDArgument : "value" "originy"
	
		ds_stack_push(global.nextmovestacky, originy);

	/// @DnDAction : YoYo Games.Data Structures.Stack_Push
	/// @DnDVersion : 1
	/// @DnDHash : 714568DE
	/// @DnDParent : 4C10E1C1
	/// @DnDArgument : "var" "global.nextmovestackx"
	/// @DnDArgument : "value" "originx + 1"
	
		ds_stack_push(global.nextmovestackx, originx + 1);


}

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 74BF5C4A
/// @DnDInput : 2
/// @DnDArgument : "var" "checkgood"
/// @DnDArgument : "script" "check_adjacent_tiles"
/// @DnDArgument : "arg" "originx - 1"
/// @DnDArgument : "arg_1" "originy"
/// @DnDSaveInfo : "script" "07d83860-7fd4-4e36-95e5-4796975a33b8"
checkgood = script_execute(check_adjacent_tiles, originx - 1, originy);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5A2570C2
/// @DnDArgument : "var" "checkgood"
/// @DnDArgument : "value" "1"
if(checkgood == 1)
{
	

	/// @DnDAction : YoYo Games.Data Structures.Stack_Push
	/// @DnDVersion : 1
	/// @DnDHash : 5AEB5459
	/// @DnDParent : 5A2570C2
	/// @DnDArgument : "var" "global.nextmovestacky"
	/// @DnDArgument : "value" "originy"
	
		ds_stack_push(global.nextmovestacky, originy);

	/// @DnDAction : YoYo Games.Data Structures.Stack_Push
	/// @DnDVersion : 1
	/// @DnDHash : 1E12DC94
	/// @DnDParent : 5A2570C2
	/// @DnDArgument : "var" "global.nextmovestackx"
	/// @DnDArgument : "value" "originx - 1"
	
		ds_stack_push(global.nextmovestackx, originx - 1);


}

/// @DnDAction : YoYo Games.Data Structures.Create_Stack
/// @DnDVersion : 1
/// @DnDHash : 7CCDED4F
/// @DnDArgument : "var" "global.currentmovestackx"
global.currentmovestackx = ds_stack_create();


/// @DnDAction : YoYo Games.Data Structures.Create_Stack
/// @DnDVersion : 1
/// @DnDHash : 5C585102
/// @DnDArgument : "var" "global.currentmovestacky"
global.currentmovestacky = ds_stack_create();


/// @DnDAction : YoYo Games.Loops.Loop
/// @DnDVersion : 1
/// @DnDHash : 78230740
while(true)
{
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 38C2BC7C
	/// @DnDParent : 78230740
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "moveremain"
	moveremain += -1;
	

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0FEBB54E
	/// @DnDParent : 78230740
	/// @DnDArgument : "var" "moveremain"
	if(moveremain == 0)
	{
		
	
			/// @DnDAction : YoYo Games.Loops.Break
			/// @DnDVersion : 1
			/// @DnDHash : 75E3D428
			/// @DnDParent : 0FEBB54E
			break;
	
	
	}

	/// @DnDAction : YoYo Games.Loops.Loop
	/// @DnDVersion : 1
	/// @DnDHash : 2F937D90
	/// @DnDParent : 78230740
	while(true)
	{
		
	
			/// @DnDAction : YoYo Games.Data Structures.If_DS_Empty
			/// @DnDVersion : 1
			/// @DnDHash : 756F70E0
			/// @DnDParent : 2F937D90
			/// @DnDArgument : "ds" "2"
			/// @DnDArgument : "var" "global.nextmovestackx"
			
				var l756F70E0_0 = global.nextmovestackx;
				
			if(ds_stack_empty(l756F70E0_0))
			{
				
			
						/// @DnDAction : YoYo Games.Data Structures.If_DS_Empty
						/// @DnDVersion : 1
						/// @DnDHash : 0CC3BAA4
						/// @DnDParent : 756F70E0
						/// @DnDArgument : "ds" "2"
						/// @DnDArgument : "var" "global.nextmovestacky"
						
							var l0CC3BAA4_0 = global.nextmovestacky;
							
						if(ds_stack_empty(l0CC3BAA4_0))
						{
							
						
										/// @DnDAction : YoYo Games.Loops.Break
										/// @DnDVersion : 1
										/// @DnDHash : 6B41F172
										/// @DnDParent : 0CC3BAA4
										break;
						
						
						}
			
						/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
						/// @DnDVersion : 1
						/// @DnDHash : 7A10EF71
						/// @DnDParent : 756F70E0
						/// @DnDArgument : "msg" ""Uneven Next Move Stacks""
						show_debug_message(string("Uneven Next Move Stacks"));
			
						/// @DnDAction : YoYo Games.Game.End_Game
						/// @DnDVersion : 1
						/// @DnDHash : 17C89646
						/// @DnDParent : 756F70E0
						game_end();
			
			
			}
	
			/// @DnDAction : YoYo Games.Data Structures.Stack_Pop
			/// @DnDVersion : 1
			/// @DnDHash : 69369922
			/// @DnDParent : 2F937D90
			/// @DnDArgument : "assignee" "stackxfer"
			/// @DnDArgument : "var" "global.nextmovestackx"
			
				stackxfer = ds_stack_pop(global.nextmovestackx);
	
			/// @DnDAction : YoYo Games.Data Structures.Stack_Push
			/// @DnDVersion : 1
			/// @DnDHash : 2984412B
			/// @DnDParent : 2F937D90
			/// @DnDArgument : "var" "global.currentmovestackx"
			/// @DnDArgument : "value" "stackxfer"
			
				ds_stack_push(global.currentmovestackx, stackxfer);
	
			/// @DnDAction : YoYo Games.Data Structures.Stack_Pop
			/// @DnDVersion : 1
			/// @DnDHash : 0AA28D4E
			/// @DnDParent : 2F937D90
			/// @DnDArgument : "assignee" "stackxfer"
			/// @DnDArgument : "var" "global.nextmovestacky"
			
				stackxfer = ds_stack_pop(global.nextmovestacky);
	
			/// @DnDAction : YoYo Games.Data Structures.Stack_Push
			/// @DnDVersion : 1
			/// @DnDHash : 47D4DECC
			/// @DnDParent : 2F937D90
			/// @DnDArgument : "var" "global.currentmovestacky"
			/// @DnDArgument : "value" "stackxfer"
			
				ds_stack_push(global.currentmovestacky, stackxfer);
	
	
	}

	/// @DnDAction : YoYo Games.Loops.Loop
	/// @DnDVersion : 1
	/// @DnDHash : 6D3C5C32
	/// @DnDParent : 78230740
	while(true)
	{
		
	
			/// @DnDAction : YoYo Games.Data Structures.If_DS_Empty
			/// @DnDVersion : 1
			/// @DnDHash : 5F1FA2C8
			/// @DnDParent : 6D3C5C32
			/// @DnDArgument : "ds" "2"
			/// @DnDArgument : "var" "global.currentmovestackx"
			
				var l5F1FA2C8_0 = global.currentmovestackx;
				
			if(ds_stack_empty(l5F1FA2C8_0))
			{
				
			
						/// @DnDAction : YoYo Games.Data Structures.If_DS_Empty
						/// @DnDVersion : 1
						/// @DnDHash : 1FA7A741
						/// @DnDParent : 5F1FA2C8
						/// @DnDArgument : "ds" "2"
						/// @DnDArgument : "var" "global.currentmovestacky"
						
							var l1FA7A741_0 = global.currentmovestacky;
							
						if(ds_stack_empty(l1FA7A741_0))
						{
							
						
										/// @DnDAction : YoYo Games.Loops.Break
										/// @DnDVersion : 1
										/// @DnDHash : 1B1EDB51
										/// @DnDParent : 1FA7A741
										break;
						
						
						}
			
						/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
						/// @DnDVersion : 1
						/// @DnDHash : 6CC24F5E
						/// @DnDParent : 5F1FA2C8
						/// @DnDArgument : "msg" ""Uneven Current Move Stacks""
						show_debug_message(string("Uneven Current Move Stacks"));
			
						/// @DnDAction : YoYo Games.Game.End_Game
						/// @DnDVersion : 1
						/// @DnDHash : 6A755F3B
						/// @DnDParent : 5F1FA2C8
						game_end();
			
			
			}
	
			/// @DnDAction : YoYo Games.Data Structures.Stack_Pop
			/// @DnDVersion : 1
			/// @DnDHash : 57BCF03F
			/// @DnDParent : 6D3C5C32
			/// @DnDArgument : "assignee" "scanx"
			/// @DnDArgument : "var" "global.currentmovestackx"
			
				scanx = ds_stack_pop(global.currentmovestackx);
	
			/// @DnDAction : YoYo Games.Data Structures.Stack_Pop
			/// @DnDVersion : 1
			/// @DnDHash : 0F68CEA9
			/// @DnDParent : 6D3C5C32
			/// @DnDArgument : "assignee" "scany"
			/// @DnDArgument : "var" "global.currentmovestacky"
			
				scany = ds_stack_pop(global.currentmovestacky);
	
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 09CEC000
			/// @DnDInput : 2
			/// @DnDParent : 6D3C5C32
			/// @DnDArgument : "var" "checkgood"
			/// @DnDArgument : "script" "check_adjacent_tiles"
			/// @DnDArgument : "arg" "scanx"
			/// @DnDArgument : "arg_1" "scany - 1"
			/// @DnDSaveInfo : "script" "07d83860-7fd4-4e36-95e5-4796975a33b8"
			checkgood = script_execute(check_adjacent_tiles, scanx, scany - 1);
	
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3FA65B81
			/// @DnDParent : 6D3C5C32
			/// @DnDArgument : "var" "checkgood"
			/// @DnDArgument : "value" "1"
			if(checkgood == 1)
			{
				
			
						/// @DnDAction : YoYo Games.Data Structures.Stack_Push
						/// @DnDVersion : 1
						/// @DnDHash : 51AA3888
						/// @DnDParent : 3FA65B81
						/// @DnDArgument : "var" "global.nextmovestacky"
						/// @DnDArgument : "value" "scany - 1"
						
							ds_stack_push(global.nextmovestacky, scany - 1);
			
						/// @DnDAction : YoYo Games.Data Structures.Stack_Push
						/// @DnDVersion : 1
						/// @DnDHash : 47FC14CF
						/// @DnDParent : 3FA65B81
						/// @DnDArgument : "var" "global.nextmovestackx"
						/// @DnDArgument : "value" "scanx"
						
							ds_stack_push(global.nextmovestackx, scanx);
			
			
			}
	
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 5BD0A0C9
			/// @DnDInput : 2
			/// @DnDParent : 6D3C5C32
			/// @DnDArgument : "var" "checkgood"
			/// @DnDArgument : "script" "check_adjacent_tiles"
			/// @DnDArgument : "arg" "scanx"
			/// @DnDArgument : "arg_1" "scany + 1"
			/// @DnDSaveInfo : "script" "07d83860-7fd4-4e36-95e5-4796975a33b8"
			checkgood = script_execute(check_adjacent_tiles, scanx, scany + 1);
	
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0C88F739
			/// @DnDParent : 6D3C5C32
			/// @DnDArgument : "var" "checkgood"
			/// @DnDArgument : "value" "1"
			if(checkgood == 1)
			{
				
			
						/// @DnDAction : YoYo Games.Data Structures.Stack_Push
						/// @DnDVersion : 1
						/// @DnDHash : 0964FB7B
						/// @DnDParent : 0C88F739
						/// @DnDArgument : "var" "global.nextmovestacky"
						/// @DnDArgument : "value" "scany + 1"
						
							ds_stack_push(global.nextmovestacky, scany + 1);
			
						/// @DnDAction : YoYo Games.Data Structures.Stack_Push
						/// @DnDVersion : 1
						/// @DnDHash : 5ACDE4B4
						/// @DnDParent : 0C88F739
						/// @DnDArgument : "var" "global.nextmovestackx"
						/// @DnDArgument : "value" "scanx"
						
							ds_stack_push(global.nextmovestackx, scanx);
			
			
			}
	
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 3AF98A58
			/// @DnDInput : 2
			/// @DnDParent : 6D3C5C32
			/// @DnDArgument : "var" "checkgood"
			/// @DnDArgument : "script" "check_adjacent_tiles"
			/// @DnDArgument : "arg" "scanx +1"
			/// @DnDArgument : "arg_1" "scany"
			/// @DnDSaveInfo : "script" "07d83860-7fd4-4e36-95e5-4796975a33b8"
			checkgood = script_execute(check_adjacent_tiles, scanx +1, scany);
	
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0E8F9032
			/// @DnDParent : 6D3C5C32
			/// @DnDArgument : "var" "checkgood"
			/// @DnDArgument : "value" "1"
			if(checkgood == 1)
			{
				
			
						/// @DnDAction : YoYo Games.Data Structures.Stack_Push
						/// @DnDVersion : 1
						/// @DnDHash : 4B7AB9A6
						/// @DnDParent : 0E8F9032
						/// @DnDArgument : "var" "global.nextmovestacky"
						/// @DnDArgument : "value" "scany"
						
							ds_stack_push(global.nextmovestacky, scany);
			
						/// @DnDAction : YoYo Games.Data Structures.Stack_Push
						/// @DnDVersion : 1
						/// @DnDHash : 243DF928
						/// @DnDParent : 0E8F9032
						/// @DnDArgument : "var" "global.nextmovestackx"
						/// @DnDArgument : "value" "scanx + 1"
						
							ds_stack_push(global.nextmovestackx, scanx + 1);
			
			
			}
	
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 518E9FC2
			/// @DnDInput : 2
			/// @DnDParent : 6D3C5C32
			/// @DnDArgument : "var" "checkgood"
			/// @DnDArgument : "script" "check_adjacent_tiles"
			/// @DnDArgument : "arg" "scanx -1"
			/// @DnDArgument : "arg_1" "scany"
			/// @DnDSaveInfo : "script" "07d83860-7fd4-4e36-95e5-4796975a33b8"
			checkgood = script_execute(check_adjacent_tiles, scanx -1, scany);
	
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4CDFE253
			/// @DnDParent : 6D3C5C32
			/// @DnDArgument : "var" "checkgood"
			/// @DnDArgument : "value" "1"
			if(checkgood == 1)
			{
				
			
						/// @DnDAction : YoYo Games.Data Structures.Stack_Push
						/// @DnDVersion : 1
						/// @DnDHash : 6AFE24D6
						/// @DnDParent : 4CDFE253
						/// @DnDArgument : "var" "global.nextmovestacky"
						/// @DnDArgument : "value" "scany"
						
							ds_stack_push(global.nextmovestacky, scany);
			
						/// @DnDAction : YoYo Games.Data Structures.Stack_Push
						/// @DnDVersion : 1
						/// @DnDHash : 02051320
						/// @DnDParent : 4CDFE253
						/// @DnDArgument : "var" "global.nextmovestackx"
						/// @DnDArgument : "value" "scanx - 1"
						
							ds_stack_push(global.nextmovestackx, scanx - 1);
			
			
			}
	
	
	}


}

