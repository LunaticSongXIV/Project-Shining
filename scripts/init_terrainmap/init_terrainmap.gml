/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 7BE5DA4F
/// @DnDArgument : "var" "passx"
/// @DnDArgument : "value" "0"
var passx = 0;


/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 68E9EA2B
/// @DnDArgument : "var" "passy"
/// @DnDArgument : "value" "0"
var passy = 0;


/// @DnDAction : YoYo Games.Loops.Loop
/// @DnDVersion : 1
/// @DnDHash : 79EB85A1
while(true)
{
	

	/// @DnDAction : YoYo Games.Loops.Loop
	/// @DnDVersion : 1
	/// @DnDHash : 6F78D77A
	/// @DnDParent : 79EB85A1
	while(true)
	{
		
	
			/// @DnDAction : YoYo Games.Tiles.Tile_Get_In_Cell
			/// @DnDVersion : 1
			/// @DnDHash : 2B43A91E
			/// @DnDParent : 6F78D77A
			/// @DnDArgument : "var" "passid"
			/// @DnDArgument : "layername" ""Passable""
			/// @DnDArgument : "x" "passx"
			/// @DnDArgument : "y" "passy"
			
			{
				var l2B43A91E_0 = passx;
				var l2B43A91E_1 = passy;
				var l2B43A91E_2 = layer_tilemap_get_id("Passable");
				passid = undefined;
				if(l2B43A91E_2 > -1) {
					var l2B43A91E_3 = tilemap_get(l2B43A91E_2, l2B43A91E_0, l2B43A91E_1);
					if(l2B43A91E_3 > -1) passid = tile_get_index(l2B43A91E_3);
				}
			}
	
			/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
			/// @DnDVersion : 1
			/// @DnDHash : 203264AF
			/// @DnDParent : 6F78D77A
			/// @DnDArgument : "var" "global.terrainmap"
			/// @DnDArgument : "x" "passx"
			/// @DnDArgument : "y" "passy"
			/// @DnDArgument : "value" "passid - 1"
			
			{
				ds_grid_set(global.terrainmap, passx, passy, passid - 1);
			}
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 43AEF837
			/// @DnDParent : 6F78D77A
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "passx"
			passx += 1;
			
	
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 67138FFE
			/// @DnDParent : 6F78D77A
			/// @DnDArgument : "var" "passx"
			/// @DnDArgument : "op" "4"
			/// @DnDArgument : "value" "ds_grid_width(global.terrainmap)"
			if(passx >= ds_grid_width(global.terrainmap))
			{
				
			
						/// @DnDAction : YoYo Games.Loops.Break
						/// @DnDVersion : 1
						/// @DnDHash : 0B1149F6
						/// @DnDParent : 67138FFE
						break;
			
			
			}
	
	
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3D7EB653
	/// @DnDParent : 79EB85A1
	/// @DnDArgument : "var" "passx"
	passx = 0;
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 72B03333
	/// @DnDParent : 79EB85A1
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "passy"
	passy += 1;
	

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1FDD4D9C
	/// @DnDParent : 79EB85A1
	/// @DnDArgument : "var" "passy"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "ds_grid_height(global.terrainmap)"
	if(passy >= ds_grid_height(global.terrainmap))
	{
		
	
			/// @DnDAction : YoYo Games.Loops.Break
			/// @DnDVersion : 1
			/// @DnDHash : 4CF9DC4A
			/// @DnDParent : 1FDD4D9C
			break;
	
	
	}


}

