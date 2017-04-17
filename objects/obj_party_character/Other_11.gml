/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1343800C
/// @DnDArgument : "var" "global.active_turn_char"
/// @DnDArgument : "value" "myself"
if(global.active_turn_char == myself)
{
	

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 57D70B45
	/// @DnDParent : 1343800C
	/// @DnDArgument : "soundid" "turnactive"
	/// @DnDSaveInfo : "soundid" "fa98a320-a2f2-4554-b8c3-34ad8d07249f"
	
	{
		audio_play_sound(turnactive, 0, 0);
	}

	/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
	/// @DnDVersion : 1
	/// @DnDHash : 765A36CC
	/// @DnDParent : 1343800C
	
	{
		image_alpha = 1;
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 68D12C7B
	/// @DnDParent : 1343800C
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "myturn"
	myturn = 1;
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 42F11F5F
	/// @DnDParent : 1343800C
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "moveok"
	moveok = 1;
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7C2B6F73
	/// @DnDParent : 1343800C
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "drawphantom"
	drawphantom = 1;
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 677BF3CD
	/// @DnDParent : 1343800C
	/// @DnDArgument : "expr" "self.x"
	/// @DnDArgument : "var" "drawphantomx"
	drawphantomx = self.x;
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 60BAB1EC
	/// @DnDParent : 1343800C
	/// @DnDArgument : "expr" "self.y"
	/// @DnDArgument : "var" "drawphantomy"
	drawphantomy = self.y;
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4312298A
	/// @DnDParent : 1343800C
	/// @DnDArgument : "expr" "(self.x - 64) / 128"
	/// @DnDArgument : "var" "selfgridx"
	selfgridx = (self.x - 64) / 128;
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1ED2CBC5
	/// @DnDParent : 1343800C
	/// @DnDArgument : "expr" "(self.y - 64) / 128"
	/// @DnDArgument : "var" "selfgridy"
	selfgridy = (self.y - 64) / 128;
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 42FD3E05
	/// @DnDParent : 1343800C
	/// @DnDArgument : "expr" "selfgridx"
	/// @DnDArgument : "var" "nextgridx"
	nextgridx = selfgridx;
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 09BD57DE
	/// @DnDParent : 1343800C
	/// @DnDArgument : "expr" "selfgridy"
	/// @DnDArgument : "var" "nextgridy"
	nextgridy = selfgridy;
	

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 64B800EC
	/// @DnDInput : 4
	/// @DnDParent : 1343800C
	/// @DnDArgument : "script" "check_valid_targets"
	/// @DnDArgument : "arg" "-1"
	/// @DnDArgument : "arg_1" "selfgridx"
	/// @DnDArgument : "arg_2" "selfgridy"
	/// @DnDArgument : "arg_3" "myself"
	/// @DnDSaveInfo : "script" "d4bb39fa-a13b-4399-b874-81785a4a77f8"
	script_execute(check_valid_targets, -1, selfgridx, selfgridy, myself);


}

