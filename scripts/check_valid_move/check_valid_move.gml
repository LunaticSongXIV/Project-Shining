/// @DnDAction : YoYo Games.Data Structures.Grid_Get_Value
/// @DnDVersion : 1
/// @DnDHash : 3F5554DC
/// @DnDArgument : "assignee" "selfgridcheck"
/// @DnDArgument : "var" "global.battlemap"
/// @DnDArgument : "x" "selfgridx"
/// @DnDArgument : "y" "selfgridy"

{
	selfgridcheck = ds_grid_get(global.battlemap, selfgridx, selfgridy);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2688816E
/// @DnDArgument : "var" "selfgridcheck"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "myself"
if(!(selfgridcheck == myself))
{
	

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 1BC67CA2
	/// @DnDParent : 2688816E
	/// @DnDArgument : "msg" ""Position Verification Failed""
	show_debug_message(string("Position Verification Failed"));

	/// @DnDAction : YoYo Games.Game.End_Game
	/// @DnDVersion : 1
	/// @DnDHash : 7026C193
	/// @DnDParent : 2688816E
	game_end();


}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6BBC6A26
/// @DnDArgument : "var" "moving"
if(moving == 0)
{
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1EBFB6E8
	/// @DnDParent : 6BBC6A26
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "nextgridy"
	nextgridy += -1;
	

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 655B0BD9
	/// @DnDParent : 6BBC6A26
	/// @DnDArgument : "var" "nextgridy"
	/// @DnDArgument : "op" "1"
	if(nextgridy < 0)
	{
		
	
			/// @DnDAction : YoYo Games.Common.Return
			/// @DnDVersion : 1
			/// @DnDHash : 3F758BBC
			/// @DnDParent : 655B0BD9
			/// @DnDArgument : "value" "0"
			return 0;
	
	
	}

	/// @DnDAction : YoYo Games.Data Structures.Grid_Get_Value
	/// @DnDVersion : 1
	/// @DnDHash : 3EEC6D79
	/// @DnDParent : 6BBC6A26
	/// @DnDArgument : "assignee" "nextgridcell"
	/// @DnDArgument : "var" "global.valid_moves"
	/// @DnDArgument : "x" "nextgridx"
	/// @DnDArgument : "y" "nextgridy"
	
	{
		nextgridcell = ds_grid_get(global.valid_moves, nextgridx, nextgridy);
	}

	/// @DnDAction : YoYo Games.Common.Return
	/// @DnDVersion : 1
	/// @DnDHash : 29E1226B
	/// @DnDParent : 6BBC6A26
	/// @DnDArgument : "value" "nextgridcell"
	return nextgridcell;


}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 59C361B9
/// @DnDArgument : "var" "moving"
/// @DnDArgument : "value" "1"
if(moving == 1)
{
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3D6955E2
	/// @DnDParent : 59C361B9
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "nextgridx"
	nextgridx += 1;
	

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4E55862B
	/// @DnDParent : 59C361B9
	/// @DnDArgument : "var" "nextgridx"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "ds_grid_width(global.battlemap)"
	if(nextgridx >= ds_grid_width(global.battlemap))
	{
		
	
			/// @DnDAction : YoYo Games.Common.Return
			/// @DnDVersion : 1
			/// @DnDHash : 470EF22B
			/// @DnDParent : 4E55862B
			/// @DnDArgument : "value" "0"
			return 0;
	
	
	}

	/// @DnDAction : YoYo Games.Data Structures.Grid_Get_Value
	/// @DnDVersion : 1
	/// @DnDHash : 4169DB2F
	/// @DnDParent : 59C361B9
	/// @DnDArgument : "assignee" "nextgridcell"
	/// @DnDArgument : "assignee_temp" "1"
	/// @DnDArgument : "var" "global.valid_moves"
	/// @DnDArgument : "x" "nextgridx"
	/// @DnDArgument : "y" "nextgridy"
	
	{
		var nextgridcell = ds_grid_get(global.valid_moves, nextgridx, nextgridy);
	}

	/// @DnDAction : YoYo Games.Common.Return
	/// @DnDVersion : 1
	/// @DnDHash : 4EDCF1D8
	/// @DnDParent : 59C361B9
	/// @DnDArgument : "value" "nextgridcell"
	return nextgridcell;


}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 10966E31
/// @DnDArgument : "var" "moving"
/// @DnDArgument : "value" "2"
if(moving == 2)
{
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 21D59CE5
	/// @DnDParent : 10966E31
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "nextgridy"
	nextgridy += 1;
	

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 60557762
	/// @DnDParent : 10966E31
	/// @DnDArgument : "var" "nextgridy"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "ds_grid_height(global.battlemap)"
	if(nextgridy >= ds_grid_height(global.battlemap))
	{
		
	
			/// @DnDAction : YoYo Games.Common.Return
			/// @DnDVersion : 1
			/// @DnDHash : 4F5EA034
			/// @DnDParent : 60557762
			/// @DnDArgument : "value" "0"
			return 0;
	
	
	}

	/// @DnDAction : YoYo Games.Data Structures.Grid_Get_Value
	/// @DnDVersion : 1
	/// @DnDHash : 6983A931
	/// @DnDParent : 10966E31
	/// @DnDArgument : "assignee" "nextgridcell"
	/// @DnDArgument : "var" "global.valid_moves"
	/// @DnDArgument : "x" "nextgridx"
	/// @DnDArgument : "y" "nextgridy"
	
	{
		nextgridcell = ds_grid_get(global.valid_moves, nextgridx, nextgridy);
	}

	/// @DnDAction : YoYo Games.Common.Return
	/// @DnDVersion : 1
	/// @DnDHash : 776B841D
	/// @DnDParent : 10966E31
	/// @DnDArgument : "value" "nextgridcell"
	return nextgridcell;


}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2FF7316B
/// @DnDArgument : "var" "moving"
/// @DnDArgument : "value" "3"
if(moving == 3)
{
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 51B4A98C
	/// @DnDParent : 2FF7316B
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "nextgridx"
	nextgridx += -1;
	

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6C2E7AE4
	/// @DnDParent : 2FF7316B
	/// @DnDArgument : "var" "nextgridx"
	/// @DnDArgument : "op" "1"
	if(nextgridx < 0)
	{
		
	
			/// @DnDAction : YoYo Games.Common.Return
			/// @DnDVersion : 1
			/// @DnDHash : 4E431205
			/// @DnDParent : 6C2E7AE4
			/// @DnDArgument : "value" "0"
			return 0;
	
	
	}

	/// @DnDAction : YoYo Games.Data Structures.Grid_Get_Value
	/// @DnDVersion : 1
	/// @DnDHash : 1224364F
	/// @DnDParent : 2FF7316B
	/// @DnDArgument : "assignee" "nextgridcell"
	/// @DnDArgument : "var" "global.valid_moves"
	/// @DnDArgument : "x" "nextgridx"
	/// @DnDArgument : "y" "nextgridy"
	
	{
		nextgridcell = ds_grid_get(global.valid_moves, nextgridx, nextgridy);
	}

	/// @DnDAction : YoYo Games.Common.Return
	/// @DnDVersion : 1
	/// @DnDHash : 704E6D6B
	/// @DnDParent : 2FF7316B
	/// @DnDArgument : "value" "nextgridcell"
	return nextgridcell;


}

