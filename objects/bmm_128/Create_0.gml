/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 63FEA530
/// @DnDArgument : "expr" "30"
/// @DnDArgument : "var" "battlemapwidth"
battlemapwidth = 30;


/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 44227F69
/// @DnDArgument : "expr" "25"
/// @DnDArgument : "var" "battlemapheight"
battlemapheight = 25;


/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 7DD5C097
/// @DnDArgument : "script" "init_battlemap"
/// @DnDSaveInfo : "script" "a8b94e81-2d56-4899-a6b1-ce2b4692e274"
script_execute(init_battlemap);

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 38A194F1
/// @DnDArgument : "script" "init_terrainmap"
/// @DnDSaveInfo : "script" "0bf8f1cf-e26e-4198-b24f-4a8345a44e56"
script_execute(init_terrainmap);

/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
/// @DnDVersion : 1
/// @DnDHash : 716BE525
/// @DnDArgument : "var" "global.battlemap"
/// @DnDArgument : "x" "12"
/// @DnDArgument : "y" "13"
/// @DnDArgument : "value" "0"

{
	ds_grid_set(global.battlemap, 12, 13, 0);
}

/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
/// @DnDVersion : 1
/// @DnDHash : 424297AD
/// @DnDArgument : "var" "global.battlemap"
/// @DnDArgument : "y" "19"
/// @DnDArgument : "value" "1"

{
	ds_grid_set(global.battlemap, 0, 19, 1);
}

/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
/// @DnDVersion : 1
/// @DnDHash : 65C4F798
/// @DnDArgument : "var" "global.battlemap"
/// @DnDArgument : "x" "16"
/// @DnDArgument : "y" "17"
/// @DnDArgument : "value" "20"

{
	ds_grid_set(global.battlemap, 16, 17, 20);
}

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 31DE1BF2
/// @DnDArgument : "script" "place_characters"
/// @DnDSaveInfo : "script" "bba3c7cd-83db-45c0-a89f-51c34011d49b"
script_execute(place_characters);

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
/// @DnDApplyTo : obj_party_character
/// @DnDArgument : "event" "15"
with(obj_party_character)
{
	event_user(15);
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 766B3C4B
/// @DnDArgument : "var" "global.turn_order_cycle"
global.turn_order_cycle = 0;


/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 44DCB263
/// @DnDArgument : "script" "next_turn"
/// @DnDSaveInfo : "script" "0fe46899-5d60-428b-a93d-27aff7d9aaa8"
script_execute(next_turn);

