/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 24F8940E
/// @DnDArgument : "var" "myself"
/// @DnDArgument : "value" "global.turn_order_cycle"
if(myself == global.turn_order_cycle)
{
	

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 3546E08C
	/// @DnDParent : 24F8940E
	/// @DnDArgument : "script" "battle_act"
	/// @DnDSaveInfo : "script" "f927fbbf-2b24-44ad-aa5e-6849f84f44cf"
	script_execute(battle_act);


}

