/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0DB826A1
/// @DnDArgument : "var" "global.battlephase"
/// @DnDArgument : "value" "2"
if(global.battlephase == 2)
{
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 025966F0
	/// @DnDParent : 0DB826A1
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "global.cameralock"
	global.cameralock = 1;
	

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5D07A29E
	/// @DnDParent : 0DB826A1
	/// @DnDArgument : "var" "global.cameramoving"
	if(global.cameramoving == 0)
	{
		
	
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5AAF0AD8
			/// @DnDParent : 5D07A29E
			/// @DnDArgument : "var" "selfphase"
			if(selfphase == 0)
			{
				
			
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 1528240D
						/// @DnDParent : 5AAF0AD8
						/// @DnDArgument : "expr" "global.initiativecycle"
						/// @DnDArgument : "var" "global.uiactivechar"
						global.uiactivechar = global.initiativecycle;
						
			
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 5B68A9A1
						/// @DnDParent : 5AAF0AD8
						/// @DnDArgument : "expr" "1"
						/// @DnDArgument : "var" "selfphase"
						selfphase = 1;
						
			
						/// @DnDAction : YoYo Games.Instances.Call_User_Event
						/// @DnDVersion : 1
						/// @DnDHash : 27A400F8
						/// @DnDApplyTo : b759897c-c0d7-476e-8073-c93858e0c549
						/// @DnDParent : 5AAF0AD8
						/// @DnDArgument : "event" "1"
						with(obj_enemy_character)
						{
							event_user(1);
						}
			
						/// @DnDAction : YoYo Games.Instances.Call_User_Event
						/// @DnDVersion : 1
						/// @DnDHash : 6CC6D682
						/// @DnDApplyTo : 96ddc5ff-8ff3-45c8-a6b1-b2696088318c
						/// @DnDParent : 5AAF0AD8
						/// @DnDArgument : "event" "1"
						with(obj_party_character)
						{
							event_user(1);
						}
			
			
			}
	
	
	}


}

