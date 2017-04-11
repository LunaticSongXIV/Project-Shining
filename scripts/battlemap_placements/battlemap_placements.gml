/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 59C1760B
/// @DnDInput : 2
/// @DnDArgument : "var" "battlemapx"
/// @DnDArgument : "value" "0"
/// @DnDArgument : "var_1" "battlemapy"
/// @DnDArgument : "value_1" "0"
var battlemapx = 0;
var battlemapy = 0;


/// @DnDAction : YoYo Games.Loops.Loop
/// @DnDVersion : 1
/// @DnDHash : 034D1CAE
while(true)
{
	

	/// @DnDAction : YoYo Games.Loops.Loop
	/// @DnDVersion : 1
	/// @DnDHash : 4DCE3CD1
	/// @DnDParent : 034D1CAE
	while(true)
	{
		
	
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 52BFFB67
			/// @DnDParent : 4DCE3CD1
			/// @DnDArgument : "var" "battlemapx"
			/// @DnDArgument : "op" "4"
			/// @DnDArgument : "value" "battlemapwidth"
			if(battlemapx >= battlemapwidth)
			{
				
			
						/// @DnDAction : YoYo Games.Loops.Break
						/// @DnDVersion : 1
						/// @DnDHash : 64C7F9A7
						/// @DnDParent : 52BFFB67
						break;
			
			
			}
	
			/// @DnDAction : YoYo Games.Data Structures.Grid_Get_Value
			/// @DnDVersion : 1
			/// @DnDHash : 4E0E65E9
			/// @DnDParent : 4DCE3CD1
			/// @DnDArgument : "assignee" "global.newchar"
			/// @DnDArgument : "var" "global.battlemap"
			/// @DnDArgument : "x" "battlemapx"
			/// @DnDArgument : "y" "battlemapy"
			
			{
				global.newchar = ds_grid_get(global.battlemap, battlemapx, battlemapy);
			}
	
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 32158E6F
			/// @DnDParent : 4DCE3CD1
			/// @DnDArgument : "var" "global.newchar"
			/// @DnDArgument : "op" "4"
			if(global.newchar >= 0)
			{
				
			
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 0334E2B6
						/// @DnDParent : 32158E6F
						/// @DnDArgument : "expr" "battlemapx * 128 + 64"
						/// @DnDArgument : "var" "placementx"
						placementx = battlemapx * 128 + 64;
						
			
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 5EBA3B1E
						/// @DnDParent : 32158E6F
						/// @DnDArgument : "expr" "battlemapy * 128 + 64"
						/// @DnDArgument : "var" "placementy"
						placementy = battlemapy * 128 + 64;
						
			
						/// @DnDAction : YoYo Games.Common.If_Variable
						/// @DnDVersion : 1
						/// @DnDHash : 5B6EFFB8
						/// @DnDParent : 32158E6F
						/// @DnDArgument : "var" "global.newchar"
						/// @DnDArgument : "op" "4"
						/// @DnDArgument : "value" "20"
						if(global.newchar >= 20)
						{
							
						
										/// @DnDAction : YoYo Games.Common.If_Variable
										/// @DnDVersion : 1
										/// @DnDHash : 73FE5656
										/// @DnDParent : 5B6EFFB8
										/// @DnDArgument : "var" "global.newchar"
										/// @DnDArgument : "op" "3"
										/// @DnDArgument : "value" "99"
										if(global.newchar <= 99)
										{
											
										
															/// @DnDAction : YoYo Games.Instances.Create_Instance
															/// @DnDVersion : 1
															/// @DnDHash : 294AB7E3
															/// @DnDParent : 73FE5656
															/// @DnDArgument : "xpos" "placementx"
															/// @DnDArgument : "ypos" "placementy"
															/// @DnDArgument : "var" "tempinstid"
															/// @DnDArgument : "objectid" "obj_enemy_character"
															/// @DnDArgument : "layer" ""Characters""
															/// @DnDSaveInfo : "objectid" "b759897c-c0d7-476e-8073-c93858e0c549"
															tempinstid = instance_create_layer(placementx, placementy, "Characters", obj_enemy_character); 
										
															/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
															/// @DnDVersion : 1
															/// @DnDHash : 268B7306
															/// @DnDParent : 73FE5656
															/// @DnDArgument : "var" "global.charstat"
															/// @DnDArgument : "x" "global.newchar"
															/// @DnDArgument : "y" "27"
															/// @DnDArgument : "value" "tempinstid"
															
															{
																ds_grid_set(global.charstat, global.newchar, 27, tempinstid);
															}
										
										
										}
						
						
						}
			
						/// @DnDAction : YoYo Games.Common.If_Variable
						/// @DnDVersion : 1
						/// @DnDHash : 333103EB
						/// @DnDParent : 32158E6F
						/// @DnDArgument : "var" "global.newchar"
						/// @DnDArgument : "op" "4"
						/// @DnDArgument : "value" "101"
						if(global.newchar >= 101)
						{
							
						
										/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
										/// @DnDVersion : 1
										/// @DnDHash : 1A922217
										/// @DnDParent : 333103EB
										/// @DnDArgument : "msg" ""Character ID Out of Range - initialize_battlemap_placements""
										show_debug_message(string("Character ID Out of Range - initialize_battlemap_placements"));
						
										/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
										/// @DnDVersion : 1
										/// @DnDHash : 779ABBEF
										/// @DnDParent : 333103EB
										/// @DnDArgument : "msg" "global.newchar"
										show_debug_message(string(global.newchar));
						
						
						}
			
						/// @DnDAction : YoYo Games.Common.If_Variable
						/// @DnDVersion : 1
						/// @DnDHash : 17868D0B
						/// @DnDParent : 32158E6F
						/// @DnDArgument : "var" "global.newchar"
						/// @DnDArgument : "op" "4"
						if(global.newchar >= 0)
						{
							
						
										/// @DnDAction : YoYo Games.Common.If_Variable
										/// @DnDVersion : 1
										/// @DnDHash : 6DCB725C
										/// @DnDParent : 17868D0B
										/// @DnDArgument : "var" "global.newchar"
										/// @DnDArgument : "op" "3"
										/// @DnDArgument : "value" "19"
										if(global.newchar <= 19)
										{
											
										
															/// @DnDAction : YoYo Games.Instances.Create_Instance
															/// @DnDVersion : 1
															/// @DnDHash : 722F6AE7
															/// @DnDParent : 6DCB725C
															/// @DnDArgument : "xpos" "placementx"
															/// @DnDArgument : "ypos" "placementy"
															/// @DnDArgument : "var" "tempinstid"
															/// @DnDArgument : "objectid" "obj_party_character"
															/// @DnDArgument : "layer" ""Characters""
															/// @DnDSaveInfo : "objectid" "96ddc5ff-8ff3-45c8-a6b1-b2696088318c"
															tempinstid = instance_create_layer(placementx, placementy, "Characters", obj_party_character); 
										
															/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
															/// @DnDVersion : 1
															/// @DnDHash : 546B50F5
															/// @DnDParent : 6DCB725C
															/// @DnDArgument : "var" "global.charstat"
															/// @DnDArgument : "x" "global.newchar"
															/// @DnDArgument : "y" "27"
															/// @DnDArgument : "value" "tempinstid"
															
															{
																ds_grid_set(global.charstat, global.newchar, 27, tempinstid);
															}
										
										
										}
						
						
						}
			
			
			}
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 100827E9
			/// @DnDParent : 4DCE3CD1
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "battlemapx"
			battlemapx += 1;
			
	
	
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 24CE3B81
	/// @DnDParent : 034D1CAE
	/// @DnDArgument : "var" "battlemapx"
	battlemapx = 0;
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 51C299F4
	/// @DnDParent : 034D1CAE
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "battlemapy"
	battlemapy += 1;
	

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 16F9ACD0
	/// @DnDParent : 034D1CAE
	/// @DnDArgument : "var" "battlemapy"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "battlemapheight"
	if(battlemapy >= battlemapheight)
	{
		
	
			/// @DnDAction : YoYo Games.Loops.Break
			/// @DnDVersion : 1
			/// @DnDHash : 45DA2B88
			/// @DnDParent : 16F9ACD0
			break;
	
	
	}


}

