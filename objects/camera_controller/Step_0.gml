/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 66279EEE
/// @DnDArgument : "var" "global.cameramoving"
/// @DnDArgument : "value" "1"
if(global.cameramoving == 1)
{
	

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 73F4C12E
	/// @DnDParent : 66279EEE
	/// @DnDArgument : "var" "global.targetx"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "self.x"
	if(global.targetx > self.x)
	{
		
	
			/// @DnDAction : YoYo Games.Movement.Jump_To_Point
			/// @DnDVersion : 1
			/// @DnDHash : 59647871
			/// @DnDParent : 73F4C12E
			/// @DnDArgument : "x" "global.cameraspeed"
			/// @DnDArgument : "x_relative" "1"
			
			{
				x += global.cameraspeed;
				
			}
	
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0CB92A80
			/// @DnDParent : 73F4C12E
			/// @DnDArgument : "var" "global.targetx"
			/// @DnDArgument : "op" "1"
			/// @DnDArgument : "value" "self.x"
			if(global.targetx < self.x)
			{
				
			
						/// @DnDAction : YoYo Games.Movement.Jump_To_Point
						/// @DnDVersion : 1
						/// @DnDHash : 4F7E92ED
						/// @DnDParent : 0CB92A80
						/// @DnDArgument : "x" "global.targetx"
						
						{
							x = global.targetx;
							
						}
			
			
			}
	
	
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1E2E9E8D
	/// @DnDParent : 66279EEE
	/// @DnDArgument : "var" "global.targety"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "self.y"
	if(global.targety > self.y)
	{
		
	
			/// @DnDAction : YoYo Games.Movement.Jump_To_Point
			/// @DnDVersion : 1
			/// @DnDHash : 10BC6387
			/// @DnDParent : 1E2E9E8D
			/// @DnDArgument : "y" "global.cameraspeed"
			/// @DnDArgument : "y_relative" "1"
			
			{
				
				y += global.cameraspeed;
			}
	
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0EEEF730
			/// @DnDParent : 1E2E9E8D
			/// @DnDArgument : "var" "global.targety"
			/// @DnDArgument : "op" "1"
			/// @DnDArgument : "value" "self.y"
			if(global.targety < self.y)
			{
				
			
						/// @DnDAction : YoYo Games.Movement.Jump_To_Point
						/// @DnDVersion : 1
						/// @DnDHash : 5D8537A4
						/// @DnDParent : 0EEEF730
						/// @DnDArgument : "y" "global.targety"
						
						{
							
							y = global.targety;
						}
			
			
			}
	
	
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6A3AE71D
	/// @DnDParent : 66279EEE
	/// @DnDArgument : "var" "global.targetx"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "self.x"
	if(global.targetx < self.x)
	{
		
	
			/// @DnDAction : YoYo Games.Movement.Jump_To_Point
			/// @DnDVersion : 1
			/// @DnDHash : 736BCD86
			/// @DnDParent : 6A3AE71D
			/// @DnDArgument : "x" "- global.cameraspeed"
			/// @DnDArgument : "x_relative" "1"
			
			{
				x += - global.cameraspeed;
				
			}
	
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2D859652
			/// @DnDParent : 6A3AE71D
			/// @DnDArgument : "var" "global.targetx"
			/// @DnDArgument : "op" "2"
			/// @DnDArgument : "value" "self.x"
			if(global.targetx > self.x)
			{
				
			
						/// @DnDAction : YoYo Games.Movement.Jump_To_Point
						/// @DnDVersion : 1
						/// @DnDHash : 38B7E76B
						/// @DnDParent : 2D859652
						/// @DnDArgument : "x" "global.targetx"
						
						{
							x = global.targetx;
							
						}
			
			
			}
	
	
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0BF46BFA
	/// @DnDParent : 66279EEE
	/// @DnDArgument : "var" "global.targety"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "self.y"
	if(global.targety < self.y)
	{
		
	
			/// @DnDAction : YoYo Games.Movement.Jump_To_Point
			/// @DnDVersion : 1
			/// @DnDHash : 16FB02D7
			/// @DnDParent : 0BF46BFA
			/// @DnDArgument : "y" "- global.cameraspeed"
			/// @DnDArgument : "y_relative" "1"
			
			{
				
				y += - global.cameraspeed;
			}
	
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 019F9084
			/// @DnDParent : 0BF46BFA
			/// @DnDArgument : "var" "global.targety"
			/// @DnDArgument : "op" "2"
			/// @DnDArgument : "value" "self.y"
			if(global.targety > self.y)
			{
				
			
						/// @DnDAction : YoYo Games.Movement.Jump_To_Point
						/// @DnDVersion : 1
						/// @DnDHash : 6E92229A
						/// @DnDParent : 019F9084
						/// @DnDArgument : "y" "global.targety"
						
						{
							
							y = global.targety;
						}
			
			
			}
	
	
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 77997A7F
	/// @DnDParent : 66279EEE
	/// @DnDArgument : "var" "self.x"
	/// @DnDArgument : "value" "global.targetx"
	if(self.x == global.targetx)
	{
		
	
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 000954A4
			/// @DnDParent : 77997A7F
			/// @DnDArgument : "var" "self.y"
			/// @DnDArgument : "value" "global.targety"
			if(self.y == global.targety)
			{
				
			
						/// @DnDAction : YoYo Games.Instances.Call_User_Event
						/// @DnDVersion : 1
						/// @DnDHash : 012ED589
						/// @DnDApplyTo : global.initiativecycle
						/// @DnDParent : 000954A4
						/// @DnDArgument : "event" "1"
						with(global.initiativecycle)
						{
							event_user(1);
						}
			
			
			}
	
	
	}


}

