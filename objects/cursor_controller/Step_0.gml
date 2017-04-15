/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 66279EEE
/// @DnDArgument : "var" "global.battle_state"
/// @DnDArgument : "value" "2"
if(global.battle_state == 2)
{
	

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 4C866C75
	/// @DnDParent : 66279EEE
	/// @DnDArgument : "var" "camlockstate"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "script" "camera_lock"
	/// @DnDSaveInfo : "script" "0cd9da4f-112a-4409-b828-9d47cb9e0bf8"
	var camlockstate = script_execute(camera_lock);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0CEF50E3
	/// @DnDParent : 66279EEE
	/// @DnDArgument : "var" "camlockstate"
	if(camlockstate == 0)
	{
		
	
			/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
			/// @DnDVersion : 1
			/// @DnDHash : 44A6CE2A
			/// @DnDParent : 0CEF50E3
			/// @DnDArgument : "msg" ""Camera Assigning Battle State 3""
			show_debug_message(string("Camera Assigning Battle State 3"));
	
			/// @DnDAction : YoYo Games.Common.Set_Global
			/// @DnDVersion : 1
			/// @DnDHash : 60FD2D81
			/// @DnDParent : 0CEF50E3
			/// @DnDArgument : "value" "3"
			/// @DnDArgument : "var" "battle_state"
			global.battle_state = 3;
			
	
			/// @DnDAction : YoYo Games.Common.Set_Global
			/// @DnDVersion : 1
			/// @DnDHash : 6C7BB08B
			/// @DnDParent : 0CEF50E3
			/// @DnDArgument : "value" "global.turn_order_cycle"
			/// @DnDArgument : "var" "active_turn_char"
			global.active_turn_char = global.turn_order_cycle;
			
	
			/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
			/// @DnDVersion : 1
			/// @DnDHash : 7241C268
			/// @DnDParent : 0CEF50E3
			/// @DnDArgument : "msg" ""Activating Movement on Charaters""
			show_debug_message(string("Activating Movement on Charaters"));
	
			/// @DnDAction : YoYo Games.Instances.Call_User_Event
			/// @DnDVersion : 1
			/// @DnDHash : 56E2D1E2
			/// @DnDApplyTo : b759897c-c0d7-476e-8073-c93858e0c549
			/// @DnDParent : 0CEF50E3
			/// @DnDArgument : "event" "1"
			with(obj_enemy_character)
			{
				event_user(1);
			}
	
			/// @DnDAction : YoYo Games.Instances.Call_User_Event
			/// @DnDVersion : 1
			/// @DnDHash : 4DF76018
			/// @DnDApplyTo : obj_party_character
			/// @DnDParent : 0CEF50E3
			/// @DnDArgument : "event" "1"
			with(obj_party_character)
			{
				event_user(1);
			}
	
	
	}


}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7D807077
/// @DnDArgument : "var" "global.battle_state"
/// @DnDArgument : "value" "3"
if(global.battle_state == 3)
{
	

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 4E97FFE8
	/// @DnDParent : 7D807077
	/// @DnDArgument : "msg" ""Mouse Enabled?""
	show_debug_message(string("Mouse Enabled?"));

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 2BC2BB1C
	/// @DnDParent : 7D807077
	/// @DnDArgument : "msg" "global.mouseenabled"
	show_debug_message(string(global.mouseenabled));

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 272A03A7
	/// @DnDParent : 7D807077
	/// @DnDArgument : "var" "global.mouseenabled"
	if(global.mouseenabled == 0)
	{
		
	
			/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
			/// @DnDVersion : 1
			/// @DnDHash : 5E94E464
			/// @DnDParent : 272A03A7
			/// @DnDArgument : "msg" ""Move Lock Go""
			show_debug_message(string("Move Lock Go"));
	
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 310514AF
			/// @DnDParent : 272A03A7
			/// @DnDArgument : "script" "camera_lock"
			/// @DnDSaveInfo : "script" "0cd9da4f-112a-4409-b828-9d47cb9e0bf8"
			script_execute(camera_lock);
	
	
	}


}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2C5CBA95
/// @DnDArgument : "var" "global.free_cursor"
/// @DnDArgument : "value" "1"
if(global.free_cursor == 1)
{
	

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 699B01E6
	/// @DnDParent : 2C5CBA95
	/// @DnDArgument : "var" "global.mouseenabled"
	/// @DnDArgument : "value" "1"
	if(global.mouseenabled == 1)
	{
		
	
			/// @DnDAction : YoYo Games.Movement.Jump_To_Point
			/// @DnDVersion : 1
			/// @DnDHash : 4A09B240
			/// @DnDParent : 699B01E6
			/// @DnDArgument : "x" "mouse.x"
			/// @DnDArgument : "y" "mouse.y"
			
			{
				x = mouse.x;
				y = mouse.y;
			}
	
	
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 04DA12C9
	/// @DnDParent : 2C5CBA95
	else
	{
		
	
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 529DC656
			/// @DnDParent : 04DA12C9
			/// @DnDArgument : "var" "global.uppressed"
			/// @DnDArgument : "value" "1"
			if(global.uppressed == 1)
			{
				
			
						/// @DnDAction : YoYo Games.Movement.Jump_To_Point
						/// @DnDVersion : 1
						/// @DnDHash : 13247317
						/// @DnDParent : 529DC656
						/// @DnDArgument : "y" "- global.free_cursor_speed"
						/// @DnDArgument : "y_relative" "1"
						
						{
							
							y += - global.free_cursor_speed;
						}
			
			
			}
	
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 486FC32D
			/// @DnDParent : 04DA12C9
			/// @DnDArgument : "var" "global.rightpressed"
			/// @DnDArgument : "value" "1"
			if(global.rightpressed == 1)
			{
				
			
						/// @DnDAction : YoYo Games.Movement.Jump_To_Point
						/// @DnDVersion : 1
						/// @DnDHash : 628C84D2
						/// @DnDParent : 486FC32D
						/// @DnDArgument : "x" "global.free_cursor_speed"
						/// @DnDArgument : "x_relative" "1"
						
						{
							x += global.free_cursor_speed;
							
						}
			
			
			}
	
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 50BE5075
			/// @DnDParent : 04DA12C9
			/// @DnDArgument : "var" "global.downpressed"
			/// @DnDArgument : "value" "1"
			if(global.downpressed == 1)
			{
				
			
						/// @DnDAction : YoYo Games.Movement.Jump_To_Point
						/// @DnDVersion : 1
						/// @DnDHash : 1E1E2EED
						/// @DnDParent : 50BE5075
						/// @DnDArgument : "y" "global.free_cursor_speed"
						/// @DnDArgument : "y_relative" "1"
						
						{
							
							y += global.free_cursor_speed;
						}
			
			
			}
	
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 73F96578
			/// @DnDParent : 04DA12C9
			/// @DnDArgument : "var" "global.leftpressed"
			/// @DnDArgument : "value" "1"
			if(global.leftpressed == 1)
			{
				
			
						/// @DnDAction : YoYo Games.Movement.Jump_To_Point
						/// @DnDVersion : 1
						/// @DnDHash : 39BD6EB6
						/// @DnDParent : 73F96578
						/// @DnDArgument : "x" "- global.free_cursor_speed"
						/// @DnDArgument : "x_relative" "1"
						
						{
							x += - global.free_cursor_speed;
							
						}
			
			
			}
	
	
	}

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 78A6D3A6
	/// @DnDParent : 2C5CBA95
	/// @DnDArgument : "var" "global.csrgridx"
	/// @DnDArgument : "script" "find_grid_axis_value"
	/// @DnDArgument : "arg" "self.x"
	/// @DnDSaveInfo : "script" "cbd93880-9129-46c9-b205-31c6ee9d1afe"
	global.csrgridx = script_execute(find_grid_axis_value, self.x);

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 35362C80
	/// @DnDParent : 2C5CBA95
	/// @DnDArgument : "var" "global.csrgridy"
	/// @DnDArgument : "script" "find_grid_axis_value"
	/// @DnDArgument : "arg" "self.y"
	/// @DnDSaveInfo : "script" "cbd93880-9129-46c9-b205-31c6ee9d1afe"
	global.csrgridy = script_execute(find_grid_axis_value, self.y);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2B371FAE
	/// @DnDParent : 2C5CBA95
	/// @DnDArgument : "expr" "global.crsx"
	/// @DnDArgument : "var" "self.x"
	self.x = global.crsx;
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 25C16626
	/// @DnDParent : 2C5CBA95
	/// @DnDArgument : "expr" "global.crsy"
	/// @DnDArgument : "var" "self.y"
	self.y = global.crsy;
	

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 183DE81D
	/// @DnDParent : 2C5CBA95
	/// @DnDArgument : "var" "global.csr_screen_x"
	/// @DnDArgument : "script" "find_x_in_window"
	/// @DnDArgument : "arg" "global.csrx"
	/// @DnDSaveInfo : "script" "098a3c3e-e5ef-4862-9fe1-56b6ce3038c9"
	global.csr_screen_x = script_execute(find_x_in_window, global.csrx);

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 21B0F09A
	/// @DnDParent : 2C5CBA95
	/// @DnDArgument : "var" "global.csr_screen_y"
	/// @DnDArgument : "script" "find_y_in_window"
	/// @DnDArgument : "arg" "global.csry"
	/// @DnDSaveInfo : "script" "25e23087-f961-4785-8a4b-7ce383a4df10"
	global.csr_screen_y = script_execute(find_y_in_window, global.csry);


}

