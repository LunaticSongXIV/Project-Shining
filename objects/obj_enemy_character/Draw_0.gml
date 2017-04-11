/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 213CB480

{
	draw_self();
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5109ABD8
/// @DnDArgument : "var" "drawphantom"
/// @DnDArgument : "value" "1"
if(drawphantom == 1)
{
	

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 706233BC
	/// @DnDParent : 5109ABD8
	/// @DnDArgument : "script" "draw_phantom"
	/// @DnDSaveInfo : "script" "aa8074cc-f282-4f16-98da-d7a7eadb72f6"
	script_execute(draw_phantom);


}

