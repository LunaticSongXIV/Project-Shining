/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 20D76053
/// @DnDArgument : "script" "input_handler"
/// @DnDSaveInfo : "script" "09a994d3-1b32-48a6-8995-e0e19cacc9c3"
script_execute(input_handler);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 481E0B5D
/// @DnDArgument : "var" "global.mouseenabled"
if(global.mouseenabled == 0)
{
	

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 511B3D04
	/// @DnDInput : 4
	/// @DnDParent : 481E0B5D
	/// @DnDArgument : "var" "movemousesum"
	/// @DnDArgument : "script" "find_distance"
	/// @DnDArgument : "arg" "last_mouse_x"
	/// @DnDArgument : "arg_1" "last_mouse_y"
	/// @DnDArgument : "arg_2" "window_mouse_get_x()"
	/// @DnDArgument : "arg_3" "window_mouse_get_y()"
	/// @DnDSaveInfo : "script" "32890da9-2f05-4643-8665-6b6fff94fde2"
	movemousesum = script_execute(find_distance, last_mouse_x, last_mouse_y, window_mouse_get_x(), window_mouse_get_y());

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0F204AE7
	/// @DnDParent : 481E0B5D
	/// @DnDArgument : "var" "movemousesum"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "5"
	if(movemousesum >= 5)
	{
		
	
			/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
			/// @DnDVersion : 1
			/// @DnDHash : 72EF460A
			/// @DnDParent : 0F204AE7
			/// @DnDArgument : "msg" ""Enabling Mouse""
			show_debug_message(string("Enabling Mouse"));
	
			/// @DnDAction : YoYo Games.Common.Set_Global
			/// @DnDVersion : 1
			/// @DnDHash : 53F0276F
			/// @DnDParent : 0F204AE7
			/// @DnDArgument : "value" "1"
			/// @DnDArgument : "var" "mouseenabled"
			global.mouseenabled = 1;
			
	
	
	}


}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 41D0CE7E
/// @DnDArgument : "expr" "window_mouse_get_x()"
/// @DnDArgument : "var" "last_mouse_x"
last_mouse_x = window_mouse_get_x();


/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 22855C21
/// @DnDArgument : "expr" "window_mouse_get_y()"
/// @DnDArgument : "var" "last_mouse_y"
last_mouse_y = window_mouse_get_y();


