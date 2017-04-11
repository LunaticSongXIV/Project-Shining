/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 63FEA530
/// @DnDArgument : "expr" "16"
/// @DnDArgument : "var" "battlemapwidth"
battlemapwidth = 16;


/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 44227F69
/// @DnDArgument : "expr" "6"
/// @DnDArgument : "var" "battlemapheight"
battlemapheight = 6;


/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 7DD5C097
/// @DnDArgument : "script" "initialize_battlemap_grid"
/// @DnDSaveInfo : "script" "a8b94e81-2d56-4899-a6b1-ce2b4692e274"
script_execute(initialize_battlemap_grid);

/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
/// @DnDVersion : 1
/// @DnDHash : 716BE525
/// @DnDArgument : "var" "global.battlemap"
/// @DnDArgument : "x" "4"
/// @DnDArgument : "y" "4"
/// @DnDArgument : "value" "0"

{
	ds_grid_set(global.battlemap, 4, 4, 0);
}

/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
/// @DnDVersion : 1
/// @DnDHash : 307AD669
/// @DnDArgument : "var" "global.battlemap"
/// @DnDArgument : "x" "14"
/// @DnDArgument : "y" "4"
/// @DnDArgument : "value" "1"

{
	ds_grid_set(global.battlemap, 14, 4, 1);
}

/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
/// @DnDVersion : 1
/// @DnDHash : 663D01E7
/// @DnDArgument : "var" "global.battlemap"
/// @DnDArgument : "x" "12"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "value" "20"

{
	ds_grid_set(global.battlemap, 12, 2, 20);
}

/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
/// @DnDVersion : 1
/// @DnDHash : 63B138B4
/// @DnDArgument : "var" "global.battlemap"
/// @DnDArgument : "x" "4"
/// @DnDArgument : "y" "3"
/// @DnDArgument : "value" "100"

{
	ds_grid_set(global.battlemap, 4, 3, 100);
}

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 31DE1BF2
/// @DnDArgument : "script" "battlemap_placements"
/// @DnDSaveInfo : "script" "bba3c7cd-83db-45c0-a89f-51c34011d49b"
script_execute(battlemap_placements);

/// @DnDAction : YoYo Games.Instances.Call_User_Event
/// @DnDVersion : 1
/// @DnDHash : 24C7E874
/// @DnDApplyTo : b759897c-c0d7-476e-8073-c93858e0c549
/// @DnDArgument : "event" "15"
with(obj_enemy_character)
{
	event_user(15);
}

/// @DnDAction : YoYo Games.Instances.Call_User_Event
/// @DnDVersion : 1
/// @DnDHash : 3705847B
/// @DnDApplyTo : 96ddc5ff-8ff3-45c8-a6b1-b2696088318c
/// @DnDArgument : "event" "15"
with(obj_party_character)
{
	event_user(15);
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 766B3C4B
/// @DnDArgument : "var" "global.initiativecycle"
global.initiativecycle = 0;


/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 44DCB263
/// @DnDArgument : "script" "main_battlephase_1"
/// @DnDSaveInfo : "script" "0fe46899-5d60-428b-a93d-27aff7d9aaa8"
script_execute(main_battlephase_1);

