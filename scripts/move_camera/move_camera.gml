/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 60FBFCE9
/// @DnDArgument : "var" "global.uppressed"
/// @DnDArgument : "value" "1"
if(global.uppressed == 1)
{
	

	/// @DnDAction : YoYo Games.Gamepad.Get_Gamepad_Axis_Value
	/// @DnDVersion : 1
	/// @DnDHash : 2B958491
	/// @DnDParent : 60FBFCE9
	/// @DnDArgument : "var" "axis"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "axis" "1"
	
	{
		var axis;
		if(gamepad_is_connected(0))
			axis = gamepad_axis_value(0, gp_axislv);
		else axis = 0;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 30743D8C
	/// @DnDParent : 60FBFCE9
	/// @DnDArgument : "var" "axis"
	/// @DnDArgument : "op" "3"
	/// @DnDArgument : "value" "-.2"
	if(axis <= -.2)
	{
		
	
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 0C5AE652
			/// @DnDParent : 30743D8C
			/// @DnDArgument : "var" "axis"
			/// @DnDArgument : "script" "make_absolute"
			/// @DnDArgument : "arg" "axis"
			/// @DnDSaveInfo : "script" "c404b9f3-c85f-41fc-8974-e47216d55bd8"
			axis = script_execute(make_absolute, axis);
	
			/// @DnDAction : YoYo Games.Movement.Jump_To_Point
			/// @DnDVersion : 1
			/// @DnDHash : 0E35A3BF
			/// @DnDParent : 30743D8C
			/// @DnDArgument : "y" "-(global.free_cursor_speed * ((axis * 1.2) + .2))"
			/// @DnDArgument : "y_relative" "1"
			
			{
				
				y += -(global.free_cursor_speed * ((axis * 1.2) + .2));
			}
	
	
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 42204A97
	/// @DnDParent : 60FBFCE9
	else
	{
		
	
			/// @DnDAction : YoYo Games.Movement.Jump_To_Point
			/// @DnDVersion : 1
			/// @DnDHash : 3C876F5E
			/// @DnDParent : 42204A97
			/// @DnDArgument : "y" "- global.free_cursor_speed"
			/// @DnDArgument : "y_relative" "1"
			
			{
				
				y += - global.free_cursor_speed;
			}
	
	
	}


}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 059A00DC
/// @DnDArgument : "var" "global.downpressed"
/// @DnDArgument : "value" "1"
if(global.downpressed == 1)
{
	

	/// @DnDAction : YoYo Games.Gamepad.Get_Gamepad_Axis_Value
	/// @DnDVersion : 1
	/// @DnDHash : 0B762852
	/// @DnDParent : 059A00DC
	/// @DnDArgument : "var" "axis"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "axis" "1"
	
	{
		var axis;
		if(gamepad_is_connected(0))
			axis = gamepad_axis_value(0, gp_axislv);
		else axis = 0;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0DC85981
	/// @DnDParent : 059A00DC
	/// @DnDArgument : "var" "axis"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" ".2"
	if(axis >= .2)
	{
		
	
			/// @DnDAction : YoYo Games.Movement.Jump_To_Point
			/// @DnDVersion : 1
			/// @DnDHash : 52AC92D2
			/// @DnDParent : 0DC85981
			/// @DnDArgument : "y" "(global.free_cursor_speed * ((axis * 1.2) + .2))"
			/// @DnDArgument : "y_relative" "1"
			
			{
				
				y += (global.free_cursor_speed * ((axis * 1.2) + .2));
			}
	
	
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 31453BDE
	/// @DnDParent : 059A00DC
	else
	{
		
	
			/// @DnDAction : YoYo Games.Movement.Jump_To_Point
			/// @DnDVersion : 1
			/// @DnDHash : 58D62098
			/// @DnDParent : 31453BDE
			/// @DnDArgument : "y" "global.free_cursor_speed"
			/// @DnDArgument : "y_relative" "1"
			
			{
				
				y += global.free_cursor_speed;
			}
	
	
	}


}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2A5FACD7
/// @DnDArgument : "var" "global.leftpressed"
/// @DnDArgument : "value" "1"
if(global.leftpressed == 1)
{
	

	/// @DnDAction : YoYo Games.Gamepad.Get_Gamepad_Axis_Value
	/// @DnDVersion : 1
	/// @DnDHash : 3A6BEF57
	/// @DnDParent : 2A5FACD7
	/// @DnDArgument : "var" "axis"
	/// @DnDArgument : "var_temp" "1"
	
	{
		var axis;
		if(gamepad_is_connected(0))
			axis = gamepad_axis_value(0, gp_axislh);
		else axis = 0;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6FF766E7
	/// @DnDParent : 2A5FACD7
	/// @DnDArgument : "var" "axis"
	/// @DnDArgument : "op" "3"
	/// @DnDArgument : "value" "-.2"
	if(axis <= -.2)
	{
		
	
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 2AD5FA11
			/// @DnDParent : 6FF766E7
			/// @DnDArgument : "var" "axis"
			/// @DnDArgument : "script" "make_absolute"
			/// @DnDArgument : "arg" "axis"
			/// @DnDSaveInfo : "script" "c404b9f3-c85f-41fc-8974-e47216d55bd8"
			axis = script_execute(make_absolute, axis);
	
			/// @DnDAction : YoYo Games.Movement.Jump_To_Point
			/// @DnDVersion : 1
			/// @DnDHash : 4373FF38
			/// @DnDParent : 6FF766E7
			/// @DnDArgument : "x" "-(global.free_cursor_speed * ((axis * 1.2) + .2))"
			/// @DnDArgument : "x_relative" "1"
			
			{
				x += -(global.free_cursor_speed * ((axis * 1.2) + .2));
				
			}
	
	
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 6B841D37
	/// @DnDParent : 2A5FACD7
	else
	{
		
	
			/// @DnDAction : YoYo Games.Movement.Jump_To_Point
			/// @DnDVersion : 1
			/// @DnDHash : 70681B08
			/// @DnDParent : 6B841D37
			/// @DnDArgument : "x" "-global.free_cursor_speed"
			/// @DnDArgument : "x_relative" "1"
			
			{
				x += -global.free_cursor_speed;
				
			}
	
	
	}


}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 021890F1
/// @DnDArgument : "var" "global.rightpressed"
/// @DnDArgument : "value" "1"
if(global.rightpressed == 1)
{
	

	/// @DnDAction : YoYo Games.Gamepad.Get_Gamepad_Axis_Value
	/// @DnDVersion : 1
	/// @DnDHash : 17B827D7
	/// @DnDParent : 021890F1
	/// @DnDArgument : "var" "axis"
	/// @DnDArgument : "var_temp" "1"
	
	{
		var axis;
		if(gamepad_is_connected(0))
			axis = gamepad_axis_value(0, gp_axislh);
		else axis = 0;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2C3E8CEC
	/// @DnDParent : 021890F1
	/// @DnDArgument : "var" "axis"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" ".2"
	if(axis >= .2)
	{
		
	
			/// @DnDAction : YoYo Games.Movement.Jump_To_Point
			/// @DnDVersion : 1
			/// @DnDHash : 561FFF7D
			/// @DnDParent : 2C3E8CEC
			/// @DnDArgument : "x" "(global.free_cursor_speed * ((axis * 1.2) + .2))"
			/// @DnDArgument : "x_relative" "1"
			
			{
				x += (global.free_cursor_speed * ((axis * 1.2) + .2));
				
			}
	
	
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 1A4FBD8B
	/// @DnDParent : 021890F1
	else
	{
		
	
			/// @DnDAction : YoYo Games.Movement.Jump_To_Point
			/// @DnDVersion : 1
			/// @DnDHash : 7AE7B411
			/// @DnDParent : 1A4FBD8B
			/// @DnDArgument : "x" "global.free_cursor_speed"
			/// @DnDArgument : "x_relative" "1"
			
			{
				x += global.free_cursor_speed;
				
			}
	
	
	}


}

