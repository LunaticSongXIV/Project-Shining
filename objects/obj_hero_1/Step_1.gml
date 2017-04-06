/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 69CCAF70
/// @DnDArgument : "var" "moveok"
if(moveok == 0)
{
	

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 259BDF78
	/// @DnDParent : 69CCAF70
	/// @DnDArgument : "speed" "global.movespeed"
	
	{
		speed = global.movespeed;
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6F7A44A7
	/// @DnDParent : 69CCAF70
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "movetime"
	movetime += -1;
	

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1C65F5DA
	/// @DnDParent : 69CCAF70
	/// @DnDArgument : "var" "movetime"
	/// @DnDArgument : "op" "3"
	if(movetime <= 0)
	{
		
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 57E08BE0
			/// @DnDParent : 1C65F5DA
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "var" "moveok"
			moveok = 1;
			
	
			/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
			/// @DnDVersion : 1
			/// @DnDHash : 24DFA6A3
			/// @DnDParent : 1C65F5DA
			/// @DnDArgument : "key" "ord("W")"
			/// @DnDArgument : "not" "1"
			var l24DFA6A3_0;
			l24DFA6A3_0 = keyboard_check(ord("W"));
			if (!l24DFA6A3_0)
			{
				
			
						/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
						/// @DnDVersion : 1
						/// @DnDHash : 58799F9E
						/// @DnDParent : 24DFA6A3
						/// @DnDArgument : "key" "ord("A")"
						/// @DnDArgument : "not" "1"
						var l58799F9E_0;
						l58799F9E_0 = keyboard_check(ord("A"));
						if (!l58799F9E_0)
						{
							
						
										/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
										/// @DnDVersion : 1
										/// @DnDHash : 4FBF41F3
										/// @DnDParent : 58799F9E
										/// @DnDArgument : "key" "ord("S")"
										/// @DnDArgument : "not" "1"
										var l4FBF41F3_0;
										l4FBF41F3_0 = keyboard_check(ord("S"));
										if (!l4FBF41F3_0)
										{
											
										
															/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
															/// @DnDVersion : 1
															/// @DnDHash : 63B36DD6
															/// @DnDParent : 4FBF41F3
															/// @DnDArgument : "key" "ord("D")"
															/// @DnDArgument : "not" "1"
															var l63B36DD6_0;
															l63B36DD6_0 = keyboard_check(ord("D"));
															if (!l63B36DD6_0)
															{
																
															
																					/// @DnDAction : YoYo Games.Movement.Set_Speed
																					/// @DnDVersion : 1
																					/// @DnDHash : 33035341
																					/// @DnDParent : 63B36DD6
																					
																					{
																						speed = 0;
																					}
															
															
															}
										
										
										}
						
						
						}
			
			
			}
	
	
	}


}

