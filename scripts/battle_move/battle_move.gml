/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 7D218075
/// @DnDArgument : "msg" ""MoveOK State""
show_debug_message(string("MoveOK State"));

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 13A8474C
/// @DnDArgument : "msg" "moveok"
show_debug_message(string(moveok));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 40105769
/// @DnDArgument : "var" "moveok"
/// @DnDArgument : "value" "1"
if(moveok == 1)
{
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 48374EAA
	/// @DnDParent : 40105769
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "global.show_valid"
	global.show_valid = 1;
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 75C75A02
	/// @DnDParent : 40105769
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "global.ui_show_turn_order"
	global.ui_show_turn_order = 1;
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3639E76F
	/// @DnDParent : 40105769
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "var" "moving"
	moving = -1;
	

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 62275798
	/// @DnDParent : 40105769
	/// @DnDArgument : "var" "global.uppressed"
	/// @DnDArgument : "value" "1"
	if(global.uppressed == 1)
	{
		
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6D908E34
			/// @DnDParent : 62275798
			/// @DnDArgument : "var" "moving"
			moving = 0;
			
	
	
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1199046D
	/// @DnDParent : 40105769
	/// @DnDArgument : "var" "global.rightpressed"
	/// @DnDArgument : "value" "1"
	if(global.rightpressed == 1)
	{
		
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 082F514F
			/// @DnDParent : 1199046D
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "var" "moving"
			moving = 1;
			
	
	
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5F0526EA
	/// @DnDParent : 40105769
	/// @DnDArgument : "var" "global.downpressed"
	/// @DnDArgument : "value" "1"
	if(global.downpressed == 1)
	{
		
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6594D97A
			/// @DnDParent : 5F0526EA
			/// @DnDArgument : "expr" "2"
			/// @DnDArgument : "var" "moving"
			moving = 2;
			
	
	
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 46F628D9
	/// @DnDParent : 40105769
	/// @DnDArgument : "var" "global.leftpressed"
	/// @DnDArgument : "value" "1"
	if(global.leftpressed == 1)
	{
		
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3BEDD396
			/// @DnDParent : 46F628D9
			/// @DnDArgument : "expr" "3"
			/// @DnDArgument : "var" "moving"
			moving = 3;
			
	
	
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 71C5596C
	/// @DnDParent : 40105769
	/// @DnDArgument : "var" "global.confirmpressed"
	/// @DnDArgument : "value" "1"
	if(global.confirmpressed == 1)
	{
		
	
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 7EF39B2D
			/// @DnDInput : 4
			/// @DnDParent : 71C5596C
			/// @DnDArgument : "var" "global.distancemoved"
			/// @DnDArgument : "script" "find_distance"
			/// @DnDArgument : "arg" "selfgridx"
			/// @DnDArgument : "arg_1" "selfgridy"
			/// @DnDArgument : "arg_2" "nextgridx"
			/// @DnDArgument : "arg_3" "nextgridy"
			/// @DnDSaveInfo : "script" "32890da9-2f05-4643-8665-6b6fff94fde2"
			global.distancemoved = script_execute(find_distance, selfgridx, selfgridy, nextgridx, nextgridy);
	
			/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
			/// @DnDVersion : 1
			/// @DnDHash : 5A27356A
			/// @DnDParent : 71C5596C
			/// @DnDArgument : "msg" ""This doesn't work for advanced pathfinding moves""
			show_debug_message(string("This doesn't work for advanced pathfinding moves"));
	
			/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
			/// @DnDVersion : 1
			/// @DnDHash : 1082E47E
			/// @DnDParent : 71C5596C
			/// @DnDArgument : "var" "global.battlemap"
			/// @DnDArgument : "x" "selfgridx"
			/// @DnDArgument : "y" "selfgridy"
			/// @DnDArgument : "value" "-1"
			
			{
				ds_grid_set(global.battlemap, selfgridx, selfgridy, -1);
			}
	
			/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
			/// @DnDVersion : 1
			/// @DnDHash : 6F5C1B14
			/// @DnDParent : 71C5596C
			/// @DnDArgument : "var" "global.battlemap"
			/// @DnDArgument : "x" "nextgridx"
			/// @DnDArgument : "y" "nextgridy"
			/// @DnDArgument : "value" "myself"
			
			{
				ds_grid_set(global.battlemap, nextgridx, nextgridy, myself);
			}
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 73AC558D
			/// @DnDParent : 71C5596C
			/// @DnDArgument : "expr" "selfgridx"
			/// @DnDArgument : "var" "prevgridx"
			prevgridx = selfgridx;
			
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5ABC42C6
			/// @DnDParent : 71C5596C
			/// @DnDArgument : "expr" "selfgridy"
			/// @DnDArgument : "var" "prevgridy"
			prevgridy = selfgridy;
			
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0A49FFF2
			/// @DnDParent : 71C5596C
			/// @DnDArgument : "expr" "nextgridx"
			/// @DnDArgument : "var" "selfgridx"
			selfgridx = nextgridx;
			
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3BC4EAEA
			/// @DnDParent : 71C5596C
			/// @DnDArgument : "expr" "nextgridy"
			/// @DnDArgument : "var" "selfgridy"
			selfgridy = nextgridy;
			
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7F3E3A82
			/// @DnDParent : 71C5596C
			/// @DnDArgument : "var" "drawphantom"
			drawphantom = 0;
			
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 24F590A5
			/// @DnDParent : 71C5596C
			/// @DnDArgument : "var" "global.show_valid"
			global.show_valid = 0;
			
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1A6272DC
			/// @DnDParent : 71C5596C
			/// @DnDArgument : "var" "global.ui_cross_select"
			global.ui_cross_select = 0;
			
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 054B7CA3
			/// @DnDParent : 71C5596C
			/// @DnDArgument : "expr" "4"
			/// @DnDArgument : "var" "global.battle_state"
			global.battle_state = 4;
			
	
			/// @DnDAction : YoYo Games.Common.Return
			/// @DnDVersion : 1
			/// @DnDHash : 0A770E06
			/// @DnDParent : 71C5596C
			return;
	
	
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6CC2A4B9
	/// @DnDParent : 40105769
	/// @DnDArgument : "var" "global.cancelpressed"
	/// @DnDArgument : "value" "1"
	if(global.cancelpressed == 1)
	{
		
	
			/// @DnDAction : YoYo Games.Movement.Jump_To_Point
			/// @DnDVersion : 1
			/// @DnDHash : 4EB04039
			/// @DnDParent : 6CC2A4B9
			/// @DnDArgument : "x" "(selfgridx * global.world_tile_size) + ( global.world_tile_size / 2)"
			/// @DnDArgument : "y" "(selfgridy * global.world_tile_size) + ( global.world_tile_size / 2)"
			
			{
				x = (selfgridx * global.world_tile_size) + ( global.world_tile_size / 2);
				y = (selfgridy * global.world_tile_size) + ( global.world_tile_size / 2);
			}
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 115B7848
			/// @DnDInput : 2
			/// @DnDParent : 6CC2A4B9
			/// @DnDArgument : "expr" "selfgridx"
			/// @DnDArgument : "expr_1" "selfgridy"
			/// @DnDArgument : "var" "nextgridx"
			/// @DnDArgument : "var_1" "nextgridy"
			nextgridx = selfgridx;
			nextgridy = selfgridy;
			
	
			/// @DnDAction : YoYo Games.Instances.Call_User_Event
			/// @DnDVersion : 1
			/// @DnDHash : 603D51F5
			/// @DnDApplyTo : e93f2f36-4e4e-4642-845f-4ba36f5e070f
			/// @DnDParent : 6CC2A4B9
			with(cursor_controller)
			{
				event_user(0);
			}
	
	
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 12FA5BC3
	/// @DnDParent : 40105769
	/// @DnDArgument : "var" "moving"
	/// @DnDArgument : "op" "4"
	if(moving >= 0)
	{
		
	
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 6BAF0560
			/// @DnDParent : 12FA5BC3
			/// @DnDArgument : "var" "validmove"
			/// @DnDArgument : "script" "is_move_valid"
			/// @DnDSaveInfo : "script" "c9deff59-93ea-4e27-af78-59f7e880cf33"
			validmove = script_execute(is_move_valid);
	
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 636B03E9
			/// @DnDParent : 12FA5BC3
			/// @DnDArgument : "var" "validmove"
			/// @DnDArgument : "value" "1"
			if(validmove == 1)
			{
				
			
						/// @DnDAction : YoYo Games.Common.Execute_Script
						/// @DnDVersion : 1.1
						/// @DnDHash : 2ABE15A5
						/// @DnDParent : 636B03E9
						/// @DnDArgument : "script" "find_party_sprite"
						/// @DnDArgument : "arg" "moving"
						/// @DnDSaveInfo : "script" "8e14865c-6f14-4a48-9b4a-8ea233fbfcb7"
						script_execute(find_party_sprite, moving);
			
						/// @DnDAction : YoYo Games.Common.Execute_Script
						/// @DnDVersion : 1.1
						/// @DnDHash : 295DF477
						/// @DnDParent : 636B03E9
						/// @DnDArgument : "script" "find_enemy_sprite"
						/// @DnDArgument : "arg" "moving"
						/// @DnDSaveInfo : "script" "35b24c7e-6eda-48c1-98ef-990c614dbcc3"
						script_execute(find_enemy_sprite, moving);
			
						/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
						/// @DnDVersion : 1
						/// @DnDHash : 59403253
						/// @DnDParent : 636B03E9
						/// @DnDArgument : "msg" ""MoveOK Off""
						show_debug_message(string("MoveOK Off"));
			
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 5119C94C
						/// @DnDParent : 636B03E9
						/// @DnDArgument : "var" "moveok"
						moveok = 0;
						
			
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 371D1BCD
						/// @DnDParent : 636B03E9
						/// @DnDArgument : "expr" "global.movetime"
						/// @DnDArgument : "var" "movetime"
						movetime = global.movetime;
						
			
			
			}
	
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5D6445AB
			/// @DnDParent : 12FA5BC3
			/// @DnDArgument : "var" "validmove"
			if(validmove == 0)
			{
				
			
						/// @DnDAction : YoYo Games.Common.If_Variable
						/// @DnDVersion : 1
						/// @DnDHash : 6A0C2C16
						/// @DnDParent : 5D6445AB
						/// @DnDArgument : "var" "moving"
						if(moving == 0)
						{
							
						
										/// @DnDAction : YoYo Games.Common.Variable
										/// @DnDVersion : 1
										/// @DnDHash : 6D4A46F0
										/// @DnDParent : 6A0C2C16
										/// @DnDArgument : "expr" "1"
										/// @DnDArgument : "expr_relative" "1"
										/// @DnDArgument : "var" "nextgridy"
										nextgridy += 1;
										
						
						
						}
			
						/// @DnDAction : YoYo Games.Common.If_Variable
						/// @DnDVersion : 1
						/// @DnDHash : 5027FD4A
						/// @DnDParent : 5D6445AB
						/// @DnDArgument : "var" "moving"
						/// @DnDArgument : "value" "1"
						if(moving == 1)
						{
							
						
										/// @DnDAction : YoYo Games.Common.Variable
										/// @DnDVersion : 1
										/// @DnDHash : 2F9DA8FC
										/// @DnDParent : 5027FD4A
										/// @DnDArgument : "expr" "-1"
										/// @DnDArgument : "expr_relative" "1"
										/// @DnDArgument : "var" "nextgridx"
										nextgridx += -1;
										
						
						
						}
			
						/// @DnDAction : YoYo Games.Common.If_Variable
						/// @DnDVersion : 1
						/// @DnDHash : 57CBB28A
						/// @DnDParent : 5D6445AB
						/// @DnDArgument : "var" "moving"
						/// @DnDArgument : "value" "2"
						if(moving == 2)
						{
							
						
										/// @DnDAction : YoYo Games.Common.Variable
										/// @DnDVersion : 1
										/// @DnDHash : 74027B7E
										/// @DnDParent : 57CBB28A
										/// @DnDArgument : "expr" "-1"
										/// @DnDArgument : "expr_relative" "1"
										/// @DnDArgument : "var" "nextgridy"
										nextgridy += -1;
										
						
						
						}
			
						/// @DnDAction : YoYo Games.Common.If_Variable
						/// @DnDVersion : 1
						/// @DnDHash : 1B89D186
						/// @DnDParent : 5D6445AB
						/// @DnDArgument : "var" "moving"
						/// @DnDArgument : "value" "3"
						if(moving == 3)
						{
							
						
										/// @DnDAction : YoYo Games.Common.Variable
										/// @DnDVersion : 1
										/// @DnDHash : 65E4C196
										/// @DnDParent : 1B89D186
										/// @DnDArgument : "expr" "1"
										/// @DnDArgument : "expr_relative" "1"
										/// @DnDArgument : "var" "nextgridx"
										nextgridx += 1;
										
						
						
						}
			
			
			}
	
	
	}


}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 56FB9988
/// @DnDArgument : "var" "moveok"
if(moveok == 0)
{
	

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 03941A06
	/// @DnDParent : 56FB9988
	/// @DnDArgument : "msg" ""Moving Continues...""
	show_debug_message(string("Moving Continues..."));

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 56E4BB7D
	/// @DnDParent : 56FB9988
	/// @DnDArgument : "var" "moving"
	if(moving == 0)
	{
		
	
			/// @DnDAction : YoYo Games.Movement.Jump_To_Point
			/// @DnDVersion : 1
			/// @DnDHash : 5E60E8A4
			/// @DnDParent : 56E4BB7D
			/// @DnDArgument : "y" "- global.movespeed"
			/// @DnDArgument : "y_relative" "1"
			
			{
				
				y += - global.movespeed;
			}
	
	
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 738D42D5
	/// @DnDParent : 56FB9988
	/// @DnDArgument : "var" "moving"
	/// @DnDArgument : "value" "1"
	if(moving == 1)
	{
		
	
			/// @DnDAction : YoYo Games.Movement.Jump_To_Point
			/// @DnDVersion : 1
			/// @DnDHash : 76AC6DD9
			/// @DnDParent : 738D42D5
			/// @DnDArgument : "x" "global.movespeed"
			/// @DnDArgument : "x_relative" "1"
			
			{
				x += global.movespeed;
				
			}
	
	
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4916B38C
	/// @DnDParent : 56FB9988
	/// @DnDArgument : "var" "moving"
	/// @DnDArgument : "value" "2"
	if(moving == 2)
	{
		
	
			/// @DnDAction : YoYo Games.Movement.Jump_To_Point
			/// @DnDVersion : 1
			/// @DnDHash : 3FDDC72C
			/// @DnDParent : 4916B38C
			/// @DnDArgument : "y" "global.movespeed"
			/// @DnDArgument : "y_relative" "1"
			
			{
				
				y += global.movespeed;
			}
	
	
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7A444280
	/// @DnDParent : 56FB9988
	/// @DnDArgument : "var" "moving"
	/// @DnDArgument : "value" "3"
	if(moving == 3)
	{
		
	
			/// @DnDAction : YoYo Games.Movement.Jump_To_Point
			/// @DnDVersion : 1
			/// @DnDHash : 643AFFF5
			/// @DnDParent : 7A444280
			/// @DnDArgument : "x" "- global.movespeed"
			/// @DnDArgument : "x_relative" "1"
			
			{
				x += - global.movespeed;
				
			}
	
	
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 333DA36B
	/// @DnDParent : 56FB9988
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "movetime"
	movetime += -1;
	

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 6A0394DD
	/// @DnDParent : 56FB9988
	/// @DnDArgument : "msg" ""Move Time""
	show_debug_message(string("Move Time"));

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 2654D2BA
	/// @DnDParent : 56FB9988
	/// @DnDArgument : "msg" "movetime"
	show_debug_message(string(movetime));

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 37BC417C
	/// @DnDParent : 56FB9988
	/// @DnDArgument : "var" "movetime"
	/// @DnDArgument : "op" "3"
	if(movetime <= 0)
	{
		
	
			/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
			/// @DnDVersion : 1
			/// @DnDHash : 62CA9FD7
			/// @DnDParent : 37BC417C
			/// @DnDArgument : "msg" ""MoveOK - Move Time expired""
			show_debug_message(string("MoveOK - Move Time expired"));
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2DD7171A
			/// @DnDParent : 37BC417C
			/// @DnDArgument : "expr" "-1"
			/// @DnDArgument : "var" "moving"
			moving = -1;
			
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 75241683
			/// @DnDParent : 37BC417C
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "var" "moveok"
			moveok = 1;
			
	
	
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 42D26277
	/// @DnDParent : 56FB9988
	/// @DnDArgument : "var" "global.battle_state"
	/// @DnDArgument : "value" "3"
	if(global.battle_state == 3)
	{
		
	
			/// @DnDAction : YoYo Games.Instances.Call_User_Event
			/// @DnDVersion : 1
			/// @DnDHash : 1F927570
			/// @DnDApplyTo : e93f2f36-4e4e-4642-845f-4ba36f5e070f
			/// @DnDParent : 42D26277
			with(cursor_controller)
			{
				event_user(0);
			}
	
	
	}


}

