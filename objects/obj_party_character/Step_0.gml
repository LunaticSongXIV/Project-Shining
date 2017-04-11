/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 78EE5136
/// @DnDArgument : "var" "myturn"
/// @DnDArgument : "value" "1"
if(myturn == 1)
{
	

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 5E745E63
	/// @DnDParent : 78EE5136
	/// @DnDArgument : "script" "move_poll_keyboard"
	/// @DnDSaveInfo : "script" "993f8805-532f-423d-8c8b-0fbd5e9d2c4f"
	script_execute(move_poll_keyboard);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 41F5BB79
	/// @DnDParent : 78EE5136
	/// @DnDArgument : "var" "global.movecomplete"
	/// @DnDArgument : "value" "1"
	if(global.movecomplete == 1)
	{
		
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4540DB9F
			/// @DnDParent : 41F5BB79
			/// @DnDArgument : "var" "myturn"
			myturn = 0;
			
	
			/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
			/// @DnDVersion : 1
			/// @DnDHash : 4DD19A9C
			/// @DnDParent : 41F5BB79
			/// @DnDArgument : "var" "global.charstat"
			/// @DnDArgument : "x" "myself"
			/// @DnDArgument : "y" "18"
			/// @DnDArgument : "value" "0"
			
			{
				ds_grid_set(global.charstat, myself, 18, 0);
			}
	
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 6835691E
			/// @DnDParent : 41F5BB79
			/// @DnDArgument : "script" "main_battlephase_1"
			/// @DnDSaveInfo : "script" "0fe46899-5d60-428b-a93d-27aff7d9aaa8"
			script_execute(main_battlephase_1);
	
	
	}


}

