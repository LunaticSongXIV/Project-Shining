/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 48EC8D4E
/// @DnDArgument : "var" "myself"
/// @DnDArgument : "value" "global.initiativecycle"
if(myself == global.initiativecycle)
{
	

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 05EB2CC2
	/// @DnDParent : 48EC8D4E
	/// @DnDArgument : "script" "battle_act"
	/// @DnDSaveInfo : "script" "f927fbbf-2b24-44ad-aa5e-6849f84f44cf"
	script_execute(battle_act);


}

