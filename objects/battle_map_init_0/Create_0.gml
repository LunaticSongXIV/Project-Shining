/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 585CE789
/// @DnDArgument : "var" "newchar"
global.newchar = 0;


/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 539E4BA3
/// @DnDArgument : "xpos" "64"
/// @DnDArgument : "ypos" "320"
/// @DnDArgument : "var" "tempinstid"
/// @DnDArgument : "objectid" "obj_party_character"
/// @DnDSaveInfo : "objectid" "96ddc5ff-8ff3-45c8-a6b1-b2696088318c"
tempinstid = instance_create_layer(64, 320, "Instances", obj_party_character); 

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 24BF81C7
/// @DnDArgument : "msg" ""Battle Map Continues""
show_debug_message(string("Battle Map Continues"));

/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
/// @DnDVersion : 1
/// @DnDHash : 0B932C1B
/// @DnDArgument : "var" "global.charstat"
/// @DnDArgument : "y" "27"
/// @DnDArgument : "value" "tempinstid"

{
	ds_grid_set(global.charstat, 0, 27, tempinstid);
}

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 3A1657F2
/// @DnDArgument : "value" "1"
/// @DnDArgument : "var" "newchar"
global.newchar = 1;


/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 72EBE788
/// @DnDArgument : "xpos" "64"
/// @DnDArgument : "ypos" "448"
/// @DnDArgument : "var" "tempinstid"
/// @DnDArgument : "objectid" "obj_party_character"
/// @DnDSaveInfo : "objectid" "96ddc5ff-8ff3-45c8-a6b1-b2696088318c"
tempinstid = instance_create_layer(64, 448, "Instances", obj_party_character); 

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 1EB27430
/// @DnDArgument : "msg" ""Battle Map Continues""
show_debug_message(string("Battle Map Continues"));

/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
/// @DnDVersion : 1
/// @DnDHash : 38DA7D72
/// @DnDArgument : "var" "global.charstat"
/// @DnDArgument : "x" "1"
/// @DnDArgument : "y" "27"
/// @DnDArgument : "value" "tempinstid"

{
	ds_grid_set(global.charstat, 1, 27, tempinstid);
}

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 70566944
/// @DnDArgument : "value" "20"
/// @DnDArgument : "var" "newchar"
global.newchar = 20;


/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 4C47BB40
/// @DnDArgument : "xpos" "960"
/// @DnDArgument : "ypos" "384"
/// @DnDArgument : "var" "tempinstid"
/// @DnDArgument : "objectid" "obj_enemy_character"
/// @DnDSaveInfo : "objectid" "b759897c-c0d7-476e-8073-c93858e0c549"
tempinstid = instance_create_layer(960, 384, "Instances", obj_enemy_character); 

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

