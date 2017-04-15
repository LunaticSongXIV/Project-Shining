/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 20CD8382
/// @DnDArgument : "var" "global.cam_zoom_x"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "self.x"
if(global.cam_zoom_x > self.x)
{
	

	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 15EBD024
	/// @DnDParent : 20CD8382
	/// @DnDArgument : "x" "global.cameraspeed"
	/// @DnDArgument : "x_relative" "1"
	
	{
		x += global.cameraspeed;
		
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5CE2D989
	/// @DnDParent : 20CD8382
	/// @DnDArgument : "var" "global.cam_zoom_x"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "self.x"
	if(global.cam_zoom_x < self.x)
	{
		
	
			/// @DnDAction : YoYo Games.Movement.Jump_To_Point
			/// @DnDVersion : 1
			/// @DnDHash : 0C6D1D25
			/// @DnDParent : 5CE2D989
			/// @DnDArgument : "x" "global.cam_zoom_x"
			
			{
				x = global.cam_zoom_x;
				
			}
	
	
	}


}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0EF0FB98
/// @DnDArgument : "var" "global.cam_zoom_y"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "self.y"
if(global.cam_zoom_y > self.y)
{
	

	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 6A8753A4
	/// @DnDParent : 0EF0FB98
	/// @DnDArgument : "y" "global.cameraspeed"
	/// @DnDArgument : "y_relative" "1"
	
	{
		
		y += global.cameraspeed;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 318133E3
	/// @DnDParent : 0EF0FB98
	/// @DnDArgument : "var" "global.cam_zoom_y"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "self.y"
	if(global.cam_zoom_y < self.y)
	{
		
	
			/// @DnDAction : YoYo Games.Movement.Jump_To_Point
			/// @DnDVersion : 1
			/// @DnDHash : 06E51295
			/// @DnDParent : 318133E3
			/// @DnDArgument : "y" "global.cam_zoom_y"
			
			{
				
				y = global.cam_zoom_y;
			}
	
	
	}


}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 519585FF
/// @DnDArgument : "var" "global.cam_zoom_x"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "self.x"
if(global.cam_zoom_x < self.x)
{
	

	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 4A5AF032
	/// @DnDParent : 519585FF
	/// @DnDArgument : "x" "- global.cameraspeed"
	/// @DnDArgument : "x_relative" "1"
	
	{
		x += - global.cameraspeed;
		
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 55D0307D
	/// @DnDParent : 519585FF
	/// @DnDArgument : "var" "global.cam_zoom_x"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "self.x"
	if(global.cam_zoom_x > self.x)
	{
		
	
			/// @DnDAction : YoYo Games.Movement.Jump_To_Point
			/// @DnDVersion : 1
			/// @DnDHash : 0DD44033
			/// @DnDParent : 55D0307D
			/// @DnDArgument : "x" "global.cam_zoom_x"
			
			{
				x = global.cam_zoom_x;
				
			}
	
	
	}


}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 49359FBD
/// @DnDArgument : "var" "global.cam_zoom_y"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "self.y"
if(global.cam_zoom_y < self.y)
{
	

	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 2E90ED31
	/// @DnDParent : 49359FBD
	/// @DnDArgument : "y" "- global.cameraspeed"
	/// @DnDArgument : "y_relative" "1"
	
	{
		
		y += - global.cameraspeed;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 075D8108
	/// @DnDParent : 49359FBD
	/// @DnDArgument : "var" "global.cam_zoom_y"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "self.y"
	if(global.cam_zoom_y > self.y)
	{
		
	
			/// @DnDAction : YoYo Games.Movement.Jump_To_Point
			/// @DnDVersion : 1
			/// @DnDHash : 730277A6
			/// @DnDParent : 075D8108
			/// @DnDArgument : "y" "global.cam_zoom_y"
			
			{
				
				y = global.cam_zoom_y;
			}
	
	
	}


}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6D4853D6
/// @DnDArgument : "var" "self.x"
/// @DnDArgument : "value" "global.cam_zoom_x"
if(self.x == global.cam_zoom_x)
{
	

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 344BC87D
	/// @DnDParent : 6D4853D6
	/// @DnDArgument : "var" "self.y"
	/// @DnDArgument : "value" "global.cam_zoom_y"
	if(self.y == global.cam_zoom_y)
	{
		
	
			/// @DnDAction : YoYo Games.Common.Return
			/// @DnDVersion : 1
			/// @DnDHash : 4315148C
			/// @DnDParent : 344BC87D
			/// @DnDArgument : "value" "0"
			return 0;
	
	
	}


}

/// @DnDAction : YoYo Games.Common.Return
/// @DnDVersion : 1
/// @DnDHash : 09970E08
/// @DnDArgument : "value" "1"
return 1;

