/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 1C9F975B
/// @DnDArgument : "msg" ""Execute Find Route""
show_debug_message(string("Execute Find Route"));

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0BD62A81
/// @DnDArgument : "expr" "argument0 - ds_grid_get(global.charstat, originme, 19)"
/// @DnDArgument : "var" "scanoriginx"
scanoriginx = argument0 - ds_grid_get(global.charstat, originme, 19);


/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1079F237
/// @DnDArgument : "expr" "argument1 - ds_grid_get(global.charstat, originme, 19)"
/// @DnDArgument : "var" "scanoriginy"
scanoriginy = argument1 - ds_grid_get(global.charstat, originme, 19);


/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 674811D0
/// @DnDArgument : "expr" "scanoriginx"
/// @DnDArgument : "var" "scanx"
scanx = scanoriginx;


/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7DBC2615
/// @DnDArgument : "expr" "scanoriginy"
/// @DnDArgument : "var" "scany"
scany = scanoriginy;


/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 33B959DF
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "passnum"
passnum = 1;


/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 3FAC26FC
/// @DnDInput : 2
/// @DnDArgument : "var" "myfaction"
/// @DnDArgument : "script" "getfaction"
/// @DnDArgument : "arg" "scanx"
/// @DnDArgument : "arg_1" "scany"
/// @DnDSaveInfo : "script" "d3c0aa70-424a-47ae-ba73-0edbea07686d"
myfaction = script_execute(getfaction, scanx, scany);

/// @DnDAction : YoYo Games.Data Structures.Grid_Clear
/// @DnDVersion : 1
/// @DnDHash : 69F3FED4
/// @DnDArgument : "var" "global.valid_moves"

{
	ds_grid_clear(global.valid_moves, 0);
}

/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
/// @DnDVersion : 1
/// @DnDHash : 77FB656E
/// @DnDArgument : "var" "global.valid_moves"
/// @DnDArgument : "x" "originx"
/// @DnDArgument : "y" "originy"
/// @DnDArgument : "value" "1"

{
	ds_grid_set(global.valid_moves, originx, originy, 1);
}

/// @DnDAction : YoYo Games.Loops.Loop
/// @DnDVersion : 1
/// @DnDHash : 2AEA9522
while(true)
{
	

	/// @DnDAction : YoYo Games.Loops.Loop
	/// @DnDVersion : 1
	/// @DnDHash : 465C46E0
	/// @DnDParent : 2AEA9522
	while(true)
	{
		
	
			/// @DnDAction : YoYo Games.Loops.Loop
			/// @DnDVersion : 1
			/// @DnDHash : 35DF645A
			/// @DnDParent : 465C46E0
			while(true)
			{
				
			
						/// @DnDAction : YoYo Games.Common.If_Variable
						/// @DnDVersion : 1
						/// @DnDHash : 0A8CF7B5
						/// @DnDParent : 35DF645A
						/// @DnDArgument : "var" "ds_grid_get(global.valid_moves, scanx - 1, scany)"
						/// @DnDArgument : "value" "passnum"
						if(ds_grid_get(global.valid_moves, scanx - 1, scany) == passnum)
						{
							
						
										/// @DnDAction : YoYo Games.Common.If_Variable
										/// @DnDVersion : 1
										/// @DnDHash : 347C9814
										/// @DnDParent : 0A8CF7B5
										/// @DnDArgument : "var" "ds_grid_get(global.battlemap, scanx - 1, scany)"
										/// @DnDArgument : "value" "-1"
										if(ds_grid_get(global.battlemap, scanx - 1, scany) == -1)
										{
											
										
															/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
															/// @DnDVersion : 1
															/// @DnDHash : 0485613D
															/// @DnDParent : 347C9814
															/// @DnDArgument : "var" "global.valid_moves"
															/// @DnDArgument : "x" "scanx"
															/// @DnDArgument : "y" "scany"
															/// @DnDArgument : "value" "passnum + 1"
															
															{
																ds_grid_set(global.valid_moves, scanx, scany, passnum + 1);
															}
										
										
										}
						
										/// @DnDAction : YoYo Games.Common.If_Variable
										/// @DnDVersion : 1
										/// @DnDHash : 4A207FDF
										/// @DnDParent : 0A8CF7B5
										/// @DnDArgument : "var" "ds_grid_get(global.battlemap, scanx - 1, scany)"
										/// @DnDArgument : "op" "3"
										/// @DnDArgument : "value" "99"
										if(ds_grid_get(global.battlemap, scanx - 1, scany) <= 99)
										{
											
										
															/// @DnDAction : YoYo Games.Common.If_Variable
															/// @DnDVersion : 1
															/// @DnDHash : 2EC6DFA4
															/// @DnDParent : 4A207FDF
															/// @DnDArgument : "var" "ds_grid_get(global.battlemap, scanx - 1, scany)"
															/// @DnDArgument : "not" "1"
															/// @DnDArgument : "value" "-1"
															if(!(ds_grid_get(global.battlemap, scanx - 1, scany) == -1))
															{
																
															
																					/// @DnDAction : YoYo Games.Common.Execute_Script
																					/// @DnDVersion : 1.1
																					/// @DnDHash : 63982D74
																					/// @DnDInput : 2
																					/// @DnDParent : 2EC6DFA4
																					/// @DnDArgument : "var" "scanfaction"
																					/// @DnDArgument : "script" "getfaction"
																					/// @DnDArgument : "arg" "scanx - 1"
																					/// @DnDArgument : "arg_1" "scany"
																					/// @DnDSaveInfo : "script" "d3c0aa70-424a-47ae-ba73-0edbea07686d"
																					scanfaction = script_execute(getfaction, scanx - 1, scany);
															
																					/// @DnDAction : YoYo Games.Common.If_Expression
																					/// @DnDVersion : 1
																					/// @DnDHash : 70924A4C
																					/// @DnDParent : 2EC6DFA4
																					/// @DnDArgument : "expr" "myfaction == scanfaction"
																					if(myfaction == scanfaction)
																					{
																						
																					
																												/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
																												/// @DnDVersion : 1
																												/// @DnDHash : 0E755322
																												/// @DnDParent : 70924A4C
																												/// @DnDArgument : "var" "global.valid_moves"
																												/// @DnDArgument : "x" "scanx"
																												/// @DnDArgument : "y" "scany"
																												/// @DnDArgument : "value" "passnum + 1"
																												
																												{
																													ds_grid_set(global.valid_moves, scanx, scany, passnum + 1);
																												}
																					
																					
																					}
															
															
															}
										
										
										}
						
										/// @DnDAction : YoYo Games.Common.If_Variable
										/// @DnDVersion : 1
										/// @DnDHash : 5EF1A149
										/// @DnDParent : 0A8CF7B5
										/// @DnDArgument : "var" "ds_grid_get(global.terrainmap, scanx - 1, scany)"
										/// @DnDArgument : "value" "1"
										if(ds_grid_get(global.terrainmap, scanx - 1, scany) == 1)
										{
											
										
															/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
															/// @DnDVersion : 1
															/// @DnDHash : 72E08FB0
															/// @DnDParent : 5EF1A149
															/// @DnDArgument : "var" "global.valid_moves"
															/// @DnDArgument : "x" "scanx"
															/// @DnDArgument : "y" "scany"
															/// @DnDArgument : "value" "0"
															
															{
																ds_grid_set(global.valid_moves, scanx, scany, 0);
															}
										
										
										}
						
						
						}
			
						/// @DnDAction : YoYo Games.Common.If_Variable
						/// @DnDVersion : 1
						/// @DnDHash : 475C23E7
						/// @DnDParent : 35DF645A
						/// @DnDArgument : "var" "ds_grid_get(global.valid_moves, scanx + 1, scany)"
						/// @DnDArgument : "value" "passnum"
						if(ds_grid_get(global.valid_moves, scanx + 1, scany) == passnum)
						{
							
						
										/// @DnDAction : YoYo Games.Common.If_Variable
										/// @DnDVersion : 1
										/// @DnDHash : 3C31E8C0
										/// @DnDParent : 475C23E7
										/// @DnDArgument : "var" "ds_grid_get(global.battlemap, scanx + 1, scany)"
										/// @DnDArgument : "value" "-1"
										if(ds_grid_get(global.battlemap, scanx + 1, scany) == -1)
										{
											
										
															/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
															/// @DnDVersion : 1
															/// @DnDHash : 42C975C3
															/// @DnDParent : 3C31E8C0
															/// @DnDArgument : "var" "global.valid_moves"
															/// @DnDArgument : "x" "scanx"
															/// @DnDArgument : "y" "scany"
															/// @DnDArgument : "value" "passnum + 1"
															
															{
																ds_grid_set(global.valid_moves, scanx, scany, passnum + 1);
															}
										
										
										}
						
										/// @DnDAction : YoYo Games.Common.If_Variable
										/// @DnDVersion : 1
										/// @DnDHash : 5A8ACA04
										/// @DnDParent : 475C23E7
										/// @DnDArgument : "var" "ds_grid_get(global.battlemap, scanx + 1, scany)"
										/// @DnDArgument : "op" "3"
										/// @DnDArgument : "value" "99"
										if(ds_grid_get(global.battlemap, scanx + 1, scany) <= 99)
										{
											
										
															/// @DnDAction : YoYo Games.Common.If_Variable
															/// @DnDVersion : 1
															/// @DnDHash : 5153434B
															/// @DnDParent : 5A8ACA04
															/// @DnDArgument : "var" "ds_grid_get(global.battlemap, scanx + 1, scany)"
															/// @DnDArgument : "not" "1"
															/// @DnDArgument : "value" "-1"
															if(!(ds_grid_get(global.battlemap, scanx + 1, scany) == -1))
															{
																
															
																					/// @DnDAction : YoYo Games.Common.Execute_Script
																					/// @DnDVersion : 1.1
																					/// @DnDHash : 16CFFA89
																					/// @DnDInput : 2
																					/// @DnDParent : 5153434B
																					/// @DnDArgument : "var" "scanfaction"
																					/// @DnDArgument : "script" "getfaction"
																					/// @DnDArgument : "arg" "scanx + 1"
																					/// @DnDArgument : "arg_1" "scany"
																					/// @DnDSaveInfo : "script" "d3c0aa70-424a-47ae-ba73-0edbea07686d"
																					scanfaction = script_execute(getfaction, scanx + 1, scany);
															
																					/// @DnDAction : YoYo Games.Common.If_Expression
																					/// @DnDVersion : 1
																					/// @DnDHash : 1F79F58D
																					/// @DnDParent : 5153434B
																					/// @DnDArgument : "expr" "myfaction == scanfaction"
																					if(myfaction == scanfaction)
																					{
																						
																					
																												/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
																												/// @DnDVersion : 1
																												/// @DnDHash : 2CB6D4BB
																												/// @DnDParent : 1F79F58D
																												/// @DnDArgument : "var" "global.valid_moves"
																												/// @DnDArgument : "x" "scanx"
																												/// @DnDArgument : "y" "scany"
																												/// @DnDArgument : "value" "passnum + 1"
																												
																												{
																													ds_grid_set(global.valid_moves, scanx, scany, passnum + 1);
																												}
																					
																					
																					}
															
															
															}
										
										
										}
						
										/// @DnDAction : YoYo Games.Common.If_Variable
										/// @DnDVersion : 1
										/// @DnDHash : 4CB08B1E
										/// @DnDParent : 475C23E7
										/// @DnDArgument : "var" "ds_grid_get(global.terrainmap, scanx + 1, scany)"
										/// @DnDArgument : "value" "1"
										if(ds_grid_get(global.terrainmap, scanx + 1, scany) == 1)
										{
											
										
															/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
															/// @DnDVersion : 1
															/// @DnDHash : 06FF75F0
															/// @DnDParent : 4CB08B1E
															/// @DnDArgument : "var" "global.valid_moves"
															/// @DnDArgument : "x" "scanx"
															/// @DnDArgument : "y" "scany"
															/// @DnDArgument : "value" "0"
															
															{
																ds_grid_set(global.valid_moves, scanx, scany, 0);
															}
										
										
										}
						
						
						}
			
						/// @DnDAction : YoYo Games.Common.If_Variable
						/// @DnDVersion : 1
						/// @DnDHash : 11F9C192
						/// @DnDParent : 35DF645A
						/// @DnDArgument : "var" "ds_grid_get(global.valid_moves, scanx, scany - 1)"
						/// @DnDArgument : "value" "passnum"
						if(ds_grid_get(global.valid_moves, scanx, scany - 1) == passnum)
						{
							
						
										/// @DnDAction : YoYo Games.Common.If_Variable
										/// @DnDVersion : 1
										/// @DnDHash : 0D9B2A20
										/// @DnDParent : 11F9C192
										/// @DnDArgument : "var" "ds_grid_get(global.battlemap, scanx, scany - 1)"
										/// @DnDArgument : "value" "-1"
										if(ds_grid_get(global.battlemap, scanx, scany - 1) == -1)
										{
											
										
															/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
															/// @DnDVersion : 1
															/// @DnDHash : 583274DD
															/// @DnDParent : 0D9B2A20
															/// @DnDArgument : "var" "global.valid_moves"
															/// @DnDArgument : "x" "scanx"
															/// @DnDArgument : "y" "scany"
															/// @DnDArgument : "value" "passnum + 1"
															
															{
																ds_grid_set(global.valid_moves, scanx, scany, passnum + 1);
															}
										
										
										}
						
										/// @DnDAction : YoYo Games.Common.If_Variable
										/// @DnDVersion : 1
										/// @DnDHash : 1889FFE5
										/// @DnDParent : 11F9C192
										/// @DnDArgument : "var" "ds_grid_get(global.battlemap, scanx, scany - 1)"
										/// @DnDArgument : "op" "3"
										/// @DnDArgument : "value" "99"
										if(ds_grid_get(global.battlemap, scanx, scany - 1) <= 99)
										{
											
										
															/// @DnDAction : YoYo Games.Common.If_Variable
															/// @DnDVersion : 1
															/// @DnDHash : 4D2F1684
															/// @DnDParent : 1889FFE5
															/// @DnDArgument : "var" "ds_grid_get(global.battlemap, scanx, scany - 1)"
															/// @DnDArgument : "not" "1"
															/// @DnDArgument : "value" "-1"
															if(!(ds_grid_get(global.battlemap, scanx, scany - 1) == -1))
															{
																
															
																					/// @DnDAction : YoYo Games.Common.Execute_Script
																					/// @DnDVersion : 1.1
																					/// @DnDHash : 7E9CA6A4
																					/// @DnDInput : 2
																					/// @DnDParent : 4D2F1684
																					/// @DnDArgument : "var" "scanfaction"
																					/// @DnDArgument : "script" "getfaction"
																					/// @DnDArgument : "arg" "scanx"
																					/// @DnDArgument : "arg_1" "scany - 1"
																					/// @DnDSaveInfo : "script" "d3c0aa70-424a-47ae-ba73-0edbea07686d"
																					scanfaction = script_execute(getfaction, scanx, scany - 1);
															
																					/// @DnDAction : YoYo Games.Common.If_Expression
																					/// @DnDVersion : 1
																					/// @DnDHash : 6FB53031
																					/// @DnDParent : 4D2F1684
																					/// @DnDArgument : "expr" "myfaction == scanfaction"
																					if(myfaction == scanfaction)
																					{
																						
																					
																												/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
																												/// @DnDVersion : 1
																												/// @DnDHash : 1DEFCE61
																												/// @DnDParent : 6FB53031
																												/// @DnDArgument : "var" "global.valid_moves"
																												/// @DnDArgument : "x" "scanx"
																												/// @DnDArgument : "y" "scany"
																												/// @DnDArgument : "value" "passnum + 1"
																												
																												{
																													ds_grid_set(global.valid_moves, scanx, scany, passnum + 1);
																												}
																					
																					
																					}
															
															
															}
										
										
										}
						
										/// @DnDAction : YoYo Games.Common.If_Variable
										/// @DnDVersion : 1
										/// @DnDHash : 391D4E41
										/// @DnDParent : 11F9C192
										/// @DnDArgument : "var" "ds_grid_get(global.terrainmap, scanx, scany - 1)"
										/// @DnDArgument : "value" "1"
										if(ds_grid_get(global.terrainmap, scanx, scany - 1) == 1)
										{
											
										
															/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
															/// @DnDVersion : 1
															/// @DnDHash : 257F1D4D
															/// @DnDParent : 391D4E41
															/// @DnDArgument : "var" "global.valid_moves"
															/// @DnDArgument : "x" "scanx"
															/// @DnDArgument : "y" "scany"
															/// @DnDArgument : "value" "0"
															
															{
																ds_grid_set(global.valid_moves, scanx, scany, 0);
															}
										
										
										}
						
						
						}
			
						/// @DnDAction : YoYo Games.Common.If_Variable
						/// @DnDVersion : 1
						/// @DnDHash : 501C3018
						/// @DnDParent : 35DF645A
						/// @DnDArgument : "var" "ds_grid_get(global.valid_moves, scanx, scany + 1)"
						/// @DnDArgument : "value" "passnum"
						if(ds_grid_get(global.valid_moves, scanx, scany + 1) == passnum)
						{
							
						
										/// @DnDAction : YoYo Games.Common.If_Variable
										/// @DnDVersion : 1
										/// @DnDHash : 623E9D69
										/// @DnDParent : 501C3018
										/// @DnDArgument : "var" "ds_grid_get(global.battlemap, scanx, scany + 1)"
										/// @DnDArgument : "value" "-1"
										if(ds_grid_get(global.battlemap, scanx, scany + 1) == -1)
										{
											
										
															/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
															/// @DnDVersion : 1
															/// @DnDHash : 4BDD8AF2
															/// @DnDParent : 623E9D69
															/// @DnDArgument : "var" "global.valid_moves"
															/// @DnDArgument : "x" "scanx"
															/// @DnDArgument : "y" "scany"
															/// @DnDArgument : "value" "passnum + 1"
															
															{
																ds_grid_set(global.valid_moves, scanx, scany, passnum + 1);
															}
										
										
										}
						
										/// @DnDAction : YoYo Games.Common.If_Variable
										/// @DnDVersion : 1
										/// @DnDHash : 5BFB0008
										/// @DnDParent : 501C3018
										/// @DnDArgument : "var" "ds_grid_get(global.battlemap, scanx, scany + 1)"
										/// @DnDArgument : "op" "3"
										/// @DnDArgument : "value" "99"
										if(ds_grid_get(global.battlemap, scanx, scany + 1) <= 99)
										{
											
										
															/// @DnDAction : YoYo Games.Common.If_Variable
															/// @DnDVersion : 1
															/// @DnDHash : 059026D6
															/// @DnDParent : 5BFB0008
															/// @DnDArgument : "var" "ds_grid_get(global.battlemap, scanx, scany + 1)"
															/// @DnDArgument : "not" "1"
															/// @DnDArgument : "value" "-1"
															if(!(ds_grid_get(global.battlemap, scanx, scany + 1) == -1))
															{
																
															
																					/// @DnDAction : YoYo Games.Common.Execute_Script
																					/// @DnDVersion : 1.1
																					/// @DnDHash : 320427DA
																					/// @DnDInput : 2
																					/// @DnDParent : 059026D6
																					/// @DnDArgument : "var" "scanfaction"
																					/// @DnDArgument : "script" "getfaction"
																					/// @DnDArgument : "arg" "scanx"
																					/// @DnDArgument : "arg_1" "scany + 1"
																					/// @DnDSaveInfo : "script" "d3c0aa70-424a-47ae-ba73-0edbea07686d"
																					scanfaction = script_execute(getfaction, scanx, scany + 1);
															
																					/// @DnDAction : YoYo Games.Common.If_Expression
																					/// @DnDVersion : 1
																					/// @DnDHash : 60897D40
																					/// @DnDParent : 059026D6
																					/// @DnDArgument : "expr" "myfaction == scanfaction"
																					if(myfaction == scanfaction)
																					{
																						
																					
																												/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
																												/// @DnDVersion : 1
																												/// @DnDHash : 5689EF70
																												/// @DnDParent : 60897D40
																												/// @DnDArgument : "var" "global.valid_moves"
																												/// @DnDArgument : "x" "scanx"
																												/// @DnDArgument : "y" "scany"
																												/// @DnDArgument : "value" "passnum + 1"
																												
																												{
																													ds_grid_set(global.valid_moves, scanx, scany, passnum + 1);
																												}
																					
																					
																					}
															
															
															}
										
										
										}
						
										/// @DnDAction : YoYo Games.Common.If_Variable
										/// @DnDVersion : 1
										/// @DnDHash : 69333598
										/// @DnDParent : 501C3018
										/// @DnDArgument : "var" "ds_grid_get(global.terrainmap, scanx, scany + 1)"
										/// @DnDArgument : "value" "1"
										if(ds_grid_get(global.terrainmap, scanx, scany + 1) == 1)
										{
											
										
															/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
															/// @DnDVersion : 1
															/// @DnDHash : 30AF5013
															/// @DnDParent : 69333598
															/// @DnDArgument : "var" "global.valid_moves"
															/// @DnDArgument : "x" "scanx"
															/// @DnDArgument : "y" "scany"
															/// @DnDArgument : "value" "0"
															
															{
																ds_grid_set(global.valid_moves, scanx, scany, 0);
															}
										
										
										}
						
						
						}
			
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 2802B870
						/// @DnDParent : 35DF645A
						/// @DnDArgument : "expr" "1"
						/// @DnDArgument : "expr_relative" "1"
						/// @DnDArgument : "var" "scanx"
						scanx += 1;
						
			
						/// @DnDAction : YoYo Games.Common.If_Variable
						/// @DnDVersion : 1
						/// @DnDHash : 5872C3CA
						/// @DnDParent : 35DF645A
						/// @DnDArgument : "var" "scanx"
						/// @DnDArgument : "op" "4"
						/// @DnDArgument : "value" "ds_grid_width(global.valid_moves)"
						if(scanx >= ds_grid_width(global.valid_moves))
						{
							
						
										/// @DnDAction : YoYo Games.Loops.Break
										/// @DnDVersion : 1
										/// @DnDHash : 2FE63EE9
										/// @DnDParent : 5872C3CA
										break;
						
						
						}
			
						/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
						/// @DnDVersion : 1
						/// @DnDHash : 6BC60155
						/// @DnDParent : 35DF645A
						/// @DnDArgument : "msg" ""Sector Scan Complete""
						show_debug_message(string("Sector Scan Complete"));
			
						/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
						/// @DnDVersion : 1
						/// @DnDHash : 27F7A492
						/// @DnDParent : 35DF645A
						/// @DnDArgument : "msg" "scanx"
						show_debug_message(string(scanx));
			
						/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
						/// @DnDVersion : 1
						/// @DnDHash : 6F8B99DB
						/// @DnDParent : 35DF645A
						/// @DnDArgument : "msg" "scany"
						show_debug_message(string(scany));
			
						/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
						/// @DnDVersion : 1
						/// @DnDHash : 643DACF5
						/// @DnDParent : 35DF645A
						/// @DnDArgument : "msg" "passnum"
						show_debug_message(string(passnum));
			
			
			}
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7A00ED43
			/// @DnDParent : 465C46E0
			/// @DnDArgument : "expr" "scanoriginx"
			/// @DnDArgument : "var" "scanx"
			scanx = scanoriginx;
			
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 331A7864
			/// @DnDParent : 465C46E0
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "scany"
			scany += 1;
			
	
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6EAD5E1E
			/// @DnDParent : 465C46E0
			/// @DnDArgument : "var" "scany"
			/// @DnDArgument : "op" "4"
			/// @DnDArgument : "value" "ds_grid_height(global.valid_moves)"
			if(scany >= ds_grid_height(global.valid_moves))
			{
				
			
						/// @DnDAction : YoYo Games.Loops.Break
						/// @DnDVersion : 1
						/// @DnDHash : 5C7F5D36
						/// @DnDParent : 6EAD5E1E
						break;
			
			
			}
	
	
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5D802355
	/// @DnDParent : 2AEA9522
	/// @DnDArgument : "expr" "scanoriginy"
	/// @DnDArgument : "var" "scany"
	scany = scanoriginy;
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 40D82857
	/// @DnDParent : 2AEA9522
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "passnum"
	passnum += 1;
	

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5A0F78D5
	/// @DnDParent : 2AEA9522
	/// @DnDArgument : "var" "passnum"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "ds_grid_get(global.charstat, global.active_turn_char, 19)"
	if(passnum > ds_grid_get(global.charstat, global.active_turn_char, 19))
	{
		
	
			/// @DnDAction : YoYo Games.Loops.Break
			/// @DnDVersion : 1
			/// @DnDHash : 0DC41F29
			/// @DnDParent : 5A0F78D5
			break;
	
	
	}


}

