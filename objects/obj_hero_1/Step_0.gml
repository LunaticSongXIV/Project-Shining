/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 11F3B783
/// @DnDArgument : "var" "movetime"
/// @DnDArgument : "op" "2"
if(movetime > 0)
{
	

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1376F991
	/// @DnDParent : 11F3B783
	/// @DnDArgument : "var" "moving"
	if(moving == 0)
	{
		
	
			/// @DnDAction : YoYo Games.Movement.Jump_To_Point
			/// @DnDVersion : 1
			/// @DnDHash : 70982BAF
			/// @DnDParent : 1376F991
			/// @DnDArgument : "y" "- global.movespeed"
			/// @DnDArgument : "y_relative" "1"
			
			{
				
				y += - global.movespeed;
			}
	
	
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 08DC8F28
	/// @DnDParent : 11F3B783
	/// @DnDArgument : "var" "moving"
	/// @DnDArgument : "value" "2"
	if(moving == 2)
	{
		
	
			/// @DnDAction : YoYo Games.Movement.Jump_To_Point
			/// @DnDVersion : 1
			/// @DnDHash : 6745CE29
			/// @DnDParent : 08DC8F28
			/// @DnDArgument : "y" "global.movespeed"
			/// @DnDArgument : "y_relative" "1"
			
			{
				
				y += global.movespeed;
			}
	
	
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 29DFE034
	/// @DnDParent : 11F3B783
	/// @DnDArgument : "var" "moving"
	/// @DnDArgument : "value" "1"
	if(moving == 1)
	{
		
	
			/// @DnDAction : YoYo Games.Movement.Jump_To_Point
			/// @DnDVersion : 1
			/// @DnDHash : 2A045C17
			/// @DnDParent : 29DFE034
			/// @DnDArgument : "x" "- global.movespeed"
			/// @DnDArgument : "x_relative" "1"
			
			{
				x += - global.movespeed;
				
			}
	
	
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 313DB98A
	/// @DnDParent : 11F3B783
	/// @DnDArgument : "var" "moving"
	/// @DnDArgument : "value" "3"
	if(moving == 3)
	{
		
	
			/// @DnDAction : YoYo Games.Movement.Jump_To_Point
			/// @DnDVersion : 1
			/// @DnDHash : 4C4AEF54
			/// @DnDParent : 313DB98A
			/// @DnDArgument : "x" "global.movespeed"
			/// @DnDArgument : "x_relative" "1"
			
			{
				x += global.movespeed;
				
			}
	
	
	}


}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 348907B6
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "movetime"
movetime += -1;


/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5F2ED5C0
/// @DnDArgument : "var" "global.battleinprogress"
if(global.battleinprogress == 0)
{
	

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 788C0E9E
	/// @DnDParent : 5F2ED5C0
	/// @DnDArgument : "var" "movetime"
	/// @DnDArgument : "op" "3"
	if(movetime <= 0)
	{
		
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 014BF3BA
			/// @DnDParent : 788C0E9E
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "var" "moveok"
			moveok = 1;
			
	
	
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 67B832F6
	/// @DnDParent : 5F2ED5C0
	/// @DnDArgument : "var" "moveok"
	/// @DnDArgument : "value" "1"
	if(moveok == 1)
	{
		
	
			/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
			/// @DnDVersion : 1
			/// @DnDHash : 295CF91D
			/// @DnDParent : 67B832F6
			/// @DnDArgument : "key" "ord("W")"
			var l295CF91D_0;
			l295CF91D_0 = keyboard_check(ord("W"));
			if (l295CF91D_0)
			{
				
			
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 41B45CAB
						/// @DnDParent : 295CF91D
						/// @DnDArgument : "var" "moving"
						moving = 0;
						
			
						/// @DnDAction : YoYo Games.Instances.Set_Sprite
						/// @DnDVersion : 1
						/// @DnDHash : 17052A48
						/// @DnDParent : 295CF91D
						/// @DnDArgument : "imageind_relative" "1"
						/// @DnDArgument : "spriteind" "spr_hero_1_up"
						/// @DnDSaveInfo : "spriteind" "592c8eeb-b7a5-4332-8daa-6fd871c41d24"
						sprite_index = spr_hero_1_up;
						image_index += 0;
			
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 21C7B212
						/// @DnDParent : 295CF91D
						/// @DnDArgument : "var" "moveok"
						moveok = 0;
						
			
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 43402665
						/// @DnDParent : 295CF91D
						/// @DnDArgument : "expr" "global.movetime"
						/// @DnDArgument : "var" "movetime"
						movetime = global.movetime;
						
			
			
			}
	
			/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
			/// @DnDVersion : 1
			/// @DnDHash : 5A4F6E49
			/// @DnDParent : 67B832F6
			/// @DnDArgument : "key" "ord("A")"
			var l5A4F6E49_0;
			l5A4F6E49_0 = keyboard_check(ord("A"));
			if (l5A4F6E49_0)
			{
				
			
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 0C0C022E
						/// @DnDParent : 5A4F6E49
						/// @DnDArgument : "expr" "1"
						/// @DnDArgument : "var" "moving"
						moving = 1;
						
			
						/// @DnDAction : YoYo Games.Instances.Set_Sprite
						/// @DnDVersion : 1
						/// @DnDHash : 39147983
						/// @DnDParent : 5A4F6E49
						/// @DnDArgument : "imageind_relative" "1"
						/// @DnDArgument : "spriteind" "spr_hero_1_left"
						/// @DnDSaveInfo : "spriteind" "806273e3-e454-46a4-9e8b-5197e5b100d0"
						sprite_index = spr_hero_1_left;
						image_index += 0;
			
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 0163F9B5
						/// @DnDParent : 5A4F6E49
						/// @DnDArgument : "var" "moveok"
						moveok = 0;
						
			
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 312BEC6C
						/// @DnDParent : 5A4F6E49
						/// @DnDArgument : "expr" "global.movetime"
						/// @DnDArgument : "var" "movetime"
						movetime = global.movetime;
						
			
			
			}
	
			/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
			/// @DnDVersion : 1
			/// @DnDHash : 70B79630
			/// @DnDParent : 67B832F6
			/// @DnDArgument : "key" "ord("S")"
			var l70B79630_0;
			l70B79630_0 = keyboard_check(ord("S"));
			if (l70B79630_0)
			{
				
			
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 3CAC7104
						/// @DnDParent : 70B79630
						/// @DnDArgument : "expr" "2"
						/// @DnDArgument : "var" "moving"
						moving = 2;
						
			
						/// @DnDAction : YoYo Games.Instances.Set_Sprite
						/// @DnDVersion : 1
						/// @DnDHash : 06EF3EFC
						/// @DnDParent : 70B79630
						/// @DnDArgument : "imageind_relative" "1"
						/// @DnDArgument : "spriteind" "spr_hero_1_down"
						/// @DnDSaveInfo : "spriteind" "80a0e025-30d2-4947-820e-86d9d955d3f7"
						sprite_index = spr_hero_1_down;
						image_index += 0;
			
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 791FB00F
						/// @DnDParent : 70B79630
						/// @DnDArgument : "var" "moveok"
						moveok = 0;
						
			
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 6C4C0C76
						/// @DnDParent : 70B79630
						/// @DnDArgument : "expr" "global.movetime"
						/// @DnDArgument : "var" "movetime"
						movetime = global.movetime;
						
			
			
			}
	
			/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
			/// @DnDVersion : 1
			/// @DnDHash : 2887712C
			/// @DnDParent : 67B832F6
			/// @DnDArgument : "key" "ord("D")"
			var l2887712C_0;
			l2887712C_0 = keyboard_check(ord("D"));
			if (l2887712C_0)
			{
				
			
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 7F092B9C
						/// @DnDParent : 2887712C
						/// @DnDArgument : "expr" "3"
						/// @DnDArgument : "var" "moving"
						moving = 3;
						
			
						/// @DnDAction : YoYo Games.Instances.Set_Sprite
						/// @DnDVersion : 1
						/// @DnDHash : 6CF6EBAE
						/// @DnDParent : 2887712C
						/// @DnDArgument : "imageind_relative" "1"
						/// @DnDArgument : "spriteind" "spr_hero_1_right"
						/// @DnDSaveInfo : "spriteind" "fee6eaf5-d622-4d20-a695-0492372403b3"
						sprite_index = spr_hero_1_right;
						image_index += 0;
			
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 3BA6FBB9
						/// @DnDParent : 2887712C
						/// @DnDArgument : "var" "moveok"
						moveok = 0;
						
			
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 7FB437AB
						/// @DnDParent : 2887712C
						/// @DnDArgument : "expr" "global.movetime"
						/// @DnDArgument : "var" "movetime"
						movetime = global.movetime;
						
			
			
			}
	
	
	}


}

