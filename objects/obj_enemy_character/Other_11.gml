/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 79BB0228
/// @DnDArgument : "var" "global.uiactivechar"
/// @DnDArgument : "value" "myself"
if(global.uiactivechar == myself)
{
	

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
	/// @DnDHash : 5A873788
	/// @DnDParent : 79BB0228
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "drawphantom"
	drawphantom = 1;
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0D331362
	/// @DnDParent : 79BB0228
	/// @DnDArgument : "expr" "self.x"
	/// @DnDArgument : "var" "drawphantomx"
	drawphantomx = self.x;
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0512B4BB
	/// @DnDParent : 79BB0228
	/// @DnDArgument : "expr" "self.y"
	/// @DnDArgument : "var" "drawphantomy"
	drawphantomy = self.y;
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 41DE65E9
	/// @DnDParent : 79BB0228
	/// @DnDArgument : "expr" "(self.x - 64) / 128"
	/// @DnDArgument : "var" "selfgridx"
	selfgridx = (self.x - 64) / 128;
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 524FBD1B
	/// @DnDParent : 79BB0228
	/// @DnDArgument : "expr" "(self.y - 64) / 128"
	/// @DnDArgument : "var" "selfgridy"
	selfgridy = (self.y - 64) / 128;
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 61BA3AE4
	/// @DnDParent : 79BB0228
	/// @DnDArgument : "expr" "selfgridx"
	/// @DnDArgument : "var" "nextgridx"
	nextgridx = selfgridx;
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 53222BAB
	/// @DnDParent : 79BB0228
	/// @DnDArgument : "expr" "selfgridy"
	/// @DnDArgument : "var" "nextgridy"
	nextgridy = selfgridy;
	

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 720992BD
	/// @DnDInput : 4
	/// @DnDParent : 79BB0228
	/// @DnDArgument : "script" "check_valid_targets"
	/// @DnDArgument : "arg" ""move""
	/// @DnDArgument : "arg_1" "selfgridx"
	/// @DnDArgument : "arg_2" "selfgridy"
	/// @DnDArgument : "arg_3" "myself"
	/// @DnDSaveInfo : "script" "d4bb39fa-a13b-4399-b874-81785a4a77f8"
	script_execute(check_valid_targets, "move", selfgridx, selfgridy, myself);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 32CAA00C
	/// @DnDParent : 79BB0228
	/// @DnDArgument : "expr" "ds_grid_get(global.charstat, myself, 19)"
	/// @DnDArgument : "var" "global.nummovesleft"
	global.nummovesleft = ds_grid_get(global.charstat, myself, 19);
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 521E4F44
	/// @DnDParent : 79BB0228
	/// @DnDArgument : "var" "global.movecomplete"
	global.movecomplete = 0;
	


}

