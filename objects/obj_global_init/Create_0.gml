/// @DnDAction : YoYo Games.Random.Randomize
/// @DnDVersion : 1
/// @DnDHash : 5D67B39E
randomize();

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 54E6BCDA
/// @DnDArgument : "msg" ""Movement Variables""
show_debug_message(string("Movement Variables"));

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 5FA9F826
/// @DnDInput : 3
/// @DnDArgument : "value" "16"
/// @DnDArgument : "value_1" "8"
/// @DnDArgument : "var" "movetime"
/// @DnDArgument : "var_1" "movespeed"
/// @DnDArgument : "var_2" "animatingmove"
global.movetime = 16;
global.movespeed = 8;
global.animatingmove = 0;


/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 41C0DA10
/// @DnDArgument : "msg" ""Engine Calculation Variables""
show_debug_message(string("Engine Calculation Variables"));

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 57586B70
/// @DnDInput : 4
/// @DnDArgument : "value" "40"
/// @DnDArgument : "value_1" "60"
/// @DnDArgument : "value_3" "128"
/// @DnDArgument : "var" "turninitcost"
/// @DnDArgument : "var_1" "moveinitcost"
/// @DnDArgument : "var_2" "actinitcost"
/// @DnDArgument : "var_3" "world_tile_size"
global.turninitcost = 40;
global.moveinitcost = 60;
global.actinitcost = 0;
global.world_tile_size = 128;


/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 1410A044
/// @DnDArgument : "msg" ""Engine Flags""
show_debug_message(string("Engine Flags"));

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 5494C970
/// @DnDInput : 2
/// @DnDArgument : "var" "target_scan_done"
/// @DnDArgument : "var_1" "battle_pause"
global.target_scan_done = 0;
global.battle_pause = 0;


/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 722AA8A1
/// @DnDArgument : "msg" ""UI Variables""
show_debug_message(string("UI Variables"));

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 17B8D52B
/// @DnDInput : 7
/// @DnDArgument : "value" "-1"
/// @DnDArgument : "var" "active_turn_char"
/// @DnDArgument : "var_1" "ui_show_turn_player_stat"
/// @DnDArgument : "var_2" "show_valid"
/// @DnDArgument : "var_3" "ui_show_turn_order"
/// @DnDArgument : "var_4" "ui_turn_order_found"
/// @DnDArgument : "var_5" "battle_ui_open"
/// @DnDArgument : "var_6" "mouseenabled"
global.active_turn_char = -1;
global.ui_show_turn_player_stat = 0;
global.show_valid = 0;
global.ui_show_turn_order = 0;
global.ui_turn_order_found = 0;
global.battle_ui_open = 0;
global.mouseenabled = 0;


/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 7ADEC7F7
/// @DnDArgument : "msg" ""Camera Variables""
show_debug_message(string("Camera Variables"));

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 6355F14A
/// @DnDInput : 4
/// @DnDArgument : "value_1" "24"
/// @DnDArgument : "value_3" "16"
/// @DnDArgument : "var" "cam_zoom_to_next"
/// @DnDArgument : "var_1" "cameraspeed"
/// @DnDArgument : "var_2" "free_cursor"
/// @DnDArgument : "var_3" "free_cursor_speed"
global.cam_zoom_to_next = 0;
global.cameraspeed = 24;
global.free_cursor = 0;
global.free_cursor_speed = 16;


/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 6B090F2E
/// @DnDArgument : "msg" ""Data Structure Codes""
show_debug_message(string("Data Structure Codes"));

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 7F70067D
/// @DnDInput : 11
/// @DnDArgument : "value_1" "1"
/// @DnDArgument : "value_2" "2"
/// @DnDArgument : "value_3" "3"
/// @DnDArgument : "value_4" "4"
/// @DnDArgument : "value_5" "5"
/// @DnDArgument : "value_6" "6"
/// @DnDArgument : "value_7" "7"
/// @DnDArgument : "value_8" "8"
/// @DnDArgument : "value_9" "9"
/// @DnDArgument : "value_10" "10"
/// @DnDArgument : "var" "charstat"
/// @DnDArgument : "var_1" "battlemap"
/// @DnDArgument : "var_2" "terrainmap"
/// @DnDArgument : "var_3" "valid_moves"
/// @DnDArgument : "var_4" "nextturns"
/// @DnDArgument : "var_5" "orderedturns"
/// @DnDArgument : "var_6" "currentmovestackx"
/// @DnDArgument : "var_7" "currentmovestacky"
/// @DnDArgument : "var_8" "nextmovestackx"
/// @DnDArgument : "var_9" "nextmovestacky"
/// @DnDArgument : "var_10" "backtrace_moves"
global.charstat = 0;
global.battlemap = 1;
global.terrainmap = 2;
global.valid_moves = 3;
global.nextturns = 4;
global.orderedturns = 5;
global.currentmovestackx = 6;
global.currentmovestacky = 7;
global.nextmovestackx = 8;
global.nextmovestacky = 9;
global.backtrace_moves = 10;


/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 0E4BF809
/// @DnDArgument : "script" "init_character_stats"
/// @DnDSaveInfo : "script" "8c7b60fc-5aea-4f15-8cce-2a2611198740"
script_execute(init_character_stats);

