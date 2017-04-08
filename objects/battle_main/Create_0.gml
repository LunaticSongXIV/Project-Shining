/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 308429E6
/// @DnDArgument : "var" "battleinprogress"
global.battleinprogress = 0;


/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5E339744
/// @DnDArgument : "expr" "global.partysize + 1"
/// @DnDArgument : "var" "fighters"
fighters = global.partysize + 1;


/// @DnDAction : YoYo Games.Data Structures.Create_Grid
/// @DnDVersion : 1
/// @DnDHash : 082C0EBA
/// @DnDArgument : "var" "battlestatgrid"
/// @DnDArgument : "width" "11"
/// @DnDArgument : "height" "100"
battlestatgrid = ds_grid_create(11, 100);


/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 30ACC9D5
/// @DnDInput : 2
/// @DnDArgument : "var" "partytemp"
/// @DnDArgument : "value" "0"
/// @DnDArgument : "var_1" "partyattrib"
/// @DnDArgument : "value_1" "0"
var partytemp = 0;
var partyattrib = 0;


/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 78DBA1E7
/// @DnDArgument : "cond" "i < global.partysize"
for(i = 0; i < global.partysize; i += 1) {
	

	/// @DnDAction : YoYo Games.Loops.For_Loop
	/// @DnDVersion : 1
	/// @DnDHash : 38804A12
	/// @DnDParent : 78DBA1E7
	/// @DnDArgument : "cond" "i < 11"
	for(i = 0; i < 11; i += 1) {
		
	
			/// @DnDAction : YoYo Games.Data Structures.Grid_Get_Value
			/// @DnDVersion : 1
			/// @DnDHash : 7FDC68FD
			/// @DnDParent : 38804A12
			/// @DnDArgument : "assignee" "statinsert"
			/// @DnDArgument : "var" "global.partystat"
			/// @DnDArgument : "x" "partytemp"
			/// @DnDArgument : "y" "partyattrib"
			
			{
				statinsert = ds_grid_get(global.partystat, partytemp, partyattrib);
			}
	
			/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
			/// @DnDVersion : 1
			/// @DnDHash : 7F8D6F3D
			/// @DnDParent : 38804A12
			/// @DnDArgument : "var" "battlestatgrid"
			/// @DnDArgument : "x" "partytemp"
			/// @DnDArgument : "y" "partyattrib"
			/// @DnDArgument : "value" "statinsert"
			
			{
				ds_grid_set(battlestatgrid, partytemp, partyattrib, statinsert);
			}
	
			/// @DnDAction : YoYo Games.Common.Temp_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6FAB6C1D
			/// @DnDParent : 38804A12
			/// @DnDArgument : "var" "partyattrib"
			/// @DnDArgument : "value" "partyattrib + 1"
			var partyattrib = partyattrib + 1;
			
	
	
	}

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0C28B51F
	/// @DnDParent : 78DBA1E7
	/// @DnDArgument : "var" "partytemp"
	/// @DnDArgument : "value" "partytemp + 1"
	var partytemp = partytemp + 1;
	


}

