/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 7420CA6C
/// @DnDArgument : "x" "195"
/// @DnDArgument : "y" "35"
/// @DnDArgument : "sprite" "ui_statblock"
/// @DnDSaveInfo : "sprite" "8ac39955-17f2-4e0f-9657-f8a8ae55a0b1"

var l7420CA6C_0 = 195;
var l7420CA6C_1 = 35;
draw_sprite(ui_statblock, 0, l7420CA6C_0, l7420CA6C_1);


/// @DnDAction : YoYo Games.Types.Number_To_String
/// @DnDVersion : 1
/// @DnDHash : 2588AC03
/// @DnDArgument : "var" "hp1"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "value" "ds_grid_get(battlestatgrid, 0, 1)"

{
	var hp1 = string(ds_grid_get(battlestatgrid, 0, 1));
}

/// @DnDAction : YoYo Games.Types.Number_To_String
/// @DnDVersion : 1
/// @DnDHash : 07FF9B35
/// @DnDArgument : "var" "hp2"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "value" "ds_grid_get(battlestatgrid, 0, 2)"

{
	var hp2 = string(ds_grid_get(battlestatgrid, 0, 2));
}

/// @DnDAction : YoYo Games.Types.Number_To_String
/// @DnDVersion : 1
/// @DnDHash : 77629F7D
/// @DnDArgument : "var" "mp1"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "value" "ds_grid_get(battlestatgrid, 0, 3)"

{
	var mp1 = string(ds_grid_get(battlestatgrid, 0, 3));
}

/// @DnDAction : YoYo Games.Types.Number_To_String
/// @DnDVersion : 1
/// @DnDHash : 15CC4599
/// @DnDArgument : "var" "mp2"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "value" "ds_grid_get(battlestatgrid, 0, 4)"

{
	var mp2 = string(ds_grid_get(battlestatgrid, 0, 4));
}

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 08FB7C74
/// @DnDArgument : "x" "200"
/// @DnDArgument : "y" "40"
/// @DnDArgument : "caption" ""Name: ""
/// @DnDArgument : "var" "ds_grid_get(battlestatgrid, 0, 0)"

{
	var l08FB7C74_0 = 200;
	var l08FB7C74_1 = 40;
	draw_text(l08FB7C74_0, l08FB7C74_1, string("Name: ") + string(ds_grid_get(battlestatgrid, 0, 0)));
}

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 5EE28C1E
/// @DnDArgument : "x" "200"
/// @DnDArgument : "y" "60"
/// @DnDArgument : "caption" ""HP: ""
/// @DnDArgument : "var" "hp1 + "/" + hp2"

{
	var l5EE28C1E_0 = 200;
	var l5EE28C1E_1 = 60;
	draw_text(l5EE28C1E_0, l5EE28C1E_1, string("HP: ") + string(hp1 + "/" + hp2));
}

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 647B5909
/// @DnDArgument : "x" "200"
/// @DnDArgument : "y" "80"
/// @DnDArgument : "caption" ""MP: ""
/// @DnDArgument : "var" "mp1 + "/" + mp2"

{
	var l647B5909_0 = 200;
	var l647B5909_1 = 80;
	draw_text(l647B5909_0, l647B5909_1, string("MP: ") + string(mp1 + "/" + mp2));
}

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 45FC3877
/// @DnDArgument : "x" "200"
/// @DnDArgument : "y" "100"
/// @DnDArgument : "caption" ""Strength: ""
/// @DnDArgument : "var" "ds_grid_get(battlestatgrid, 0, 5)"

{
	var l45FC3877_0 = 200;
	var l45FC3877_1 = 100;
	draw_text(l45FC3877_0, l45FC3877_1, string("Strength: ") + string(ds_grid_get(battlestatgrid, 0, 5)));
}

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 40424096
/// @DnDArgument : "x" "200"
/// @DnDArgument : "y" "120"
/// @DnDArgument : "caption" ""Intelligence: ""
/// @DnDArgument : "var" "ds_grid_get(battlestatgrid, 0, 6)"

{
	var l40424096_0 = 200;
	var l40424096_1 = 120;
	draw_text(l40424096_0, l40424096_1, string("Intelligence: ") + string(ds_grid_get(battlestatgrid, 0, 6)));
}

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 5303FDD9
/// @DnDArgument : "x" "200"
/// @DnDArgument : "y" "140"
/// @DnDArgument : "caption" ""Constitution: ""
/// @DnDArgument : "var" "ds_grid_get(battlestatgrid, 0, 7)"

{
	var l5303FDD9_0 = 200;
	var l5303FDD9_1 = 140;
	draw_text(l5303FDD9_0, l5303FDD9_1, string("Constitution: ") + string(ds_grid_get(battlestatgrid, 0, 7)));
}

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 7D4BF866
/// @DnDArgument : "x" "200"
/// @DnDArgument : "y" "160"
/// @DnDArgument : "caption" ""Agility: ""
/// @DnDArgument : "var" "ds_grid_get(battlestatgrid, 0, 8)"

{
	var l7D4BF866_0 = 200;
	var l7D4BF866_1 = 160;
	draw_text(l7D4BF866_0, l7D4BF866_1, string("Agility: ") + string(ds_grid_get(battlestatgrid, 0, 8)));
}

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 7F192868
/// @DnDArgument : "x" "200"
/// @DnDArgument : "y" "180"
/// @DnDArgument : "caption" ""Dexterity: ""
/// @DnDArgument : "var" "ds_grid_get(battlestatgrid, 0, 9)"

{
	var l7F192868_0 = 200;
	var l7F192868_1 = 180;
	draw_text(l7F192868_0, l7F192868_1, string("Dexterity: ") + string(ds_grid_get(battlestatgrid, 0, 9)));
}

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 08FB9540
/// @DnDArgument : "x" "200"
/// @DnDArgument : "y" "200"
/// @DnDArgument : "caption" ""Piety: ""
/// @DnDArgument : "var" "ds_grid_get(battlestatgrid, 0, 10)"

{
	var l08FB9540_0 = 200;
	var l08FB9540_1 = 200;
	draw_text(l08FB9540_0, l08FB9540_1, string("Piety: ") + string(ds_grid_get(battlestatgrid, 0, 10)));
}

