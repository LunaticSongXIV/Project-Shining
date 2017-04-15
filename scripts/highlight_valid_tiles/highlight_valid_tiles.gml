/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
/// @DnDVersion : 1
/// @DnDHash : 738E2D82
/// @DnDArgument : "speed" ".1"

{
	image_speed = .1;
}

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 648BC05B
/// @DnDArgument : "var" "findvalidx"
/// @DnDArgument : "value" "0"
var findvalidx = 0;


/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 547AA3AE
/// @DnDArgument : "var" "findvalidy"
/// @DnDArgument : "value" "0"
var findvalidy = 0;


/// @DnDAction : YoYo Games.Loops.Loop
/// @DnDVersion : 1
/// @DnDHash : 100D941B
while(true)
{
	

	/// @DnDAction : YoYo Games.Loops.Loop
	/// @DnDVersion : 1
	/// @DnDHash : 3341DC20
	/// @DnDParent : 100D941B
	while(true)
	{
		
	
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3C187AAC
			/// @DnDParent : 3341DC20
			/// @DnDArgument : "var" "ds_grid_get(global.valid_moves, findvalidx, findvalidy)"
			/// @DnDArgument : "not" "1"
			if(!(ds_grid_get(global.valid_moves, findvalidx, findvalidy) == 0))
			{
				
			
						/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
						/// @DnDVersion : 1
						/// @DnDHash : 6D947922
						/// @DnDParent : 3C187AAC
						/// @DnDArgument : "x" "findvalidx * 128"
						/// @DnDArgument : "y" "findvalidy * 128"
						/// @DnDArgument : "sprite" "ui_grid_highlight"
						/// @DnDArgument : "image" "image_index"
						/// @DnDSaveInfo : "sprite" "5cb64f4f-13e2-4c8d-8447-349e4d97d009"
						
						var l6D947922_0 = findvalidx * 128;
						var l6D947922_1 = findvalidy * 128;
						draw_sprite(ui_grid_highlight, image_index, l6D947922_0, l6D947922_1);
						
			
			
			}
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 65B91887
			/// @DnDParent : 3341DC20
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "findvalidx"
			findvalidx += 1;
			
	
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 616EA78D
			/// @DnDParent : 3341DC20
			/// @DnDArgument : "var" "findvalidx"
			/// @DnDArgument : "op" "4"
			/// @DnDArgument : "value" "ds_grid_width(global.valid_moves)"
			if(findvalidx >= ds_grid_width(global.valid_moves))
			{
				
			
						/// @DnDAction : YoYo Games.Loops.Break
						/// @DnDVersion : 1
						/// @DnDHash : 2E69F940
						/// @DnDParent : 616EA78D
						break;
			
			
			}
	
	
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 29569AC0
	/// @DnDParent : 100D941B
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "findvalidy"
	findvalidy += 1;
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 34166EBE
	/// @DnDParent : 100D941B
	/// @DnDArgument : "var" "findvalidx"
	findvalidx = 0;
	

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 71898752
	/// @DnDParent : 100D941B
	/// @DnDArgument : "var" "findvalidy"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "ds_grid_height(global.valid_moves)"
	if(findvalidy >= ds_grid_height(global.valid_moves))
	{
		
	
			/// @DnDAction : YoYo Games.Loops.Break
			/// @DnDVersion : 1
			/// @DnDHash : 2ECFF379
			/// @DnDParent : 71898752
			break;
	
	
	}


}

