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
/// @DnDArgument : "value" "-1"
if(argument0 == -1)
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
															/// @DnDArgument : "value" "ds_grid_get(global.terrainmap, scanx, scany)"
															
															{
																ds_grid_set(global.valid_moves, scanx, scany, ds_grid_get(global.terrainmap, scanx, scany));
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

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 39640E26
/// @DnDArgument : "var" "argument0"
if(argument0 == 0)
{
	

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 133921AA
	/// @DnDParent : 39640E26
	/// @DnDArgument : "msg" ""Finding melee targets""
	show_debug_message(string("Finding melee targets"));

	/// @DnDAction : YoYo Games.Data Structures.Grid_Clear
	/// @DnDVersion : 1
	/// @DnDHash : 3D8FAADD
	/// @DnDParent : 39640E26
	/// @DnDArgument : "var" "global.valid_moves"
	
	{
		ds_grid_clear(global.valid_moves, 0);
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5A9ECC23
	/// @DnDParent : 39640E26
	/// @DnDArgument : "var" "numvalidmoves"
	numvalidmoves = 0;
	

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 4239E249
	/// @DnDParent : 39640E26
	/// @DnDArgument : "msg" ""Finding Target Factions""
	show_debug_message(string("Finding Target Factions"));

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 256CA835
	/// @DnDInput : 2
	/// @DnDParent : 39640E26
	/// @DnDArgument : "var" "actorfaction"
	/// @DnDArgument : "script" "getfaction"
	/// @DnDArgument : "arg" "originx"
	/// @DnDArgument : "arg_1" "originy"
	/// @DnDSaveInfo : "script" "d3c0aa70-424a-47ae-ba73-0edbea07686d"
	actorfaction = script_execute(getfaction, originx, originy);

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 691CBEF0
	/// @DnDParent : 39640E26
	/// @DnDArgument : "msg" ""Actor Faction Found""
	show_debug_message(string("Actor Faction Found"));

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 225E3CA3
	/// @DnDParent : 39640E26
	/// @DnDArgument : "msg" "actorfaction"
	show_debug_message(string(actorfaction));

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 331A9B68
	/// @DnDInput : 3
	/// @DnDParent : 39640E26
	/// @DnDArgument : "var" "scanx"
	/// @DnDArgument : "var_1" "scany"
	/// @DnDArgument : "var_2" "validmovecount"
	scanx = 0;
	scany = 0;
	validmovecount = 0;
	

	/// @DnDAction : YoYo Games.Loops.Loop
	/// @DnDVersion : 1
	/// @DnDHash : 6F4BAD56
	/// @DnDParent : 39640E26
	while(true)
	{
		
	
			/// @DnDAction : YoYo Games.Loops.Loop
			/// @DnDVersion : 1
			/// @DnDHash : 04574AA2
			/// @DnDParent : 6F4BAD56
			while(true)
			{
				
			
						/// @DnDAction : YoYo Games.Common.Temp_Variable
						/// @DnDVersion : 1
						/// @DnDHash : 064BBFE3
						/// @DnDParent : 04574AA2
						/// @DnDArgument : "var" "checkx"
						/// @DnDArgument : "value" "scanx - originx"
						var checkx = scanx - originx;
						
			
						/// @DnDAction : YoYo Games.Common.Temp_Variable
						/// @DnDVersion : 1
						/// @DnDHash : 5802BED6
						/// @DnDParent : 04574AA2
						/// @DnDArgument : "var" "checky"
						/// @DnDArgument : "value" "scany - originy"
						var checky = scany - originy;
						
			
						/// @DnDAction : YoYo Games.Common.Execute_Script
						/// @DnDVersion : 1.1
						/// @DnDHash : 79F789D3
						/// @DnDParent : 04574AA2
						/// @DnDArgument : "var" "absdiffx"
						/// @DnDArgument : "script" "make_absolute"
						/// @DnDArgument : "arg" "checkx"
						/// @DnDSaveInfo : "script" "c404b9f3-c85f-41fc-8974-e47216d55bd8"
						absdiffx = script_execute(make_absolute, checkx);
			
						/// @DnDAction : YoYo Games.Common.Execute_Script
						/// @DnDVersion : 1.1
						/// @DnDHash : 699FBFC9
						/// @DnDParent : 04574AA2
						/// @DnDArgument : "var" "absdiffy"
						/// @DnDArgument : "script" "make_absolute"
						/// @DnDArgument : "arg" "checky"
						/// @DnDSaveInfo : "script" "c404b9f3-c85f-41fc-8974-e47216d55bd8"
						absdiffy = script_execute(make_absolute, checky);
			
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 1BB3EDBD
						/// @DnDParent : 04574AA2
						/// @DnDArgument : "expr" "absdiffx + absdiffy"
						/// @DnDArgument : "var" "absdist"
						absdist = absdiffx + absdiffy;
						
			
						/// @DnDAction : YoYo Games.Common.If_Variable
						/// @DnDVersion : 1
						/// @DnDHash : 497CAA5F
						/// @DnDParent : 04574AA2
						/// @DnDArgument : "var" "absdist"
						/// @DnDArgument : "value" "1"
						if(absdist == 1)
						{
							
						
										/// @DnDAction : YoYo Games.Common.Execute_Script
										/// @DnDVersion : 1.1
										/// @DnDHash : 61727FB2
										/// @DnDInput : 2
										/// @DnDParent : 497CAA5F
										/// @DnDArgument : "var" "targetfaction"
										/// @DnDArgument : "script" "getfaction"
										/// @DnDArgument : "arg" "scanx"
										/// @DnDArgument : "arg_1" "scany"
										/// @DnDSaveInfo : "script" "d3c0aa70-424a-47ae-ba73-0edbea07686d"
										targetfaction = script_execute(getfaction, scanx, scany);
						
										/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
										/// @DnDVersion : 1
										/// @DnDHash : 6669A6FA
										/// @DnDParent : 497CAA5F
										/// @DnDArgument : "msg" ""Comparing Actor vs Target Faction""
										show_debug_message(string("Comparing Actor vs Target Faction"));
						
										/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
										/// @DnDVersion : 1
										/// @DnDHash : 7E5B67E3
										/// @DnDParent : 497CAA5F
										/// @DnDArgument : "msg" "targetfaction"
										show_debug_message(string(targetfaction));
						
										/// @DnDAction : YoYo Games.Common.If_Variable
										/// @DnDVersion : 1
										/// @DnDHash : 4113E3AC
										/// @DnDParent : 497CAA5F
										/// @DnDArgument : "var" "targetfaction"
										/// @DnDArgument : "value" "-1"
										if(targetfaction == -1)
										{
											
										
															/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
															/// @DnDVersion : 1
															/// @DnDHash : 5AAFA4FD
															/// @DnDParent : 4113E3AC
															/// @DnDArgument : "msg" ""No Target Found - Passing""
															show_debug_message(string("No Target Found - Passing"));
										
										
										}
						
										/// @DnDAction : YoYo Games.Common.Else
										/// @DnDVersion : 1
										/// @DnDHash : 27532E19
										/// @DnDParent : 497CAA5F
										else
										{
											
										
															/// @DnDAction : YoYo Games.Common.If_Variable
															/// @DnDVersion : 1
															/// @DnDHash : 7F1D9860
															/// @DnDParent : 27532E19
															/// @DnDArgument : "var" "actorfaction"
															/// @DnDArgument : "not" "1"
															/// @DnDArgument : "value" "targetfaction"
															if(!(actorfaction == targetfaction))
															{
																
															
																					/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
																					/// @DnDVersion : 1
																					/// @DnDHash : 45DEE96E
																					/// @DnDParent : 7F1D9860
																					/// @DnDArgument : "var" "global.valid_moves"
																					/// @DnDArgument : "x" "scanx"
																					/// @DnDArgument : "y" "scany"
																					/// @DnDArgument : "value" "1"
																					
																					{
																						ds_grid_set(global.valid_moves, scanx, scany, 1);
																					}
															
																					/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
																					/// @DnDVersion : 1
																					/// @DnDHash : 42A2D348
																					/// @DnDParent : 7F1D9860
																					/// @DnDArgument : "msg" ""Not Aligned - Target Valid""
																					show_debug_message(string("Not Aligned - Target Valid"));
															
																					/// @DnDAction : YoYo Games.Common.Variable
																					/// @DnDVersion : 1
																					/// @DnDHash : 7CB0C5D1
																					/// @DnDParent : 7F1D9860
																					/// @DnDArgument : "expr" "1"
																					/// @DnDArgument : "expr_relative" "1"
																					/// @DnDArgument : "var" "validmovecount"
																					validmovecount += 1;
																					
															
															
															}
										
										
										}
						
						
						}
			
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 6B7D6FC2
						/// @DnDParent : 04574AA2
						/// @DnDArgument : "expr" "1"
						/// @DnDArgument : "expr_relative" "1"
						/// @DnDArgument : "var" "scanx"
						scanx += 1;
						
			
						/// @DnDAction : YoYo Games.Common.If_Variable
						/// @DnDVersion : 1
						/// @DnDHash : 7DD6A40A
						/// @DnDParent : 04574AA2
						/// @DnDArgument : "var" "scanx"
						/// @DnDArgument : "op" "4"
						/// @DnDArgument : "value" "ds_grid_width(global.battlemap)"
						if(scanx >= ds_grid_width(global.battlemap))
						{
							
						
										/// @DnDAction : YoYo Games.Loops.Break
										/// @DnDVersion : 1
										/// @DnDHash : 5BE95457
										/// @DnDParent : 7DD6A40A
										break;
						
						
						}
			
			
			}
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3E436953
			/// @DnDParent : 6F4BAD56
			/// @DnDArgument : "var" "scanx"
			scanx = 0;
			
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 761506F2
			/// @DnDParent : 6F4BAD56
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "scany"
			scany += 1;
			
	
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2041F489
			/// @DnDParent : 6F4BAD56
			/// @DnDArgument : "var" "scany"
			/// @DnDArgument : "op" "4"
			/// @DnDArgument : "value" "ds_grid_height(global.battlemap)"
			if(scany >= ds_grid_height(global.battlemap))
			{
				
			
						/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
						/// @DnDVersion : 1
						/// @DnDHash : 7B367AEF
						/// @DnDParent : 2041F489
						/// @DnDArgument : "msg" ""END SCAN - Completed""
						show_debug_message(string("END SCAN - Completed"));
			
						/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
						/// @DnDVersion : 1
						/// @DnDHash : 69BF67B4
						/// @DnDParent : 2041F489
						/// @DnDArgument : "msg" "validmovecount"
						show_debug_message(string(validmovecount));
			
						/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
						/// @DnDVersion : 1
						/// @DnDHash : 69D56FB0
						/// @DnDParent : 2041F489
						/// @DnDArgument : "msg" ""Valid Targets Found""
						show_debug_message(string("Valid Targets Found"));
			
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 6C957BE6
						/// @DnDParent : 2041F489
						/// @DnDArgument : "expr" "1"
						/// @DnDArgument : "var" "global.target_scan_done"
						global.target_scan_done = 1;
						
			
						/// @DnDAction : YoYo Games.Loops.Break
						/// @DnDVersion : 1
						/// @DnDHash : 456964DF
						/// @DnDParent : 2041F489
						break;
			
			
			}
	
	
	}


}

