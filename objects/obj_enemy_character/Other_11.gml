/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 79BB0228
/// @DnDArgument : "var" "global.uiactivechar"
/// @DnDArgument : "value" "myself"
if(global.uiactivechar == myself)
{
	

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 5CACF421
	/// @DnDParent : 79BB0228
	/// @DnDArgument : "msg" ""UE 1 Char IDed""
	show_debug_message(string("UE 1 Char IDed"));

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 1495BFA4
	/// @DnDParent : 79BB0228
	/// @DnDArgument : "soundid" "turnactive"
	/// @DnDSaveInfo : "soundid" "fa98a320-a2f2-4554-b8c3-34ad8d07249f"
	
	{
		audio_play_sound(turnactive, 0, 0);
	}

	/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
	/// @DnDVersion : 1
	/// @DnDHash : 22FF3F60
	/// @DnDParent : 79BB0228
	
	{
		image_alpha = 1;
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 69638249
	/// @DnDParent : 79BB0228
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "myturn"
	myturn = 1;
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 694B0C9A
	/// @DnDParent : 79BB0228
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "moveok"
	moveok = 1;
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 521E4F44
	/// @DnDParent : 79BB0228
	/// @DnDArgument : "var" "global.movecomplete"
	global.movecomplete = 0;
	


}

