/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 48374EAA
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "global.show_valid"
global.show_valid = 1;


/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 75C75A02
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "global.ui_show_turn_order"
global.ui_show_turn_order = 1;


/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 60C3B266
/// @DnDArgument : "var" "global.animatingmove"
if(global.animatingmove == 0)
{
	

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 71C5596C
	/// @DnDParent : 60C3B266
	/// @DnDArgument : "var" "global.confirmpressed"
	/// @DnDArgument : "value" "1"
	if(global.confirmpressed == 1)
	{
		
	
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3A6687AD
			/// @DnDParent : 71C5596C
			/// @DnDArgument : "var" "ds_grid_get(global.valid_moves,global.csrgridx,global.csrgridy)"
			/// @DnDArgument : "op" "4"
			if(ds_grid_get(global.valid_moves,global.csrgridx,global.csrgridy) >= 0)
			{
				
			
						/// @DnDAction : YoYo Games.Common.If_Variable
						/// @DnDVersion : 1
						/// @DnDHash : 35E74DBD
						/// @DnDParent : 3A6687AD
						/// @DnDArgument : "var" "ds_grid_get(global.battlemap,global.csrgridx,global.csrgridy)"
						/// @DnDArgument : "value" "-1"
						if(ds_grid_get(global.battlemap,global.csrgridx,global.csrgridy) == -1)
						{
							
						
										/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
										/// @DnDVersion : 1
										/// @DnDHash : 31297EE4
										/// @DnDParent : 35E74DBD
										/// @DnDArgument : "msg" ""Backtraceing Moves - START""
										show_debug_message(string("Backtraceing Moves - START"));
						
										/// @DnDAction : YoYo Games.Common.Execute_Script
										/// @DnDVersion : 1.1
										/// @DnDHash : 69F15D1F
										/// @DnDInput : 2
										/// @DnDParent : 35E74DBD
										/// @DnDArgument : "script" "backtrace_move"
										/// @DnDArgument : "arg" "global.csrgridx"
										/// @DnDArgument : "arg_1" "global.csrgridy"
										/// @DnDSaveInfo : "script" "7b7364f7-ec7b-45fa-b900-86f026295d86"
										script_execute(backtrace_move, global.csrgridx, global.csrgridy);
						
										/// @DnDAction : YoYo Games.Common.Variable
										/// @DnDVersion : 1
										/// @DnDHash : 0C78B741
										/// @DnDParent : 35E74DBD
										/// @DnDArgument : "expr" "1"
										/// @DnDArgument : "var" "global.animatingmove"
										global.animatingmove = 1;
										
						
										/// @DnDAction : YoYo Games.Common.Variable
										/// @DnDVersion : 1
										/// @DnDHash : 565EC41E
										/// @DnDParent : 35E74DBD
										/// @DnDArgument : "expr" "global.csrgridx"
										/// @DnDArgument : "var" "nextgridx"
										nextgridx = global.csrgridx;
										
						
										/// @DnDAction : YoYo Games.Common.Variable
										/// @DnDVersion : 1
										/// @DnDHash : 315A61C8
										/// @DnDParent : 35E74DBD
										/// @DnDArgument : "expr" "global.csrgridy"
										/// @DnDArgument : "var" "nextgridy"
										nextgridy = global.csrgridy;
										
						
										/// @DnDAction : YoYo Games.Common.Variable
										/// @DnDVersion : 1
										/// @DnDHash : 17C0EE0B
										/// @DnDParent : 35E74DBD
										/// @DnDArgument : "expr" "global.movetime"
										/// @DnDArgument : "var" "movetime"
										movetime = global.movetime;
										
						
										/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
										/// @DnDVersion : 1
										/// @DnDHash : 19C8CC75
										/// @DnDParent : 35E74DBD
										/// @DnDArgument : "msg" ""Backtrace Complete""
										show_debug_message(string("Backtrace Complete"));
						
										/// @DnDAction : YoYo Games.Common.Variable
										/// @DnDVersion : 1
										/// @DnDHash : 2DF0A625
										/// @DnDParent : 35E74DBD
										/// @DnDArgument : "expr" "ds_stack_size(global.backtrace_moves)"
										/// @DnDArgument : "var" "global.distancemoved"
										global.distancemoved = ds_stack_size(global.backtrace_moves);
										
						
										/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
										/// @DnDVersion : 1
										/// @DnDHash : 1A01F90E
										/// @DnDParent : 35E74DBD
										/// @DnDArgument : "msg" ""Backtrace Stack Size""
										show_debug_message(string("Backtrace Stack Size"));
						
										/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
										/// @DnDVersion : 1
										/// @DnDHash : 1F8717D1
										/// @DnDParent : 35E74DBD
										/// @DnDArgument : "msg" "ds_stack_size(global.backtrace_moves)"
										show_debug_message(string(ds_stack_size(global.backtrace_moves)));
						
										/// @DnDAction : YoYo Games.Data Structures.Stack_Pop
										/// @DnDVersion : 1
										/// @DnDHash : 7207DC4C
										/// @DnDParent : 35E74DBD
										/// @DnDArgument : "assignee" "moving"
										/// @DnDArgument : "var" "global.backtrace_moves"
										
											moving = ds_stack_pop(global.backtrace_moves);
						
										/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
										/// @DnDVersion : 1
										/// @DnDHash : 3667AB3C
										/// @DnDParent : 35E74DBD
										/// @DnDArgument : "msg" ""First Backtrace Step""
										show_debug_message(string("First Backtrace Step"));
						
										/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
										/// @DnDVersion : 1
										/// @DnDHash : 36AA106F
										/// @DnDParent : 35E74DBD
										/// @DnDArgument : "msg" "moving"
										show_debug_message(string(moving));
						
						
						}
			
			
			}
	
	
	}


}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 14A510D1
/// @DnDArgument : "var" "global.animatingmove"
/// @DnDArgument : "value" "1"
if(global.animatingmove == 1)
{
	

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 606A57EF
	/// @DnDParent : 14A510D1
	/// @DnDArgument : "var" "movetime"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "1"
	if(movetime >= 1)
	{
		
	
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3AE2E4CF
			/// @DnDParent : 606A57EF
			/// @DnDArgument : "var" "moving"
			if(moving == 0)
			{
				
			
						/// @DnDAction : YoYo Games.Common.Execute_Script
						/// @DnDVersion : 1.1
						/// @DnDHash : 0116F87B
						/// @DnDInput : 2
						/// @DnDParent : 3AE2E4CF
						/// @DnDArgument : "script" "find_sprite_from_faction"
						/// @DnDArgument : "arg" "myfaction"
						/// @DnDArgument : "arg_1" "moving"
						/// @DnDSaveInfo : "script" "827028b5-fb95-420c-a7a6-0c6f0f11b497"
						script_execute(find_sprite_from_faction, myfaction, moving);
			
						/// @DnDAction : YoYo Games.Movement.Jump_To_Point
						/// @DnDVersion : 1
						/// @DnDHash : 73A39AC9
						/// @DnDParent : 3AE2E4CF
						/// @DnDArgument : "y" "- global.movespeed"
						/// @DnDArgument : "y_relative" "1"
						
						{
							
							y += - global.movespeed;
						}
			
			
			}
	
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 433F1B26
			/// @DnDParent : 606A57EF
			/// @DnDArgument : "var" "moving"
			/// @DnDArgument : "value" "1"
			if(moving == 1)
			{
				
			
						/// @DnDAction : YoYo Games.Movement.Jump_To_Point
						/// @DnDVersion : 1
						/// @DnDHash : 77AABDA9
						/// @DnDParent : 433F1B26
						/// @DnDArgument : "x" "global.movespeed"
						/// @DnDArgument : "x_relative" "1"
						
						{
							x += global.movespeed;
							
						}
			
						/// @DnDAction : YoYo Games.Common.Execute_Script
						/// @DnDVersion : 1.1
						/// @DnDHash : 23345DCD
						/// @DnDInput : 2
						/// @DnDParent : 433F1B26
						/// @DnDArgument : "script" "find_sprite_from_faction"
						/// @DnDArgument : "arg" "myfaction"
						/// @DnDArgument : "arg_1" "moving"
						/// @DnDSaveInfo : "script" "827028b5-fb95-420c-a7a6-0c6f0f11b497"
						script_execute(find_sprite_from_faction, myfaction, moving);
			
			
			}
	
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7A64D0F3
			/// @DnDParent : 606A57EF
			/// @DnDArgument : "var" "moving"
			/// @DnDArgument : "value" "2"
			if(moving == 2)
			{
				
			
						/// @DnDAction : YoYo Games.Movement.Jump_To_Point
						/// @DnDVersion : 1
						/// @DnDHash : 75ECFA85
						/// @DnDParent : 7A64D0F3
						/// @DnDArgument : "y" "global.movespeed"
						/// @DnDArgument : "y_relative" "1"
						
						{
							
							y += global.movespeed;
						}
			
						/// @DnDAction : YoYo Games.Common.Execute_Script
						/// @DnDVersion : 1.1
						/// @DnDHash : 3621C244
						/// @DnDInput : 2
						/// @DnDParent : 7A64D0F3
						/// @DnDArgument : "script" "find_sprite_from_faction"
						/// @DnDArgument : "arg" "myfaction"
						/// @DnDArgument : "arg_1" "moving"
						/// @DnDSaveInfo : "script" "827028b5-fb95-420c-a7a6-0c6f0f11b497"
						script_execute(find_sprite_from_faction, myfaction, moving);
			
			
			}
	
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 27750663
			/// @DnDParent : 606A57EF
			/// @DnDArgument : "var" "moving"
			/// @DnDArgument : "value" "3"
			if(moving == 3)
			{
				
			
						/// @DnDAction : YoYo Games.Movement.Jump_To_Point
						/// @DnDVersion : 1
						/// @DnDHash : 5D25F788
						/// @DnDParent : 27750663
						/// @DnDArgument : "x" "- global.movespeed"
						/// @DnDArgument : "x_relative" "1"
						
						{
							x += - global.movespeed;
							
						}
			
						/// @DnDAction : YoYo Games.Common.Execute_Script
						/// @DnDVersion : 1.1
						/// @DnDHash : 3853FD4F
						/// @DnDInput : 2
						/// @DnDParent : 27750663
						/// @DnDArgument : "script" "find_sprite_from_faction"
						/// @DnDArgument : "arg" "myfaction"
						/// @DnDArgument : "arg_1" "moving"
						/// @DnDSaveInfo : "script" "827028b5-fb95-420c-a7a6-0c6f0f11b497"
						script_execute(find_sprite_from_faction, myfaction, moving);
			
			
			}
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5DA2219E
			/// @DnDParent : 606A57EF
			/// @DnDArgument : "expr" "-1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "movetime"
			movetime += -1;
			
	
	
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 764CB437
	/// @DnDParent : 14A510D1
	/// @DnDArgument : "var" "movetime"
	if(movetime == 0)
	{
		
	
			/// @DnDAction : YoYo Games.Data Structures.If_DS_Empty
			/// @DnDVersion : 1
			/// @DnDHash : 3738C404
			/// @DnDParent : 764CB437
			/// @DnDArgument : "ds" "2"
			/// @DnDArgument : "var" "global.backtrace_moves"
			/// @DnDArgument : "not" "1"
			
				var l3738C404_0 = global.backtrace_moves;
				
			if(!ds_stack_empty(l3738C404_0))
			{
				
			
						/// @DnDAction : YoYo Games.Data Structures.Stack_Pop
						/// @DnDVersion : 1
						/// @DnDHash : 6A91AB9A
						/// @DnDParent : 3738C404
						/// @DnDArgument : "assignee" "moving"
						/// @DnDArgument : "var" "global.backtrace_moves"
						
							moving = ds_stack_pop(global.backtrace_moves);
			
						/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
						/// @DnDVersion : 1
						/// @DnDHash : 7600A226
						/// @DnDParent : 3738C404
						/// @DnDArgument : "msg" ""Continuing Backtrace""
						show_debug_message(string("Continuing Backtrace"));
			
						/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
						/// @DnDVersion : 1
						/// @DnDHash : 4B81404A
						/// @DnDParent : 3738C404
						/// @DnDArgument : "msg" "moving"
						show_debug_message(string(moving));
			
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 49F2FBDF
						/// @DnDParent : 3738C404
						/// @DnDArgument : "expr" "global.movetime"
						/// @DnDArgument : "var" "movetime"
						movetime = global.movetime;
						
			
			
			}
	
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 7095DA84
			/// @DnDParent : 764CB437
			else
			{
				
			
						/// @DnDAction : YoYo Games.Data Structures.If_DS_Empty
						/// @DnDVersion : 1
						/// @DnDHash : 3FD26511
						/// @DnDParent : 7095DA84
						/// @DnDArgument : "ds" "2"
						/// @DnDArgument : "var" "global.backtrace_moves"
						
							var l3FD26511_0 = global.backtrace_moves;
							
						if(ds_stack_empty(l3FD26511_0))
						{
							
						
										/// @DnDAction : YoYo Games.Common.Variable
										/// @DnDVersion : 1
										/// @DnDHash : 3FCDA064
										/// @DnDParent : 3FD26511
										/// @DnDArgument : "expr" "2"
										/// @DnDArgument : "var" "global.animatingmove"
										global.animatingmove = 2;
										
						
										/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
										/// @DnDVersion : 1
										/// @DnDHash : 3EDDE6A6
										/// @DnDParent : 3FD26511
										/// @DnDArgument : "msg" ""Backtrace Complete""
										show_debug_message(string("Backtrace Complete"));
						
						
						}
			
			
			}
	
	
	}


}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 56FB9988
/// @DnDArgument : "var" "global.animatingmove"
/// @DnDArgument : "value" "2"
if(global.animatingmove == 2)
{
	

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 37BC417C
	/// @DnDParent : 56FB9988
	/// @DnDArgument : "var" "global.confirmpressed"
	/// @DnDArgument : "value" "1"
	if(global.confirmpressed == 1)
	{
		
	
			/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
			/// @DnDVersion : 1
			/// @DnDHash : 2C8B2C70
			/// @DnDParent : 37BC417C
			/// @DnDArgument : "var" "global.battlemap"
			/// @DnDArgument : "x" "selfgridx"
			/// @DnDArgument : "y" "selfgridy"
			/// @DnDArgument : "value" "-1"
			
			{
				ds_grid_set(global.battlemap, selfgridx, selfgridy, -1);
			}
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 69DBC86E
			/// @DnDParent : 37BC417C
			/// @DnDArgument : "expr" "selfgridx"
			/// @DnDArgument : "var" "prevgridx"
			prevgridx = selfgridx;
			
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7A30CB03
			/// @DnDParent : 37BC417C
			/// @DnDArgument : "expr" "nextgridx"
			/// @DnDArgument : "var" "selfgridx"
			selfgridx = nextgridx;
			
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 634AD1EA
			/// @DnDParent : 37BC417C
			/// @DnDArgument : "expr" "selfgridy"
			/// @DnDArgument : "var" "prevgridy"
			prevgridy = selfgridy;
			
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 23270D67
			/// @DnDParent : 37BC417C
			/// @DnDArgument : "expr" "nextgridy"
			/// @DnDArgument : "var" "selfgridy"
			selfgridy = nextgridy;
			
	
			/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
			/// @DnDVersion : 1
			/// @DnDHash : 70184D5F
			/// @DnDParent : 37BC417C
			/// @DnDArgument : "var" "global.battlemap"
			/// @DnDArgument : "x" "nextgridx"
			/// @DnDArgument : "y" "nextgridy"
			/// @DnDArgument : "value" "myself"
			
			{
				ds_grid_set(global.battlemap, nextgridx, nextgridy, myself);
			}
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 10AF7F5F
			/// @DnDParent : 37BC417C
			/// @DnDArgument : "var" "drawphantom"
			drawphantom = 0;
			
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 351063C6
			/// @DnDParent : 37BC417C
			/// @DnDArgument : "var" "global.show_valid"
			global.show_valid = 0;
			
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7AB72176
			/// @DnDParent : 37BC417C
			/// @DnDArgument : "var" "global.ui_cross_select"
			global.ui_cross_select = 0;
			
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 77901EB7
			/// @DnDParent : 37BC417C
			/// @DnDArgument : "expr" "4"
			/// @DnDArgument : "var" "global.battle_state"
			global.battle_state = 4;
			
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1BC93501
			/// @DnDParent : 37BC417C
			/// @DnDArgument : "var" "global.animatingmove"
			global.animatingmove = 0;
			
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5C726388
			/// @DnDParent : 37BC417C
			/// @DnDArgument : "expr" "selfgridx"
			/// @DnDArgument : "var" "global.cam_zoom_x"
			global.cam_zoom_x = selfgridx;
			
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5E4D3780
			/// @DnDParent : 37BC417C
			/// @DnDArgument : "expr" "selfgridy"
			/// @DnDArgument : "var" "global.cam_zoom_y"
			global.cam_zoom_y = selfgridy;
			
	
			/// @DnDAction : YoYo Games.Common.Return
			/// @DnDVersion : 1
			/// @DnDHash : 06AEEB33
			/// @DnDParent : 37BC417C
			return;
	
	
	}


}

