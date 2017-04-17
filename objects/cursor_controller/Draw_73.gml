/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 1F7BFEF5
/// @DnDArgument : "expr" "global.battle_state == 3 || global.battle_state == 6"
if(global.battle_state == 3 || global.battle_state == 6)
{
	

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 0C6AC56C
	/// @DnDParent : 1F7BFEF5
	/// @DnDArgument : "var" "xgrid"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "script" "find_grid_axis_value"
	/// @DnDArgument : "arg" "x"
	/// @DnDSaveInfo : "script" "cbd93880-9129-46c9-b205-31c6ee9d1afe"
	var xgrid = script_execute(find_grid_axis_value, x);

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 736477A2
	/// @DnDParent : 1F7BFEF5
	/// @DnDArgument : "var" "ygrid"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "script" "find_grid_axis_value"
	/// @DnDArgument : "arg" "y"
	/// @DnDSaveInfo : "script" "cbd93880-9129-46c9-b205-31c6ee9d1afe"
	var ygrid = script_execute(find_grid_axis_value, y);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 382B3483
	/// @DnDParent : 1F7BFEF5
	/// @DnDArgument : "var" "ds_grid_get(global.valid_moves, xgrid, ygrid)"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "1"
	if(ds_grid_get(global.valid_moves, xgrid, ygrid) >= 1)
	{
		
	
			/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 2F441AFF
			/// @DnDParent : 382B3483
			/// @DnDArgument : "x" "xgrid * global.world_tile_size"
			/// @DnDArgument : "y" "ygrid * global.world_tile_size"
			/// @DnDArgument : "sprite" "ui_grid_selection"
			/// @DnDArgument : "image" "image_index"
			/// @DnDSaveInfo : "sprite" "da7917f8-dd5f-4cf1-8d2d-782508431927"
			
			var l2F441AFF_0 = xgrid * global.world_tile_size;
			var l2F441AFF_1 = ygrid * global.world_tile_size;
			draw_sprite(ui_grid_selection, image_index, l2F441AFF_0, l2F441AFF_1);
			
	
	
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 376110C2
	/// @DnDParent : 1F7BFEF5
	else
	{
		
	
			/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 62D433DC
			/// @DnDParent : 376110C2
			/// @DnDArgument : "x" "xgrid * global.world_tile_size"
			/// @DnDArgument : "y" "ygrid * global.world_tile_size"
			/// @DnDArgument : "sprite" "ui_grid_invalid"
			/// @DnDArgument : "image" "image_index"
			/// @DnDSaveInfo : "sprite" "cbe0d989-0d57-489f-9ec3-dfc6499c7396"
			
			var l62D433DC_0 = xgrid * global.world_tile_size;
			var l62D433DC_1 = ygrid * global.world_tile_size;
			draw_sprite(ui_grid_invalid, image_index, l62D433DC_0, l62D433DC_1);
			
	
	
	}


}

