/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 3CC9FFCB

{
	draw_self();
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0B721E76
/// @DnDArgument : "var" "drawphantom"
/// @DnDArgument : "value" "1"
if(drawphantom == 1)
{
	

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 159D328E
	/// @DnDParent : 0B721E76
	/// @DnDArgument : "script" "draw_phantom"
	/// @DnDSaveInfo : "script" "aa8074cc-f282-4f16-98da-d7a7eadb72f6"
	script_execute(draw_phantom);


}

