/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 01E8A45E
/// @DnDArgument : "var" "output"
output = 0;


/// @DnDAction : YoYo Games.Loops.Loop
/// @DnDVersion : 1
/// @DnDHash : 7758B8D3
while(true)
{
	

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 51E2E6CC
	/// @DnDParent : 7758B8D3
	/// @DnDArgument : "var" "argument0"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "global.world_tile_size"
	if(argument0 >= global.world_tile_size)
	{
		
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1DF5E8A1
			/// @DnDParent : 51E2E6CC
			/// @DnDArgument : "expr" "- global.world_tile_size"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "argument0"
			argument0 += - global.world_tile_size;
			
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 397F82F8
			/// @DnDParent : 51E2E6CC
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "output"
			output += 1;
			
	
	
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 212C4E19
	/// @DnDParent : 7758B8D3
	else
	{
		
	
			/// @DnDAction : YoYo Games.Common.Return
			/// @DnDVersion : 1
			/// @DnDHash : 2DD9A30B
			/// @DnDParent : 212C4E19
			/// @DnDArgument : "value" "output"
			return output;
	
	
	}


}

