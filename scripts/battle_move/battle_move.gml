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
	/// @DnDArgument : "var" "global.showturnorder"
	global.showturnorder = 1;
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4EA9C871
	/// @DnDParent : 40105769
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "var" "moving"
	moving = -1;
	

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 6CD83FCE
	/// @DnDParent : 40105769
	/// @DnDArgument : "key" "ord("W")"
	var l6CD83FCE_0;
	l6CD83FCE_0 = keyboard_check(ord("W"));
	if (l6CD83FCE_0)
	{
		
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6D908E34
			/// @DnDParent : 6CD83FCE
			/// @DnDArgument : "var" "moving"
			moving = 0;
			
	
	
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 106D2980
	/// @DnDParent : 40105769
	/// @DnDArgument : "key" "ord("D")"
	var l106D2980_0;
	l106D2980_0 = keyboard_check(ord("D"));
	if (l106D2980_0)
	{
		
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 082F514F
			/// @DnDParent : 106D2980
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "var" "moving"
			moving = 1;
			
	
	
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 41A4081A
	/// @DnDParent : 40105769
	/// @DnDArgument : "key" "ord("S")"
	var l41A4081A_0;
	l41A4081A_0 = keyboard_check(ord("S"));
	if (l41A4081A_0)
	{
		
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6594D97A
			/// @DnDParent : 41A4081A
			/// @DnDArgument : "expr" "2"
			/// @DnDArgument : "var" "moving"
			moving = 2;
			
	
	
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 78B721BC
	/// @DnDParent : 40105769
	/// @DnDArgument : "key" "ord("A")"
	var l78B721BC_0;
	l78B721BC_0 = keyboard_check(ord("A"));
	if (l78B721BC_0)
	{
		
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3CCECC34
			/// @DnDParent : 78B721BC
			/// @DnDArgument : "expr" "3"
			/// @DnDArgument : "var" "moving"
			moving = 3;
			
	
	
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 169DAA63
	/// @DnDParent : 40105769
	var l169DAA63_0;
	l169DAA63_0 = keyboard_check(vk_space);
	if (l169DAA63_0)
	{
		
	
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 7EF39B2D
			/// @DnDParent : 169DAA63
			/// @DnDArgument : "script" "find_distance"
			/// @DnDSaveInfo : "script" "32890da9-2f05-4643-8665-6b6fff94fde2"
			script_execute(find_distance);
	
			/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
			/// @DnDVersion : 1
			/// @DnDHash : 1082E47E
			/// @DnDParent : 169DAA63
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
			/// @DnDParent : 169DAA63
			/// @DnDArgument : "var" "global.battlemap"
			/// @DnDArgument : "x" "nextgridx"
			/// @DnDArgument : "y" "nextgridy"
			/// @DnDArgument : "value" "myself"
			
			{
				ds_grid_set(global.battlemap, nextgridx, nextgridy, myself);
			}
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 76208B55
			/// @DnDParent : 169DAA63
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "var" "global.movecomplete"
			global.movecomplete = 1;
			
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7F3E3A82
			/// @DnDParent : 169DAA63
			/// @DnDArgument : "var" "drawphantom"
			drawphantom = 0;
			
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 24F590A5
			/// @DnDParent : 169DAA63
			/// @DnDArgument : "var" "global.show_valid"
			global.show_valid = 0;
			
	
			/// @DnDAction : YoYo Games.Common.Return
			/// @DnDVersion : 1
			/// @DnDHash : 0A770E06
			/// @DnDParent : 169DAA63
			return;
	
	
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 70199597
	/// @DnDParent : 40105769
	/// @DnDArgument : "key" "vk_escape"
	var l70199597_0;
	l70199597_0 = keyboard_check(vk_escape);
	if (l70199597_0)
	{
		
	
			/// @DnDAction : YoYo Games.Movement.Jump_To_Point
			/// @DnDVersion : 1
			/// @DnDHash : 4EB04039
			/// @DnDParent : 70199597
			/// @DnDArgument : "x" "(selfgridx * 128) + 64"
			/// @DnDArgument : "y" "(selfgridy * 128) + 64"
			
			{
				x = (selfgridx * 128) + 64;
				y = (selfgridy * 128) + 64;
			}
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 115B7848
			/// @DnDInput : 2
			/// @DnDParent : 70199597
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
			/// @DnDParent : 70199597
			with(camera_controller)
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
						/// @DnDArgument : "script" "find_party_member_sprite"
						/// @DnDArgument : "arg" "moving"
						/// @DnDSaveInfo : "script" "8e14865c-6f14-4a48-9b4a-8ea233fbfcb7"
						script_execute(find_party_member_sprite, moving);
			
						/// @DnDAction : YoYo Games.Common.Execute_Script
						/// @DnDVersion : 1.1
						/// @DnDHash : 295DF477
						/// @DnDParent : 636B03E9
						/// @DnDArgument : "script" "find_enemy_sprite"
						/// @DnDArgument : "arg" "moving"
						/// @DnDSaveInfo : "script" "35b24c7e-6eda-48c1-98ef-990c614dbcc3"
						script_execute(find_enemy_sprite, moving);
			
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

