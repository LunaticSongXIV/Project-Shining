/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 714EBB83
/// @DnDArgument : "var" "global.active_turn_char"
/// @DnDArgument : "value" "myself"
if(global.active_turn_char == myself)
{
	

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 42275C3A
	/// @DnDParent : 714EBB83
	/// @DnDArgument : "soundid" "turnactive"
	/// @DnDSaveInfo : "soundid" "fa98a320-a2f2-4554-b8c3-34ad8d07249f"
	
	{
		audio_play_sound(turnactive, 0, 0);
	}

	/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
	/// @DnDVersion : 1
	/// @DnDHash : 107322C2
	/// @DnDParent : 714EBB83
	
	{
		image_alpha = 1;
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 07DD679C
	/// @DnDParent : 714EBB83
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "myturn"
	myturn = 1;
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0D409EB6
	/// @DnDParent : 714EBB83
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "moveok"
	moveok = 1;
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 063C50B5
	/// @DnDParent : 714EBB83
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "drawphantom"
	drawphantom = 1;
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 63E4F676
	/// @DnDParent : 714EBB83
	/// @DnDArgument : "expr" "self.x"
	/// @DnDArgument : "var" "drawphantomx"
	drawphantomx = self.x;
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 580D5DC7
	/// @DnDParent : 714EBB83
	/// @DnDArgument : "expr" "self.y"
	/// @DnDArgument : "var" "drawphantomy"
	drawphantomy = self.y;
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4D736333
	/// @DnDParent : 714EBB83
	/// @DnDArgument : "expr" "(self.x - 64) / 128"
	/// @DnDArgument : "var" "selfgridx"
	selfgridx = (self.x - 64) / 128;
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7A771E1C
	/// @DnDParent : 714EBB83
	/// @DnDArgument : "expr" "(self.y - 64) / 128"
	/// @DnDArgument : "var" "selfgridy"
	selfgridy = (self.y - 64) / 128;
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 336B89AE
	/// @DnDParent : 714EBB83
	/// @DnDArgument : "expr" "selfgridx"
	/// @DnDArgument : "var" "nextgridx"
	nextgridx = selfgridx;
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0FC1026F
	/// @DnDParent : 714EBB83
	/// @DnDArgument : "expr" "selfgridy"
	/// @DnDArgument : "var" "nextgridy"
	nextgridy = selfgridy;
	

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 7A6AD028
	/// @DnDInput : 4
	/// @DnDParent : 714EBB83
	/// @DnDArgument : "script" "check_valid_targets"
	/// @DnDArgument : "arg" "-1"
	/// @DnDArgument : "arg_1" "selfgridx"
	/// @DnDArgument : "arg_2" "selfgridy"
	/// @DnDArgument : "arg_3" "myself"
	/// @DnDSaveInfo : "script" "d4bb39fa-a13b-4399-b874-81785a4a77f8"
	script_execute(check_valid_targets, -1, selfgridx, selfgridy, myself);


}

