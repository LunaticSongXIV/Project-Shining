/// @DnDAction : YoYo Games.Data Structures.Create_Stack
/// @DnDVersion : 1
/// @DnDHash : 534E16A0
/// @DnDArgument : "var" "global.backtrace_moves"
global.backtrace_moves = ds_stack_create();


/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 31552DC0
/// @DnDArgument : "expr" "argument0"
/// @DnDArgument : "var" "backtracex"
backtracex = argument0;


/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 12C9A9A4
/// @DnDArgument : "expr" "argument1"
/// @DnDArgument : "var" "backtracey"
backtracey = argument1;


/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 678CAB9E
/// @DnDArgument : "expr" "ds_grid_get(global.valid_moves,backtracex,backtracey)"
/// @DnDArgument : "var" "backtrace_movestep"
backtrace_movestep = ds_grid_get(global.valid_moves,backtracex,backtracey);


/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 38961382
/// @DnDArgument : "cond" "i < 40"
for(i = 0; i < 40; i += 1) {
	

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3782BBE7
	/// @DnDParent : 38961382
	/// @DnDArgument : "var" "ds_grid_get(global.valid_moves,backtracex - 1, backtracey)"
	/// @DnDArgument : "value" "backtrace_movestep + 1"
	if(ds_grid_get(global.valid_moves,backtracex - 1, backtracey) == backtrace_movestep + 1)
	{
		
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7CDFF479
			/// @DnDParent : 3782BBE7
			/// @DnDArgument : "expr" "-1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "backtracex"
			backtracex += -1;
			
	
			/// @DnDAction : YoYo Games.Data Structures.Stack_Push
			/// @DnDVersion : 1
			/// @DnDHash : 4C95243E
			/// @DnDParent : 3782BBE7
			/// @DnDArgument : "var" "global.backtrace_moves"
			/// @DnDArgument : "value" "1"
			
				ds_stack_push(global.backtrace_moves, 1);
	
	
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1F9AFAF2
	/// @DnDParent : 38961382
	/// @DnDArgument : "var" "ds_grid_get(global.valid_moves,backtracex + 1, backtracey)"
	/// @DnDArgument : "value" "backtrace_movestep + 1"
	if(ds_grid_get(global.valid_moves,backtracex + 1, backtracey) == backtrace_movestep + 1)
	{
		
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4E31434A
			/// @DnDParent : 1F9AFAF2
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "backtracex"
			backtracex += 1;
			
	
			/// @DnDAction : YoYo Games.Data Structures.Stack_Push
			/// @DnDVersion : 1
			/// @DnDHash : 30376FF8
			/// @DnDParent : 1F9AFAF2
			/// @DnDArgument : "var" "global.backtrace_moves"
			/// @DnDArgument : "value" "3"
			
				ds_stack_push(global.backtrace_moves, 3);
	
	
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 20328CB3
	/// @DnDParent : 38961382
	/// @DnDArgument : "var" "ds_grid_get(global.valid_moves,backtracex, backtracey + 1)"
	/// @DnDArgument : "value" "backtrace_movestep + 1"
	if(ds_grid_get(global.valid_moves,backtracex, backtracey + 1) == backtrace_movestep + 1)
	{
		
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 49958920
			/// @DnDParent : 20328CB3
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "backtracey"
			backtracey += 1;
			
	
			/// @DnDAction : YoYo Games.Data Structures.Stack_Push
			/// @DnDVersion : 1
			/// @DnDHash : 29B0B43A
			/// @DnDParent : 20328CB3
			/// @DnDArgument : "var" "global.backtrace_moves"
			
				ds_stack_push(global.backtrace_moves, 0);
	
	
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 547291FF
	/// @DnDParent : 38961382
	/// @DnDArgument : "var" "ds_grid_get(global.valid_moves,backtracex, backtracey - 1)"
	/// @DnDArgument : "value" "backtrace_movestep + 1"
	if(ds_grid_get(global.valid_moves,backtracex, backtracey - 1) == backtrace_movestep + 1)
	{
		
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6619BBFC
			/// @DnDParent : 547291FF
			/// @DnDArgument : "expr" "-1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "backtracey"
			backtracey += -1;
			
	
			/// @DnDAction : YoYo Games.Data Structures.Stack_Push
			/// @DnDVersion : 1
			/// @DnDHash : 60D54D89
			/// @DnDParent : 547291FF
			/// @DnDArgument : "var" "global.backtrace_moves"
			/// @DnDArgument : "value" "2"
			
				ds_stack_push(global.backtrace_moves, 2);
	
	
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 75428E46
	/// @DnDParent : 38961382
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "backtrace_movestep"
	backtrace_movestep += 1;
	

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 7D69E3A0
	/// @DnDParent : 38961382
	/// @DnDArgument : "msg" ""Backtrace Stack Loop""
	show_debug_message(string("Backtrace Stack Loop"));


}

