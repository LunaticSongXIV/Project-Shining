/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 49113D38
/// @DnDArgument : "var" "global.uiactivechar"
/// @DnDArgument : "value" "myself"
if(global.uiactivechar == myself)
{
	

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 4DC4F549
	/// @DnDParent : 49113D38
	/// @DnDArgument : "msg" ""UE 1 Char IDed""
	show_debug_message(string("UE 1 Char IDed"));

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 7560D004
	/// @DnDParent : 49113D38
	/// @DnDArgument : "soundid" "turnactive"
	/// @DnDSaveInfo : "soundid" "fa98a320-a2f2-4554-b8c3-34ad8d07249f"
	
	{
		audio_play_sound(turnactive, 0, 0);
	}

	/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
	/// @DnDVersion : 1
	/// @DnDHash : 289E3743
	/// @DnDParent : 49113D38
	
	{
		image_alpha = 1;
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 21F6F155
	/// @DnDParent : 49113D38
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "myturn"
	myturn = 1;
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0E6DFBB2
	/// @DnDParent : 49113D38
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "moveok"
	moveok = 1;
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 650AFDAA
	/// @DnDParent : 49113D38
	/// @DnDArgument : "var" "global.movecomplete"
	global.movecomplete = 0;
	


}

