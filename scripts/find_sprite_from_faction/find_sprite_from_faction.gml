/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3E82FA48
/// @DnDArgument : "var" "argument0"
if(argument0 == 0)
{
	

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 0DA5FABB
	/// @DnDParent : 3E82FA48
	/// @DnDArgument : "script" "find_party_sprite"
	/// @DnDArgument : "arg" "argument1"
	/// @DnDSaveInfo : "script" "8e14865c-6f14-4a48-9b4a-8ea233fbfcb7"
	script_execute(find_party_sprite, argument1);


}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1536B5BD
/// @DnDArgument : "var" "argument0"
/// @DnDArgument : "value" "1"
if(argument0 == 1)
{
	

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 45CE6AED
	/// @DnDParent : 1536B5BD
	/// @DnDArgument : "script" "find_enemy_sprite"
	/// @DnDArgument : "arg" "argument1"
	/// @DnDSaveInfo : "script" "35b24c7e-6eda-48c1-98ef-990c614dbcc3"
	script_execute(find_enemy_sprite, argument1);


}

