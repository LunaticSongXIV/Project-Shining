/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 44AB5D77
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "global.battlephase"
global.battlephase = 1;


/// @DnDAction : YoYo Games.Loops.Loop
/// @DnDVersion : 1
/// @DnDHash : 46C71B09
while(true)
{
	

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1880056E
	/// @DnDParent : 46C71B09
	/// @DnDArgument : "var" "global.initiativecycle"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "100"
	if(global.initiativecycle >= 100)
	{
		
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 39138113
			/// @DnDParent : 1880056E
			/// @DnDArgument : "var" "global.initiativecycle"
			global.initiativecycle = 0;
			
	
	
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 456ACAFA
	/// @DnDParent : 46C71B09
	/// @DnDArgument : "var" "ds_grid_get(global.charstat,global.initiativecycle,18)"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "1000"
	if(ds_grid_get(global.charstat,global.initiativecycle,18) >= 1000)
	{
		
	
			/// @DnDAction : YoYo Games.Loops.Break
			/// @DnDVersion : 1
			/// @DnDHash : 10BD4C54
			/// @DnDParent : 456ACAFA
			break;
	
	
	}

	/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
	/// @DnDVersion : 1
	/// @DnDHash : 5A05DFA7
	/// @DnDParent : 46C71B09
	/// @DnDArgument : "var" "global.charstat"
	/// @DnDArgument : "x" "global.initiativecycle"
	/// @DnDArgument : "y" "18"
	/// @DnDArgument : "value" "ds_grid_get(global.charstat,global.initiativecycle,18) + ds_grid_get(global.charstat,global.initiativecycle,17)"
	
	{
		ds_grid_set(global.charstat, global.initiativecycle, 18, ds_grid_get(global.charstat,global.initiativecycle,18) + ds_grid_get(global.charstat,global.initiativecycle,17));
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3FEB3B9A
	/// @DnDParent : 46C71B09
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "global.initiativecycle"
	global.initiativecycle += 1;
	


}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 391C6D76
/// @DnDArgument : "var" "global.initiativecycle"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "20"
if(global.initiativecycle >= 20)
{
	

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7DFDFFE3
	/// @DnDParent : 391C6D76
	/// @DnDArgument : "var" "global.initiativecycle"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "100"
	if(global.initiativecycle >= 100)
	{
		
	
			/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
			/// @DnDVersion : 1
			/// @DnDHash : 71FCE7FF
			/// @DnDParent : 7DFDFFE3
			/// @DnDArgument : "msg" ""You done it wrong, characterid out of range (too high) battle_main""
			show_debug_message(string("You done it wrong, characterid out of range (too high) battle_main"));
	
	
	}

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 65EE4912
	/// @DnDParent : 391C6D76
	/// @DnDArgument : "script" "ai_turn"
	/// @DnDSaveInfo : "script" "01130964-3981-4870-a3c9-d86c12f8bbc2"
	script_execute(ai_turn);


}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 6502A8DA
else
{
	

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4D53107D
	/// @DnDParent : 6502A8DA
	/// @DnDArgument : "var" "global.initiativecycle"
	/// @DnDArgument : "op" "1"
	if(global.initiativecycle < 0)
	{
		
	
			/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
			/// @DnDVersion : 1
			/// @DnDHash : 66B330DA
			/// @DnDParent : 4D53107D
			/// @DnDArgument : "msg" ""You done it wrong, characterid out of range (too low) battle_main""
			show_debug_message(string("You done it wrong, characterid out of range (too low) battle_main"));
	
	
	}


}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 474B463D
/// @DnDArgument : "expr" "global.initiativecycle"
/// @DnDArgument : "var" "global.cameratarget"
global.cameratarget = global.initiativecycle;


/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 369D034A
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "global.cameramoving"
global.cameramoving = 1;


/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 24E24D6B
/// @DnDArgument : "expr" "2"
/// @DnDArgument : "var" "global.battlephase"
global.battlephase = 2;


/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 13BCBB6C
/// @DnDApplyTo : 5db25750-6d0d-423c-8209-510cec854c0d
/// @DnDArgument : "var" "selfphase"
with(battle_main) {
selfphase = 0;

}

/// @DnDAction : YoYo Games.Instances.Call_User_Event
/// @DnDVersion : 1
/// @DnDHash : 7C60CECA
/// @DnDApplyTo : e93f2f36-4e4e-4642-845f-4ba36f5e070f
with(camera_controller)
{
	event_user(0);
}

