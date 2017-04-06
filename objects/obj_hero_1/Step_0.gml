/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 67B832F6
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
		
	
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 17052A48
			/// @DnDParent : 295CF91D
			/// @DnDArgument : "imageind_relative" "1"
			/// @DnDArgument : "spriteind" "spr_hero_1_up"
			/// @DnDSaveInfo : "spriteind" "592c8eeb-b7a5-4332-8daa-6fd871c41d24"
			sprite_index = spr_hero_1_up;
			image_index += 0;
	
			/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
			/// @DnDVersion : 1.1
			/// @DnDHash : 3D358005
			/// @DnDParent : 295CF91D
			/// @DnDArgument : "direction" "90"
			
			{
				direction = 90;
			}
	
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
		
	
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 47BACA3E
			/// @DnDParent : 5A4F6E49
			/// @DnDArgument : "imageind_relative" "1"
			/// @DnDArgument : "spriteind" "spr_hero_1_left"
			/// @DnDSaveInfo : "spriteind" "806273e3-e454-46a4-9e8b-5197e5b100d0"
			sprite_index = spr_hero_1_left;
			image_index += 0;
	
			/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
			/// @DnDVersion : 1.1
			/// @DnDHash : 1B012D85
			/// @DnDParent : 5A4F6E49
			/// @DnDArgument : "direction" "180"
			
			{
				direction = 180;
			}
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3EBA50F4
			/// @DnDParent : 5A4F6E49
			/// @DnDArgument : "var" "moveok"
			moveok = 0;
			
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 360238A0
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
		
	
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 06EF3EFC
			/// @DnDParent : 70B79630
			/// @DnDArgument : "imageind_relative" "1"
			/// @DnDArgument : "spriteind" "spr_hero_1_down"
			/// @DnDSaveInfo : "spriteind" "80a0e025-30d2-4947-820e-86d9d955d3f7"
			sprite_index = spr_hero_1_down;
			image_index += 0;
	
			/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
			/// @DnDVersion : 1.1
			/// @DnDHash : 763712D8
			/// @DnDParent : 70B79630
			/// @DnDArgument : "direction" "270"
			
			{
				direction = 270;
			}
	
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
		
	
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 6CF6EBAE
			/// @DnDParent : 2887712C
			/// @DnDArgument : "imageind_relative" "1"
			/// @DnDArgument : "spriteind" "spr_hero_1_right"
			/// @DnDSaveInfo : "spriteind" "fee6eaf5-d622-4d20-a695-0492372403b3"
			sprite_index = spr_hero_1_right;
			image_index += 0;
	
			/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
			/// @DnDVersion : 1.1
			/// @DnDHash : 45BA96F7
			/// @DnDParent : 2887712C
			/// @DnDArgument : "direction" "0"
			
			{
				direction = 0;
			}
	
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

