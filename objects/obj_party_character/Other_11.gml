/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3888CAF5
/// @DnDArgument : "var" "global.uiactivechar"
/// @DnDArgument : "value" "myself"
if(global.uiactivechar == myself)
{
	

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 2FACEC67
	/// @DnDParent : 3888CAF5
	/// @DnDArgument : "soundid" "turnactive"
	/// @DnDSaveInfo : "soundid" "fa98a320-a2f2-4554-b8c3-34ad8d07249f"
	
	{
		audio_play_sound(turnactive, 0, 0);
	}

	/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
	/// @DnDVersion : 1
	/// @DnDHash : 73BA70C7
	/// @DnDParent : 3888CAF5
	
	{
		image_alpha = 1;
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 49D13E65
	/// @DnDParent : 3888CAF5
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "myturn"
	myturn = 1;
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 15BAAEDA
	/// @DnDParent : 3888CAF5
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "moveok"
	moveok = 1;
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 28F0C4E0
	/// @DnDParent : 3888CAF5
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "drawphantom"
	drawphantom = 1;
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0DED3481
	/// @DnDParent : 3888CAF5
	/// @DnDArgument : "expr" "self.x"
	/// @DnDArgument : "var" "drawphantomx"
	drawphantomx = self.x;
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 48FED95E
	/// @DnDParent : 3888CAF5
	/// @DnDArgument : "expr" "self.y"
	/// @DnDArgument : "var" "drawphantomy"
	drawphantomy = self.y;
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2702F2F5
	/// @DnDParent : 3888CAF5
	/// @DnDArgument : "expr" "(self.x - 64) / 128"
	/// @DnDArgument : "var" "selfgridx"
	selfgridx = (self.x - 64) / 128;
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 019952A1
	/// @DnDParent : 3888CAF5
	/// @DnDArgument : "expr" "(self.y - 64) / 128"
	/// @DnDArgument : "var" "selfgridy"
	selfgridy = (self.y - 64) / 128;
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7A6F803B
	/// @DnDParent : 3888CAF5
	/// @DnDArgument : "expr" "selfgridx"
	/// @DnDArgument : "var" "nextgridx"
	nextgridx = selfgridx;
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 23C1184B
	/// @DnDParent : 3888CAF5
	/// @DnDArgument : "expr" "selfgridy"
	/// @DnDArgument : "var" "nextgridy"
	nextgridy = selfgridy;
	

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 37688E83
	/// @DnDInput : 4
	/// @DnDParent : 3888CAF5
	/// @DnDArgument : "script" "check_valid_targets"
	/// @DnDArgument : "arg" ""move""
	/// @DnDArgument : "arg_1" "selfgridx"
	/// @DnDArgument : "arg_2" "selfgridy"
	/// @DnDArgument : "arg_3" "myself"
	/// @DnDSaveInfo : "script" "d4bb39fa-a13b-4399-b874-81785a4a77f8"
	script_execute(check_valid_targets, "move", selfgridx, selfgridy, myself);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 18619E4B
	/// @DnDParent : 3888CAF5
	/// @DnDArgument : "expr" "ds_grid_get(global.charstat, myself, 19)"
	/// @DnDArgument : "var" "global.nummovesleft"
	global.nummovesleft = ds_grid_get(global.charstat, myself, 19);
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 30F46382
	/// @DnDParent : 3888CAF5
	/// @DnDArgument : "var" "global.movecomplete"
	global.movecomplete = 0;
	


}

