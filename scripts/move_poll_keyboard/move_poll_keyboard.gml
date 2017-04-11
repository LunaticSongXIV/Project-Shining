/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 40105769
/// @DnDArgument : "var" "moveok"
/// @DnDArgument : "value" "1"
if(moveok == 1)
{
	

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 78B721BC
	/// @DnDParent : 40105769
	/// @DnDArgument : "key" "ord("W")"
	var l78B721BC_0;
	l78B721BC_0 = keyboard_check(ord("W"));
	if (l78B721BC_0)
	{
		
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3CCECC34
			/// @DnDParent : 78B721BC
			/// @DnDArgument : "var" "moving"
			moving = 0;
			
	
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 131DB223
			/// @DnDParent : 78B721BC
			/// @DnDArgument : "script" "find_party_member_sprite"
			/// @DnDArgument : "arg" "moving"
			/// @DnDSaveInfo : "script" "8e14865c-6f14-4a48-9b4a-8ea233fbfcb7"
			script_execute(find_party_member_sprite, moving);
	
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 35733260
			/// @DnDParent : 78B721BC
			/// @DnDArgument : "script" "find_enemy_sprite"
			/// @DnDArgument : "arg" "moving"
			/// @DnDSaveInfo : "script" "35b24c7e-6eda-48c1-98ef-990c614dbcc3"
			script_execute(find_enemy_sprite, moving);
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 14C45D83
			/// @DnDParent : 78B721BC
			/// @DnDArgument : "var" "moveok"
			moveok = 0;
			
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6E55B2B4
			/// @DnDParent : 78B721BC
			/// @DnDArgument : "expr" "global.movetime"
			/// @DnDArgument : "var" "movetime"
			movetime = global.movetime;
			
	
	
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 5F2A7A80
	/// @DnDParent : 40105769
	/// @DnDArgument : "key" "ord("D")"
	var l5F2A7A80_0;
	l5F2A7A80_0 = keyboard_check(ord("D"));
	if (l5F2A7A80_0)
	{
		
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4DBEC154
			/// @DnDParent : 5F2A7A80
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "var" "moving"
			moving = 1;
			
	
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 4A13D346
			/// @DnDParent : 5F2A7A80
			/// @DnDArgument : "script" "find_party_member_sprite"
			/// @DnDArgument : "arg" "moving"
			/// @DnDSaveInfo : "script" "8e14865c-6f14-4a48-9b4a-8ea233fbfcb7"
			script_execute(find_party_member_sprite, moving);
	
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 72333911
			/// @DnDParent : 5F2A7A80
			/// @DnDArgument : "script" "find_enemy_sprite"
			/// @DnDArgument : "arg" "moving"
			/// @DnDSaveInfo : "script" "35b24c7e-6eda-48c1-98ef-990c614dbcc3"
			script_execute(find_enemy_sprite, moving);
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 69A56D70
			/// @DnDParent : 5F2A7A80
			/// @DnDArgument : "var" "moveok"
			moveok = 0;
			
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 40F0771A
			/// @DnDParent : 5F2A7A80
			/// @DnDArgument : "expr" "global.movetime"
			/// @DnDArgument : "var" "movetime"
			movetime = global.movetime;
			
	
	
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 6974314D
	/// @DnDParent : 40105769
	/// @DnDArgument : "key" "ord("S")"
	var l6974314D_0;
	l6974314D_0 = keyboard_check(ord("S"));
	if (l6974314D_0)
	{
		
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0695CCD0
			/// @DnDParent : 6974314D
			/// @DnDArgument : "expr" "2"
			/// @DnDArgument : "var" "moving"
			moving = 2;
			
	
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 55EB8868
			/// @DnDParent : 6974314D
			/// @DnDArgument : "script" "find_party_member_sprite"
			/// @DnDArgument : "arg" "moving"
			/// @DnDSaveInfo : "script" "8e14865c-6f14-4a48-9b4a-8ea233fbfcb7"
			script_execute(find_party_member_sprite, moving);
	
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 614DB4E5
			/// @DnDParent : 6974314D
			/// @DnDArgument : "script" "find_enemy_sprite"
			/// @DnDArgument : "arg" "moving"
			/// @DnDSaveInfo : "script" "35b24c7e-6eda-48c1-98ef-990c614dbcc3"
			script_execute(find_enemy_sprite, moving);
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6AB61764
			/// @DnDParent : 6974314D
			/// @DnDArgument : "var" "moveok"
			moveok = 0;
			
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7BC1A9F5
			/// @DnDParent : 6974314D
			/// @DnDArgument : "expr" "global.movetime"
			/// @DnDArgument : "var" "movetime"
			movetime = global.movetime;
			
	
	
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 0ED853E3
	/// @DnDParent : 40105769
	/// @DnDArgument : "key" "ord("A")"
	var l0ED853E3_0;
	l0ED853E3_0 = keyboard_check(ord("A"));
	if (l0ED853E3_0)
	{
		
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 489F6F67
			/// @DnDParent : 0ED853E3
			/// @DnDArgument : "expr" "3"
			/// @DnDArgument : "var" "moving"
			moving = 3;
			
	
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 581DB028
			/// @DnDParent : 0ED853E3
			/// @DnDArgument : "script" "find_party_member_sprite"
			/// @DnDArgument : "arg" "moving"
			/// @DnDSaveInfo : "script" "8e14865c-6f14-4a48-9b4a-8ea233fbfcb7"
			script_execute(find_party_member_sprite, moving);
	
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 5C4BBF09
			/// @DnDParent : 0ED853E3
			/// @DnDArgument : "script" "find_enemy_sprite"
			/// @DnDArgument : "arg" "moving"
			/// @DnDSaveInfo : "script" "35b24c7e-6eda-48c1-98ef-990c614dbcc3"
			script_execute(find_enemy_sprite, moving);
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 33FAD7D4
			/// @DnDParent : 0ED853E3
			/// @DnDArgument : "var" "moveok"
			moveok = 0;
			
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 79DB32EE
			/// @DnDParent : 0ED853E3
			/// @DnDArgument : "expr" "global.movetime"
			/// @DnDArgument : "var" "movetime"
			movetime = global.movetime;
			
	
	
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
	/// @DnDHash : 5CDD739B
	/// @DnDParent : 56FB9988
	/// @DnDArgument : "msg" ""Move OK 0""
	show_debug_message(string("Move OK 0"));

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 0CC050A3
	/// @DnDParent : 56FB9988
	/// @DnDArgument : "msg" "movetime"
	show_debug_message(string(movetime));

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 56E4BB7D
	/// @DnDParent : 56FB9988
	/// @DnDArgument : "var" "moving"
	if(moving == 0)
	{
		
	
			/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
			/// @DnDVersion : 1
			/// @DnDHash : 31430A53
			/// @DnDParent : 56E4BB7D
			/// @DnDArgument : "msg" ""Moving UP""
			show_debug_message(string("Moving UP"));
	
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
	/// @DnDHash : 484D2BE4
	/// @DnDParent : 56FB9988
	/// @DnDArgument : "msg" ""movetime reduced""
	show_debug_message(string("movetime reduced"));

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 6CE80CE1
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
		
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 75241683
			/// @DnDParent : 37BC417C
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "var" "moveok"
			moveok = 1;
			
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6342E7BC
			/// @DnDParent : 37BC417C
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "var" "global.movecomplete"
			global.movecomplete = 1;
			
	
			/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
			/// @DnDVersion : 1
			/// @DnDHash : 5F0C2CB9
			/// @DnDParent : 37BC417C
			/// @DnDArgument : "msg" ""Move OK""
			show_debug_message(string("Move OK"));
	
	
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 42D26277
	/// @DnDParent : 56FB9988
	/// @DnDArgument : "var" "global.cameralock"
	/// @DnDArgument : "value" "1"
	if(global.cameralock == 1)
	{
		
	
			/// @DnDAction : YoYo Games.Instances.Call_User_Event
			/// @DnDVersion : 1
			/// @DnDHash : 1F927570
			/// @DnDApplyTo : e93f2f36-4e4e-4642-845f-4ba36f5e070f
			/// @DnDParent : 42D26277
			with(camera_controller)
			{
				event_user(0);
			}
	
	
	}


}

