/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0DB826A1
/// @DnDArgument : "var" "global.battle_state"
/// @DnDArgument : "value" "2"
if(global.battle_state == 2)
{
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0C98118E
	/// @DnDParent : 0DB826A1
	/// @DnDArgument : "expr" "global.turn_order_cycle"
	/// @DnDArgument : "var" "global.active_turn_char"
	global.active_turn_char = global.turn_order_cycle;
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 025966F0
	/// @DnDParent : 0DB826A1
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "global.lock_camera"
	global.lock_camera = 1;
	


}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7E43C216
/// @DnDArgument : "var" "global.battle_state"
/// @DnDArgument : "value" "6"
if(global.battle_state == 6)
{
	

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 18AC8EC7
	/// @DnDParent : 7E43C216
	/// @DnDArgument : "msg" ""Controller for Confirming an Action - Probably needs rewrite""
	show_debug_message(string("Controller for Confirming an Action - Probably needs rewrite"));

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7AF920F9
	/// @DnDParent : 7E43C216
	/// @DnDArgument : "var" "global.selectingaction"
	/// @DnDArgument : "value" "1"
	if(global.selectingaction == 1)
	{
		
	
			/// @DnDAction : YoYo Games.Common.Exit_Event
			/// @DnDVersion : 1
			/// @DnDHash : 1F583AFD
			/// @DnDParent : 7AF920F9
			exit;
	
	
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 26B59169
	/// @DnDParent : 7E43C216
	/// @DnDArgument : "var" "global.selectingaction"
	if(global.selectingaction == 0)
	{
		
	
			/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
			/// @DnDVersion : 1
			/// @DnDHash : 6A5B7A69
			/// @DnDParent : 26B59169
			var l6A5B7A69_0;
			l6A5B7A69_0 = keyboard_check_pressed(vk_space);
			if (l6A5B7A69_0)
			{
				
			
						/// @DnDAction : YoYo Games.Common.If_Variable
						/// @DnDVersion : 1
						/// @DnDHash : 12E963E7
						/// @DnDParent : 6A5B7A69
						/// @DnDArgument : "var" "ds_grid_get(global.valid_moves,global.camgridx,global.camgridy)"
						/// @DnDArgument : "value" "1"
						if(ds_grid_get(global.valid_moves,global.camgridx,global.camgridy) == 1)
						{
							
						
										/// @DnDAction : YoYo Games.Common.Variable
										/// @DnDVersion : 1
										/// @DnDHash : 431D41BC
										/// @DnDParent : 12E963E7
										/// @DnDArgument : "expr" "global.camgridx"
										/// @DnDArgument : "var" "global.ability_target_x"
										global.ability_target_x = global.camgridx;
										
						
										/// @DnDAction : YoYo Games.Common.Variable
										/// @DnDVersion : 1
										/// @DnDHash : 4D9658D8
										/// @DnDParent : 12E963E7
										/// @DnDArgument : "expr" "global.camgridy"
										/// @DnDArgument : "var" "global.ability_target_y"
										global.ability_target_y = global.camgridy;
										
						
										/// @DnDAction : YoYo Games.Common.Variable
										/// @DnDVersion : 1
										/// @DnDHash : 4E227027
										/// @DnDParent : 12E963E7
										/// @DnDArgument : "var" "global.free_cursor"
										global.free_cursor = 0;
										
						
										/// @DnDAction : YoYo Games.Common.Execute_Script
										/// @DnDVersion : 1.1
										/// @DnDHash : 466A67BE
										/// @DnDParent : 12E963E7
										/// @DnDArgument : "script" "execute_action"
										/// @DnDSaveInfo : "script" "9c90841d-6fdc-4d4f-a6a0-6ed695b9b3e7"
										script_execute(execute_action);
						
						
						}
			
			
			}
	
	
	}


}

