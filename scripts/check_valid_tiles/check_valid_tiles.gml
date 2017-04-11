/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 263F39C5
/// @DnDInput : 3
/// @DnDArgument : "expr" "argument1"
/// @DnDArgument : "expr_1" "argument2"
/// @DnDArgument : "expr_2" "argument3"
/// @DnDArgument : "var" "originx"
/// @DnDArgument : "var_1" "originy"
/// @DnDArgument : "var_2" "originme"
originx = argument1;
originy = argument2;
originme = argument3;


/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 061C55F8
/// @DnDArgument : "var" "argument0"
/// @DnDArgument : "value" ""move""
if(argument0 == "move")
{
	

	/// @DnDAction : YoYo Games.Data Structures.Grid_Clear
	/// @DnDVersion : 1
	/// @DnDHash : 1DBE111D
	/// @DnDParent : 061C55F8
	/// @DnDArgument : "var" "global.valid_moves"
	
	{
		ds_grid_clear(global.valid_moves, 0);
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 664610CB
	/// @DnDInput : 3
	/// @DnDParent : 061C55F8
	/// @DnDArgument : "var" "scanx"
	/// @DnDArgument : "var_1" "scany"
	/// @DnDArgument : "var_2" "validmovecount"
	scanx = 0;
	scany = 0;
	validmovecount = 0;
	

	/// @DnDAction : YoYo Games.Loops.Loop
	/// @DnDVersion : 1
	/// @DnDHash : 2B59A97E
	/// @DnDParent : 061C55F8
	while(true)
	{
		
	
			/// @DnDAction : YoYo Games.Loops.Loop
			/// @DnDVersion : 1
			/// @DnDHash : 14BDEA47
			/// @DnDParent : 2B59A97E
			while(true)
			{
				
			
						/// @DnDAction : YoYo Games.Common.Temp_Variable
						/// @DnDVersion : 1
						/// @DnDHash : 34639894
						/// @DnDParent : 14BDEA47
						/// @DnDArgument : "var" "checkx"
						/// @DnDArgument : "value" "scanx - originx"
						var checkx = scanx - originx;
						
			
						/// @DnDAction : YoYo Games.Common.Temp_Variable
						/// @DnDVersion : 1
						/// @DnDHash : 76C9898E
						/// @DnDParent : 14BDEA47
						/// @DnDArgument : "var" "checky"
						/// @DnDArgument : "value" "scany - originy"
						var checky = scany - originy;
						
			
						/// @DnDAction : YoYo Games.Common.Execute_Script
						/// @DnDVersion : 1.1
						/// @DnDHash : 2E47C59A
						/// @DnDParent : 14BDEA47
						/// @DnDArgument : "var" "absdiffx"
						/// @DnDArgument : "script" "make_absolute"
						/// @DnDArgument : "arg" "checkx"
						/// @DnDSaveInfo : "script" "c404b9f3-c85f-41fc-8974-e47216d55bd8"
						absdiffx = script_execute(make_absolute, checkx);
			
						/// @DnDAction : YoYo Games.Common.Execute_Script
						/// @DnDVersion : 1.1
						/// @DnDHash : 7F6B5892
						/// @DnDParent : 14BDEA47
						/// @DnDArgument : "var" "absdiffy"
						/// @DnDArgument : "script" "make_absolute"
						/// @DnDArgument : "arg" "checky"
						/// @DnDSaveInfo : "script" "c404b9f3-c85f-41fc-8974-e47216d55bd8"
						absdiffy = script_execute(make_absolute, checky);
			
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 0C73F1D9
						/// @DnDParent : 14BDEA47
						/// @DnDArgument : "expr" "absdiffx + absdiffy"
						/// @DnDArgument : "var" "absdist"
						absdist = absdiffx + absdiffy;
						
			
						/// @DnDAction : YoYo Games.Common.If_Variable
						/// @DnDVersion : 1
						/// @DnDHash : 39FEDB58
						/// @DnDParent : 14BDEA47
						/// @DnDArgument : "var" "absdist"
						/// @DnDArgument : "op" "3"
						/// @DnDArgument : "value" "ds_grid_get(global.charstat, originme, 19)"
						if(absdist <= ds_grid_get(global.charstat, originme, 19))
						{
							
						
										/// @DnDAction : YoYo Games.Common.Variable
										/// @DnDVersion : 1
										/// @DnDHash : 4D6731DB
										/// @DnDParent : 39FEDB58
										/// @DnDArgument : "expr" "1"
										/// @DnDArgument : "expr_relative" "1"
										/// @DnDArgument : "var" "validmovecount"
										validmovecount += 1;
										
						
										/// @DnDAction : YoYo Games.Common.If_Variable
										/// @DnDVersion : 1
										/// @DnDHash : 4B5B560E
										/// @DnDParent : 39FEDB58
										/// @DnDArgument : "var" "ds_grid_get(global.battlemap, scanx, scany)"
										/// @DnDArgument : "value" "-1"
										if(ds_grid_get(global.battlemap, scanx, scany) == -1)
										{
											
										
															/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
															/// @DnDVersion : 1
															/// @DnDHash : 0E77079C
															/// @DnDParent : 4B5B560E
															/// @DnDArgument : "var" "global.valid_moves"
															/// @DnDArgument : "x" "scanx"
															/// @DnDArgument : "y" "scany"
															/// @DnDArgument : "value" "1"
															
															{
																ds_grid_set(global.valid_moves, scanx, scany, 1);
															}
										
										
										}
						
										/// @DnDAction : YoYo Games.Common.If_Variable
										/// @DnDVersion : 1
										/// @DnDHash : 40A7F4FE
										/// @DnDParent : 39FEDB58
										/// @DnDArgument : "var" "ds_grid_get(global.battlemap, scanx, scany)"
										/// @DnDArgument : "value" "myself"
										if(ds_grid_get(global.battlemap, scanx, scany) == myself)
										{
											
										
															/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
															/// @DnDVersion : 1
															/// @DnDHash : 300911E8
															/// @DnDParent : 40A7F4FE
															/// @DnDArgument : "var" "global.valid_moves"
															/// @DnDArgument : "x" "scanx"
															/// @DnDArgument : "y" "scany"
															/// @DnDArgument : "value" "1"
															
															{
																ds_grid_set(global.valid_moves, scanx, scany, 1);
															}
										
										
										}
						
						
						}
			
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 30AD368A
						/// @DnDParent : 14BDEA47
						/// @DnDArgument : "expr" "1"
						/// @DnDArgument : "expr_relative" "1"
						/// @DnDArgument : "var" "scanx"
						scanx += 1;
						
			
						/// @DnDAction : YoYo Games.Common.If_Variable
						/// @DnDVersion : 1
						/// @DnDHash : 2EE85564
						/// @DnDParent : 14BDEA47
						/// @DnDArgument : "var" "scanx"
						/// @DnDArgument : "op" "4"
						/// @DnDArgument : "value" "ds_grid_width(global.battlemap)"
						if(scanx >= ds_grid_width(global.battlemap))
						{
							
						
										/// @DnDAction : YoYo Games.Loops.Break
										/// @DnDVersion : 1
										/// @DnDHash : 04B1D106
										/// @DnDParent : 2EE85564
										break;
						
						
						}
			
			
			}
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7382B041
			/// @DnDParent : 2B59A97E
			/// @DnDArgument : "var" "scanx"
			scanx = 0;
			
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4FAFF7F2
			/// @DnDParent : 2B59A97E
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "scany"
			scany += 1;
			
	
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 69D722D3
			/// @DnDParent : 2B59A97E
			/// @DnDArgument : "var" "scany"
			/// @DnDArgument : "op" "4"
			/// @DnDArgument : "value" "ds_grid_height(global.battlemap)"
			if(scany >= ds_grid_height(global.battlemap))
			{
				
			
						/// @DnDAction : YoYo Games.Loops.Break
						/// @DnDVersion : 1
						/// @DnDHash : 2DFD0C52
						/// @DnDParent : 69D722D3
						break;
			
			
			}
	
	
	}


}

