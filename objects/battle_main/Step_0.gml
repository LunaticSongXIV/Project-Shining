/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3DEEEC69
/// @DnDArgument : "var" "global.battlephase"
/// @DnDArgument : "value" "1"
if(global.battlephase == 1)
{
	

	/// @DnDAction : YoYo Games.Loops.Loop
	/// @DnDVersion : 1
	/// @DnDHash : 2F6172EB
	/// @DnDParent : 3DEEEC69
	while(true)
	{
		
	
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 71622299
			/// @DnDParent : 2F6172EB
			/// @DnDArgument : "var" "ds_grid_get(global.charstat,global.characterid,18)"
			/// @DnDArgument : "op" "4"
			/// @DnDArgument : "value" "1000"
			if(ds_grid_get(global.charstat,global.characterid,18) >= 1000)
			{
				
			
						/// @DnDAction : YoYo Games.Loops.Break
						/// @DnDVersion : 1
						/// @DnDHash : 7D3354E9
						/// @DnDParent : 71622299
						break;
			
			
			}
	
			/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
			/// @DnDVersion : 1
			/// @DnDHash : 1426C568
			/// @DnDParent : 2F6172EB
			/// @DnDArgument : "var" "ds_grid_get(global.charstat,characterid,18)"
			/// @DnDArgument : "x" "global.characterid"
			/// @DnDArgument : "y" "18"
			/// @DnDArgument : "value" "ds_grid_get(global.charstat,characterid,18) + ds_grid_get(global.charstat,global.characterid,17)"
			
			{
				ds_grid_set(ds_grid_get(global.charstat,characterid,18), global.characterid, 18, ds_grid_get(global.charstat,characterid,18) + ds_grid_get(global.charstat,global.characterid,17));
			}
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4C104AB9
			/// @DnDParent : 2F6172EB
			/// @DnDArgument : "var" "global.characterid"
			global.characterid = 0;
			
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5DC44B72
			/// @DnDParent : 2F6172EB
			/// @DnDArgument : "expr" "characterid + 1"
			/// @DnDArgument : "var" "global.characterid"
			global.characterid = characterid + 1;
			
	
	
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3140B3E0
	/// @DnDParent : 3DEEEC69
	/// @DnDArgument : "var" "global.characterid"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "20"
	if(global.characterid >= 20)
	{
		
	
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 38E63B4C
			/// @DnDParent : 3140B3E0
			/// @DnDArgument : "var" "global.characterid"
			/// @DnDArgument : "op" "4"
			/// @DnDArgument : "value" "100"
			if(global.characterid >= 100)
			{
				
			
						/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
						/// @DnDVersion : 1
						/// @DnDHash : 1304F8B9
						/// @DnDParent : 38E63B4C
						/// @DnDArgument : "msg" ""You done it wrong, characterid out of range (too high) battle_main""
						show_debug_message(string("You done it wrong, characterid out of range (too high) battle_main"));
			
			
			}
	
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 63D09B9B
			/// @DnDParent : 3140B3E0
			/// @DnDArgument : "script" "ai_turn"
			/// @DnDSaveInfo : "script" "01130964-3981-4870-a3c9-d86c12f8bbc2"
			script_execute(ai_turn);
	
	
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 41BFE8DF
	/// @DnDParent : 3DEEEC69
	else
	{
		
	
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 33D06D6A
			/// @DnDParent : 41BFE8DF
			/// @DnDArgument : "var" "global.characterid"
			/// @DnDArgument : "op" "1"
			if(global.characterid < 0)
			{
				
			
						/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
						/// @DnDVersion : 1
						/// @DnDHash : 64A543CC
						/// @DnDParent : 33D06D6A
						/// @DnDArgument : "msg" ""You done it wrong, characterid out of range (too low) battle_main""
						show_debug_message(string("You done it wrong, characterid out of range (too low) battle_main"));
			
			
			}
	
	
	}

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 0D114ADD
	/// @DnDParent : 3DEEEC69
	/// @DnDArgument : "script" "camera_control"
	/// @DnDSaveInfo : "script" "18ce3bbc-92d6-4c01-9550-1c366e73edd0"
	script_execute(camera_control);

	/// @DnDAction : YoYo Games.Instances.Call_User_Event
	/// @DnDVersion : 1
	/// @DnDHash : 42C7AB43
	/// @DnDApplyTo : 96ddc5ff-8ff3-45c8-a6b1-b2696088318c
	/// @DnDParent : 3DEEEC69
	with(obj_party_character)
	{
		event_user(0);
	}


}

