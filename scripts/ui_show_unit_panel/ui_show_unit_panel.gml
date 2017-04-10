/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 6C239E11
/// @DnDArgument : "x" "195"
/// @DnDArgument : "y" "35"
/// @DnDArgument : "sprite" "ui_statblock"
/// @DnDSaveInfo : "sprite" "8ac39955-17f2-4e0f-9657-f8a8ae55a0b1"

var l6C239E11_0 = 195;
var l6C239E11_1 = 35;
draw_sprite(ui_statblock, 0, l6C239E11_0, l6C239E11_1);


/// @DnDAction : YoYo Games.Types.Number_To_String
/// @DnDVersion : 1
/// @DnDHash : 3AF31F52
/// @DnDArgument : "var" "hp1"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "value" "ds_grid_get(global.charstat, 0, 1)"

{
	var hp1 = string(ds_grid_get(global.charstat, 0, 1));
}

/// @DnDAction : YoYo Games.Types.Number_To_String
/// @DnDVersion : 1
/// @DnDHash : 74ED2818
/// @DnDArgument : "var" "hp2"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "value" "ds_grid_get(global.charstat, 0, 2)"

{
	var hp2 = string(ds_grid_get(global.charstat, 0, 2));
}

/// @DnDAction : YoYo Games.Types.Number_To_String
/// @DnDVersion : 1
/// @DnDHash : 79916F62
/// @DnDArgument : "var" "mp1"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "value" "ds_grid_get(global.charstat, 0, 3)"

{
	var mp1 = string(ds_grid_get(global.charstat, 0, 3));
}

/// @DnDAction : YoYo Games.Types.Number_To_String
/// @DnDVersion : 1
/// @DnDHash : 1E27CBCF
/// @DnDArgument : "var" "mp2"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "value" "ds_grid_get(global.charstat, 0, 4)"

{
	var mp2 = string(ds_grid_get(global.charstat, 0, 4));
}

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 19106090
/// @DnDArgument : "x" "200"
/// @DnDArgument : "y" "40"
/// @DnDArgument : "caption" ""Name: ""
/// @DnDArgument : "var" "ds_grid_get(global.charstat, 0, 0)"

{
	var l19106090_0 = 200;
	var l19106090_1 = 40;
	draw_text(l19106090_0, l19106090_1, string("Name: ") + string(ds_grid_get(global.charstat, 0, 0)));
}

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 72D69052
/// @DnDArgument : "x" "200"
/// @DnDArgument : "y" "60"
/// @DnDArgument : "caption" ""HP: ""
/// @DnDArgument : "var" "hp1 + "/" + hp2"

{
	var l72D69052_0 = 200;
	var l72D69052_1 = 60;
	draw_text(l72D69052_0, l72D69052_1, string("HP: ") + string(hp1 + "/" + hp2));
}

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 49B71719
/// @DnDArgument : "x" "200"
/// @DnDArgument : "y" "80"
/// @DnDArgument : "caption" ""MP: ""
/// @DnDArgument : "var" "mp1 + "/" + mp2"

{
	var l49B71719_0 = 200;
	var l49B71719_1 = 80;
	draw_text(l49B71719_0, l49B71719_1, string("MP: ") + string(mp1 + "/" + mp2));
}

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 0C133CAA
/// @DnDArgument : "x" "200"
/// @DnDArgument : "y" "100"
/// @DnDArgument : "caption" ""Strength: ""
/// @DnDArgument : "var" "ds_grid_get(global.charstat, 0, 5)"

{
	var l0C133CAA_0 = 200;
	var l0C133CAA_1 = 100;
	draw_text(l0C133CAA_0, l0C133CAA_1, string("Strength: ") + string(ds_grid_get(global.charstat, 0, 5)));
}

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 1E553DBF
/// @DnDArgument : "x" "200"
/// @DnDArgument : "y" "120"
/// @DnDArgument : "caption" ""Intelligence: ""
/// @DnDArgument : "var" "ds_grid_get(global.charstat, 0, 6)"

{
	var l1E553DBF_0 = 200;
	var l1E553DBF_1 = 120;
	draw_text(l1E553DBF_0, l1E553DBF_1, string("Intelligence: ") + string(ds_grid_get(global.charstat, 0, 6)));
}

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 78F521A1
/// @DnDArgument : "x" "200"
/// @DnDArgument : "y" "140"
/// @DnDArgument : "caption" ""Constitution: ""
/// @DnDArgument : "var" "ds_grid_get(global.charstat, 0, 7)"

{
	var l78F521A1_0 = 200;
	var l78F521A1_1 = 140;
	draw_text(l78F521A1_0, l78F521A1_1, string("Constitution: ") + string(ds_grid_get(global.charstat, 0, 7)));
}

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 132E54EC
/// @DnDArgument : "x" "200"
/// @DnDArgument : "y" "160"
/// @DnDArgument : "caption" ""Agility: ""
/// @DnDArgument : "var" "ds_grid_get(global.charstat, 0, 8)"

{
	var l132E54EC_0 = 200;
	var l132E54EC_1 = 160;
	draw_text(l132E54EC_0, l132E54EC_1, string("Agility: ") + string(ds_grid_get(global.charstat, 0, 8)));
}

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 701BD9FC
/// @DnDArgument : "x" "200"
/// @DnDArgument : "y" "180"
/// @DnDArgument : "caption" ""Dexterity: ""
/// @DnDArgument : "var" "ds_grid_get(global.charstat, 0, 9)"

{
	var l701BD9FC_0 = 200;
	var l701BD9FC_1 = 180;
	draw_text(l701BD9FC_0, l701BD9FC_1, string("Dexterity: ") + string(ds_grid_get(global.charstat, 0, 9)));
}

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 623040A1
/// @DnDArgument : "x" "200"
/// @DnDArgument : "y" "200"
/// @DnDArgument : "caption" ""Piety: ""
/// @DnDArgument : "var" "ds_grid_get(global.charstat, 0, 10)"

{
	var l623040A1_0 = 200;
	var l623040A1_1 = 200;
	draw_text(l623040A1_0, l623040A1_1, string("Piety: ") + string(ds_grid_get(global.charstat, 0, 10)));
}

