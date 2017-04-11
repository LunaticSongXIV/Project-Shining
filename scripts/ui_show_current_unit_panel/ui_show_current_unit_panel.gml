/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7DB45CC0
/// @DnDArgument : "var" "global.ui_show_stat_turn"
/// @DnDArgument : "value" "1"
if(global.ui_show_stat_turn == 1)
{
	

	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 6C239E11
	/// @DnDParent : 7DB45CC0
	/// @DnDArgument : "x" "35"
	/// @DnDArgument : "y" "35"
	/// @DnDArgument : "sprite" "ui_statblock"
	/// @DnDSaveInfo : "sprite" "8ac39955-17f2-4e0f-9657-f8a8ae55a0b1"
	
	var l6C239E11_0 = 35;
	var l6C239E11_1 = 35;
	draw_sprite(ui_statblock, 0, l6C239E11_0, l6C239E11_1);
	

	/// @DnDAction : YoYo Games.Drawing.Set_Font
	/// @DnDVersion : 1
	/// @DnDHash : 0C8BFB22
	/// @DnDParent : 7DB45CC0
	/// @DnDArgument : "font" "UI_stat_panel"
	/// @DnDSaveInfo : "font" "e3c45eda-6a66-4b9b-87b8-849f76a0d18b"
	
	{
		draw_set_font(UI_stat_panel);
	}

	/// @DnDAction : YoYo Games.Types.Number_To_String
	/// @DnDVersion : 1
	/// @DnDHash : 3AF31F52
	/// @DnDParent : 7DB45CC0
	/// @DnDArgument : "var" "hp1"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "value" "ds_grid_get(global.charstat, global.uiactivechar, 1)"
	
	{
		var hp1 = string(ds_grid_get(global.charstat, global.uiactivechar, 1));
	}

	/// @DnDAction : YoYo Games.Types.Number_To_String
	/// @DnDVersion : 1
	/// @DnDHash : 74ED2818
	/// @DnDParent : 7DB45CC0
	/// @DnDArgument : "var" "hp2"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "value" "ds_grid_get(global.charstat, global.uiactivechar, 2)"
	
	{
		var hp2 = string(ds_grid_get(global.charstat, global.uiactivechar, 2));
	}

	/// @DnDAction : YoYo Games.Types.Number_To_String
	/// @DnDVersion : 1
	/// @DnDHash : 79916F62
	/// @DnDParent : 7DB45CC0
	/// @DnDArgument : "var" "mp1"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "value" "ds_grid_get(global.charstat, global.uiactivechar, 3)"
	
	{
		var mp1 = string(ds_grid_get(global.charstat, global.uiactivechar, 3));
	}

	/// @DnDAction : YoYo Games.Types.Number_To_String
	/// @DnDVersion : 1
	/// @DnDHash : 1E27CBCF
	/// @DnDParent : 7DB45CC0
	/// @DnDArgument : "var" "mp2"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "value" "ds_grid_get(global.charstat, global.uiactivechar, 4)"
	
	{
		var mp2 = string(ds_grid_get(global.charstat, global.uiactivechar, 4));
	}

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 19106090
	/// @DnDParent : 7DB45CC0
	/// @DnDArgument : "x" "40"
	/// @DnDArgument : "y" "40"
	/// @DnDArgument : "caption" """"
	/// @DnDArgument : "var" "ds_grid_get(global.charstat, global.uiactivechar, 0)"
	
	{
		var l19106090_0 = 40;
		var l19106090_1 = 40;
		draw_text(l19106090_0, l19106090_1, string("") + string(ds_grid_get(global.charstat, global.uiactivechar, 0)));
	}

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 72D69052
	/// @DnDParent : 7DB45CC0
	/// @DnDArgument : "x" "40"
	/// @DnDArgument : "y" "60"
	/// @DnDArgument : "caption" ""HP: ""
	/// @DnDArgument : "var" "hp1 + "/" + hp2"
	
	{
		var l72D69052_0 = 40;
		var l72D69052_1 = 60;
		draw_text(l72D69052_0, l72D69052_1, string("HP: ") + string(hp1 + "/" + hp2));
	}

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 49B71719
	/// @DnDParent : 7DB45CC0
	/// @DnDArgument : "x" "40"
	/// @DnDArgument : "y" "80"
	/// @DnDArgument : "caption" ""MP: ""
	/// @DnDArgument : "var" "mp1 + "/" + mp2"
	
	{
		var l49B71719_0 = 40;
		var l49B71719_1 = 80;
		draw_text(l49B71719_0, l49B71719_1, string("MP: ") + string(mp1 + "/" + mp2));
	}

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 0C133CAA
	/// @DnDParent : 7DB45CC0
	/// @DnDArgument : "x" "40"
	/// @DnDArgument : "y" "100"
	/// @DnDArgument : "caption" ""STR: ""
	/// @DnDArgument : "var" "ds_grid_get(global.charstat, global.uiactivechar, 5)"
	
	{
		var l0C133CAA_0 = 40;
		var l0C133CAA_1 = 100;
		draw_text(l0C133CAA_0, l0C133CAA_1, string("STR: ") + string(ds_grid_get(global.charstat, global.uiactivechar, 5)));
	}

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 1E553DBF
	/// @DnDParent : 7DB45CC0
	/// @DnDArgument : "x" "40"
	/// @DnDArgument : "y" "120"
	/// @DnDArgument : "caption" ""INT: ""
	/// @DnDArgument : "var" "ds_grid_get(global.charstat, global.uiactivechar, 6)"
	
	{
		var l1E553DBF_0 = 40;
		var l1E553DBF_1 = 120;
		draw_text(l1E553DBF_0, l1E553DBF_1, string("INT: ") + string(ds_grid_get(global.charstat, global.uiactivechar, 6)));
	}

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 78F521A1
	/// @DnDParent : 7DB45CC0
	/// @DnDArgument : "x" "40"
	/// @DnDArgument : "y" "140"
	/// @DnDArgument : "caption" ""CON: ""
	/// @DnDArgument : "var" "ds_grid_get(global.charstat, global.uiactivechar, 7)"
	
	{
		var l78F521A1_0 = 40;
		var l78F521A1_1 = 140;
		draw_text(l78F521A1_0, l78F521A1_1, string("CON: ") + string(ds_grid_get(global.charstat, global.uiactivechar, 7)));
	}

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 132E54EC
	/// @DnDParent : 7DB45CC0
	/// @DnDArgument : "x" "40"
	/// @DnDArgument : "y" "160"
	/// @DnDArgument : "caption" ""AGI: ""
	/// @DnDArgument : "var" "ds_grid_get(global.charstat, global.uiactivechar, 8)"
	
	{
		var l132E54EC_0 = 40;
		var l132E54EC_1 = 160;
		draw_text(l132E54EC_0, l132E54EC_1, string("AGI: ") + string(ds_grid_get(global.charstat, global.uiactivechar, 8)));
	}

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 701BD9FC
	/// @DnDParent : 7DB45CC0
	/// @DnDArgument : "x" "40"
	/// @DnDArgument : "y" "180"
	/// @DnDArgument : "caption" ""DEX: ""
	/// @DnDArgument : "var" "ds_grid_get(global.charstat, global.uiactivechar, 9)"
	
	{
		var l701BD9FC_0 = 40;
		var l701BD9FC_1 = 180;
		draw_text(l701BD9FC_0, l701BD9FC_1, string("DEX: ") + string(ds_grid_get(global.charstat, global.uiactivechar, 9)));
	}

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 623040A1
	/// @DnDParent : 7DB45CC0
	/// @DnDArgument : "x" "40"
	/// @DnDArgument : "y" "200"
	/// @DnDArgument : "caption" ""PIE: ""
	/// @DnDArgument : "var" "ds_grid_get(global.charstat, global.uiactivechar, 10)"
	
	{
		var l623040A1_0 = 40;
		var l623040A1_1 = 200;
		draw_text(l623040A1_0, l623040A1_1, string("PIE: ") + string(ds_grid_get(global.charstat, global.uiactivechar, 10)));
	}


}

