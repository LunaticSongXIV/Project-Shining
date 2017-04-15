/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 54B4810C
/// @DnDArgument : "var" "global.battle_pause"
/// @DnDArgument : "value" "1"
if(global.battle_pause == 1)
{
	

	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 33115331
	/// @DnDParent : 54B4810C
	exit;


}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1630859C
/// @DnDArgument : "var" "global.battle_state"
/// @DnDArgument : "value" "4"
if(global.battle_state == 4)
{
	

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 45E372F1
	/// @DnDParent : 1630859C
	/// @DnDArgument : "msg" ""Action UI Called""
	show_debug_message(string("Action UI Called"));

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3FDA1CF9
	/// @DnDParent : 1630859C
	/// @DnDArgument : "var" "key_released"
	if(key_released == 0)
	{
		
	
			/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
			/// @DnDVersion : 1
			/// @DnDHash : 42E3FBB1
			/// @DnDParent : 3FDA1CF9
			/// @DnDArgument : "msg" ""No Release""
			show_debug_message(string("No Release"));
	
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 73617E35
			/// @DnDParent : 3FDA1CF9
			/// @DnDArgument : "var" "global.confirmpressed"
			if(global.confirmpressed == 0)
			{
				
			
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 6B711C0A
						/// @DnDParent : 73617E35
						/// @DnDArgument : "expr" "1"
						/// @DnDArgument : "var" "key_released"
						key_released = 1;
						
			
						/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
						/// @DnDVersion : 1
						/// @DnDHash : 75287C2D
						/// @DnDParent : 73617E35
						/// @DnDArgument : "msg" ""Confirm Released""
						show_debug_message(string("Confirm Released"));
			
			
			}
	
	
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4955D4DD
	/// @DnDParent : 1630859C
	/// @DnDArgument : "var" "key_released"
	/// @DnDArgument : "value" "1"
	if(key_released == 1)
	{
		
	
			/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
			/// @DnDVersion : 1
			/// @DnDHash : 5773EDAE
			/// @DnDParent : 4955D4DD
			/// @DnDArgument : "msg" ""Menu Selection Unlocked""
			show_debug_message(string("Menu Selection Unlocked"));
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2B9AB809
			/// @DnDParent : 4955D4DD
			/// @DnDArgument : "var" "global.ui_cross_select"
			global.ui_cross_select = 0;
			
	
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 51C5B939
			/// @DnDParent : 4955D4DD
			/// @DnDArgument : "var" "global.uppressed"
			/// @DnDArgument : "value" "1"
			if(global.uppressed == 1)
			{
				
			
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 60C2F7EE
						/// @DnDParent : 51C5B939
						/// @DnDArgument : "expr" "1"
						/// @DnDArgument : "var" "global.ui_cross_select"
						global.ui_cross_select = 1;
						
			
			
			}
	
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0C38916E
			/// @DnDParent : 4955D4DD
			/// @DnDArgument : "var" "global.leftpressed"
			/// @DnDArgument : "value" "1"
			if(global.leftpressed == 1)
			{
				
			
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 09C0D2A8
						/// @DnDParent : 0C38916E
						/// @DnDArgument : "expr" "3"
						/// @DnDArgument : "var" "global.ui_cross_select"
						global.ui_cross_select = 3;
						
			
			
			}
	
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 73AE5499
			/// @DnDParent : 4955D4DD
			/// @DnDArgument : "var" "global.downpressed"
			/// @DnDArgument : "value" "1"
			if(global.downpressed == 1)
			{
				
			
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 0E7E6DB6
						/// @DnDParent : 73AE5499
						/// @DnDArgument : "expr" "2"
						/// @DnDArgument : "var" "global.ui_cross_select"
						global.ui_cross_select = 2;
						
			
			
			}
	
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 18F95AC9
			/// @DnDParent : 4955D4DD
			/// @DnDArgument : "var" "global.rightpressed"
			/// @DnDArgument : "value" "1"
			if(global.rightpressed == 1)
			{
				
			
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 3EDEEF16
						/// @DnDParent : 18F95AC9
						/// @DnDArgument : "expr" "4"
						/// @DnDArgument : "var" "global.ui_cross_select"
						global.ui_cross_select = 4;
						
			
			
			}
	
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 38211C6D
			/// @DnDParent : 4955D4DD
			/// @DnDArgument : "var" "global.confirmpressed"
			/// @DnDArgument : "value" "1"
			if(global.confirmpressed == 1)
			{
				
			
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 55760B18
						/// @DnDParent : 38211C6D
						/// @DnDArgument : "var" "key_released"
						key_released = 0;
						
			
						/// @DnDAction : YoYo Games.Common.If_Variable
						/// @DnDVersion : 1
						/// @DnDHash : 035D8F18
						/// @DnDParent : 38211C6D
						/// @DnDArgument : "var" "global.ui_cross_select"
						/// @DnDArgument : "op" "4"
						/// @DnDArgument : "value" "3"
						if(global.ui_cross_select >= 3)
						{
							
						
										/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
										/// @DnDVersion : 1
										/// @DnDHash : 2966458D
										/// @DnDParent : 035D8F18
										/// @DnDArgument : "msg" ""Ability / Spell / Item Menu Selected""
										show_debug_message(string("Ability / Spell / Item Menu Selected"));
						
										/// @DnDAction : YoYo Games.Common.Variable
										/// @DnDVersion : 1
										/// @DnDHash : 215C3C55
										/// @DnDParent : 035D8F18
										/// @DnDArgument : "expr" "1"
										/// @DnDArgument : "var" "global.battle_pause"
										global.battle_pause = 1;
										
						
										/// @DnDAction : YoYo Games.Common.Execute_Script
										/// @DnDVersion : 1.1
										/// @DnDHash : 64939326
										/// @DnDParent : 035D8F18
										/// @DnDArgument : "script" "battle_list_menu"
										script_execute(battle_list_menu);
						
						
						}
			
						/// @DnDAction : YoYo Games.Common.If_Variable
						/// @DnDVersion : 1
						/// @DnDHash : 4B373872
						/// @DnDParent : 38211C6D
						/// @DnDArgument : "var" "global.ui_cross_select"
						/// @DnDArgument : "value" "2"
						if(global.ui_cross_select == 2)
						{
							
						
										/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
										/// @DnDVersion : 1
										/// @DnDHash : 708B662E
										/// @DnDParent : 4B373872
										/// @DnDArgument : "msg" ""Defend Action Selected""
										show_debug_message(string("Defend Action Selected"));
						
										/// @DnDAction : YoYo Games.Instances.Call_User_Event
										/// @DnDVersion : 1
										/// @DnDHash : 5D3DB4D2
										/// @DnDApplyTo : 96ddc5ff-8ff3-45c8-a6b1-b2696088318c
										/// @DnDParent : 4B373872
										/// @DnDArgument : "event" "2"
										with(obj_party_character_old)
										{
											event_user(2);
										}
						
										/// @DnDAction : YoYo Games.Instances.Call_User_Event
										/// @DnDVersion : 1
										/// @DnDHash : 75EC965C
										/// @DnDApplyTo : b759897c-c0d7-476e-8073-c93858e0c549
										/// @DnDParent : 4B373872
										/// @DnDArgument : "event" "2"
										with(obj_enemy_character)
										{
											event_user(2);
										}
						
										/// @DnDAction : YoYo Games.Common.Return
										/// @DnDVersion : 1
										/// @DnDHash : 717B65C5
										/// @DnDParent : 4B373872
										return;
						
						
						}
			
						/// @DnDAction : YoYo Games.Common.If_Variable
						/// @DnDVersion : 1
						/// @DnDHash : 50BEFD25
						/// @DnDParent : 38211C6D
						/// @DnDArgument : "var" "global.ui_cross_select"
						/// @DnDArgument : "value" "1"
						if(global.ui_cross_select == 1)
						{
							
						
										/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
										/// @DnDVersion : 1
										/// @DnDHash : 40B8592E
										/// @DnDParent : 50BEFD25
										/// @DnDArgument : "msg" ""Attack Action Selected""
										show_debug_message(string("Attack Action Selected"));
						
										/// @DnDAction : YoYo Games.Instances.Call_User_Event
										/// @DnDVersion : 1
										/// @DnDHash : 0000F5C2
										/// @DnDApplyTo : 96ddc5ff-8ff3-45c8-a6b1-b2696088318c
										/// @DnDParent : 50BEFD25
										/// @DnDArgument : "event" "2"
										with(obj_party_character_old)
										{
											event_user(2);
										}
						
										/// @DnDAction : YoYo Games.Instances.Call_User_Event
										/// @DnDVersion : 1
										/// @DnDHash : 4EA75635
										/// @DnDApplyTo : b759897c-c0d7-476e-8073-c93858e0c549
										/// @DnDParent : 50BEFD25
										/// @DnDArgument : "event" "2"
										with(obj_enemy_character)
										{
											event_user(2);
										}
						
										/// @DnDAction : YoYo Games.Common.Return
										/// @DnDVersion : 1
										/// @DnDHash : 0DF44CBD
										/// @DnDParent : 50BEFD25
										return;
						
						
						}
			
						/// @DnDAction : YoYo Games.Common.If_Variable
						/// @DnDVersion : 1
						/// @DnDHash : 416DD847
						/// @DnDParent : 38211C6D
						/// @DnDArgument : "var" "global.ui_cross_select"
						if(global.ui_cross_select == 0)
						{
							
						
										/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
										/// @DnDVersion : 1
										/// @DnDHash : 7B84825D
										/// @DnDParent : 416DD847
										/// @DnDArgument : "msg" ""Stay Action Selected""
										show_debug_message(string("Stay Action Selected"));
						
										/// @DnDAction : YoYo Games.Common.Variable
										/// @DnDVersion : 1
										/// @DnDHash : 510FF913
										/// @DnDApplyTo : 5db25750-6d0d-423c-8209-510cec854c0d
										/// @DnDParent : 416DD847
										/// @DnDArgument : "expr" "8"
										/// @DnDArgument : "var" "global.battle_state"
										with(battle_main) {
										global.battle_state = 8;
										
										}
						
						
						}
			
			
			}
	
	
	}


}

