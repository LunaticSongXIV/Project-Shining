/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 720384EA
/// @DnDArgument : "xpos" "64"
/// @DnDArgument : "ypos" "320"
/// @DnDArgument : "var" "tempinstid"
/// @DnDArgument : "objectid" "obj_party_character"
/// @DnDSaveInfo : "objectid" "96ddc5ff-8ff3-45c8-a6b1-b2696088318c"
tempinstid = instance_create_layer(64, 320, "Instances", obj_party_character); 

/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
/// @DnDVersion : 1
/// @DnDHash : 2A38CA5E
/// @DnDArgument : "var" "global.charstat"
/// @DnDArgument : "y" "27"
/// @DnDArgument : "value" "tempinstid"

{
	ds_grid_set(global.charstat, 0, 27, tempinstid);
}

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 6052CD53
/// @DnDArgument : "xpos" "64"
/// @DnDArgument : "ypos" "384"
/// @DnDArgument : "var" "tempinstid"
/// @DnDArgument : "objectid" "obj_party_character"
/// @DnDSaveInfo : "objectid" "96ddc5ff-8ff3-45c8-a6b1-b2696088318c"
tempinstid = instance_create_layer(64, 384, "Instances", obj_party_character); 

/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
/// @DnDVersion : 1
/// @DnDHash : 76082ED8
/// @DnDArgument : "var" "global.charstat"
/// @DnDArgument : "x" "1"
/// @DnDArgument : "y" "27"
/// @DnDArgument : "value" "tempinstid"

{
	ds_grid_set(global.charstat, 1, 27, tempinstid);
}

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 64855743
/// @DnDArgument : "xpos" "960"
/// @DnDArgument : "ypos" "384"
/// @DnDArgument : "var" "tempinstid"
/// @DnDArgument : "objectid" "obj_enemy_character"
/// @DnDSaveInfo : "objectid" "b759897c-c0d7-476e-8073-c93858e0c549"
tempinstid = instance_create_layer(960, 384, "Instances", obj_enemy_character); 

/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
/// @DnDVersion : 1
/// @DnDHash : 32451332
/// @DnDArgument : "var" "global.charstat"
/// @DnDArgument : "x" "20"
/// @DnDArgument : "y" "27"
/// @DnDArgument : "value" "tempinstid"

{
	ds_grid_set(global.charstat, 20, 27, tempinstid);
}

