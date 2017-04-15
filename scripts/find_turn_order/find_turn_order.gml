/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 198A28BA
/// @DnDArgument : "var" "global.ui_turn_order_found"
/// @DnDArgument : "value" "1"
if(global.ui_turn_order_found == 1)
{
	

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 4B75AE69
	/// @DnDParent : 198A28BA
	/// @DnDArgument : "x" "window_get_width() - 250"
	/// @DnDArgument : "y" "100"
	/// @DnDArgument : "caption" ""Current Turn: ""
	/// @DnDArgument : "var" "ds_grid_get(global.charstat, nextturn0, 0)"
	
	{
		var l4B75AE69_0 = window_get_width() - 250;
		var l4B75AE69_1 = 100;
		draw_text(l4B75AE69_0, l4B75AE69_1, string("Current Turn: ") + string(ds_grid_get(global.charstat, nextturn0, 0)));
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4FAD99F2
	/// @DnDParent : 198A28BA
	/// @DnDArgument : "var" "nextturn1"
	/// @DnDArgument : "value" "-1"
	if(nextturn1 == -1)
	{
		
	
			/// @DnDAction : YoYo Games.Common.Return
			/// @DnDVersion : 1
			/// @DnDHash : 23287D25
			/// @DnDParent : 4FAD99F2
			return;
	
	
	}

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 2B5E85F3
	/// @DnDParent : 198A28BA
	/// @DnDArgument : "x" "window_get_width() - 250"
	/// @DnDArgument : "y" "120"
	/// @DnDArgument : "caption" ""Next Turn: ""
	/// @DnDArgument : "var" "ds_grid_get(global.charstat, nextturn1, 0)"
	
	{
		var l2B5E85F3_0 = window_get_width() - 250;
		var l2B5E85F3_1 = 120;
		draw_text(l2B5E85F3_0, l2B5E85F3_1, string("Next Turn: ") + string(ds_grid_get(global.charstat, nextturn1, 0)));
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 184CDCC3
	/// @DnDParent : 198A28BA
	/// @DnDArgument : "var" "nextturn2"
	/// @DnDArgument : "value" "-1"
	if(nextturn2 == -1)
	{
		
	
			/// @DnDAction : YoYo Games.Common.Return
			/// @DnDVersion : 1
			/// @DnDHash : 6025E935
			/// @DnDParent : 184CDCC3
			return;
	
	
	}

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 0D5323C8
	/// @DnDParent : 198A28BA
	/// @DnDArgument : "x" "window_get_width() - 250"
	/// @DnDArgument : "y" "140"
	/// @DnDArgument : "caption" ""Next Turn: ""
	/// @DnDArgument : "var" "ds_grid_get(global.charstat, nextturn2, 0)"
	
	{
		var l0D5323C8_0 = window_get_width() - 250;
		var l0D5323C8_1 = 140;
		draw_text(l0D5323C8_0, l0D5323C8_1, string("Next Turn: ") + string(ds_grid_get(global.charstat, nextturn2, 0)));
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 378B1E86
	/// @DnDParent : 198A28BA
	/// @DnDArgument : "var" "nextturn3"
	/// @DnDArgument : "value" "-1"
	if(nextturn3 == -1)
	{
		
	
			/// @DnDAction : YoYo Games.Common.Return
			/// @DnDVersion : 1
			/// @DnDHash : 508C33B6
			/// @DnDParent : 378B1E86
			return;
	
	
	}

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 18FF6CCE
	/// @DnDParent : 198A28BA
	/// @DnDArgument : "x" "window_get_width() - 250"
	/// @DnDArgument : "y" "160"
	/// @DnDArgument : "caption" ""Next Turn: ""
	/// @DnDArgument : "var" "ds_grid_get(global.charstat, nextturn3, 0)"
	
	{
		var l18FF6CCE_0 = window_get_width() - 250;
		var l18FF6CCE_1 = 160;
		draw_text(l18FF6CCE_0, l18FF6CCE_1, string("Next Turn: ") + string(ds_grid_get(global.charstat, nextturn3, 0)));
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 195D16CE
	/// @DnDParent : 198A28BA
	/// @DnDArgument : "var" "nextturn4"
	/// @DnDArgument : "value" "-1"
	if(nextturn4 == -1)
	{
		
	
			/// @DnDAction : YoYo Games.Common.Return
			/// @DnDVersion : 1
			/// @DnDHash : 5CE802F3
			/// @DnDParent : 195D16CE
			return;
	
	
	}

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 2EFA1BC8
	/// @DnDParent : 198A28BA
	/// @DnDArgument : "x" "window_get_width() - 250"
	/// @DnDArgument : "y" "180"
	/// @DnDArgument : "caption" ""Next Turn: ""
	/// @DnDArgument : "var" "ds_grid_get(global.charstat, nextturn4, 0)"
	
	{
		var l2EFA1BC8_0 = window_get_width() - 250;
		var l2EFA1BC8_1 = 180;
		draw_text(l2EFA1BC8_0, l2EFA1BC8_1, string("Next Turn: ") + string(ds_grid_get(global.charstat, nextturn4, 0)));
	}

	/// @DnDAction : YoYo Games.Common.Return
	/// @DnDVersion : 1
	/// @DnDHash : 3FDC4D6E
	/// @DnDParent : 198A28BA
	return;


}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 21B5CA41
/// @DnDArgument : "var" "turnordercycle"
turnordercycle = 0;


/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1728DC58
/// @DnDArgument : "var" "numberinstack"
numberinstack = 0;


/// @DnDAction : YoYo Games.Data Structures.If_DS_Exists
/// @DnDVersion : 1
/// @DnDHash : 0E7D0BB5
/// @DnDArgument : "ds" "2"
/// @DnDArgument : "var" "global.nextturns"

	var l0E7D0BB5_0 = global.nextturns;

if(ds_exists(l0E7D0BB5_0, ds_type_grid))
{
	

	/// @DnDAction : YoYo Games.Data Structures.DS_Free
	/// @DnDVersion : 1
	/// @DnDHash : 0CE1459F
	/// @DnDParent : 0E7D0BB5
	/// @DnDArgument : "ds" "2"
	/// @DnDArgument : "var" "global.nextturns"
	ds_grid_destroy(global.nextturns);


}

/// @DnDAction : YoYo Games.Data Structures.Create_Grid
/// @DnDVersion : 1
/// @DnDHash : 07C4149E
/// @DnDArgument : "var" "global.nextturns"
/// @DnDArgument : "width" "2"
/// @DnDArgument : "height" "100"
global.nextturns = ds_grid_create(2, 100);


/// @DnDAction : YoYo Games.Loops.Loop
/// @DnDVersion : 1
/// @DnDHash : 0E03F100
while(true)
{
	

	/// @DnDAction : YoYo Games.Data Structures.Grid_Get_Value
	/// @DnDVersion : 1
	/// @DnDHash : 6C55E4FA
	/// @DnDParent : 0E03F100
	/// @DnDArgument : "assignee" "takespd"
	/// @DnDArgument : "var" "global.charstat"
	/// @DnDArgument : "x" "turnordercycle"
	/// @DnDArgument : "y" "17"
	
	{
		takespd = ds_grid_get(global.charstat, turnordercycle, 17);
	}

	/// @DnDAction : YoYo Games.Data Structures.Grid_Get_Value
	/// @DnDVersion : 1
	/// @DnDHash : 4AC2217D
	/// @DnDParent : 0E03F100
	/// @DnDArgument : "assignee" "takeinit"
	/// @DnDArgument : "var" "global.charstat"
	/// @DnDArgument : "x" "turnordercycle"
	/// @DnDArgument : "y" "18"
	
	{
		takeinit = ds_grid_get(global.charstat, turnordercycle, 18);
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7D166202
	/// @DnDParent : 0E03F100
	/// @DnDArgument : "var" "turnordercycle"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "100"
	if(turnordercycle >= 100)
	{
		
	
			/// @DnDAction : YoYo Games.Loops.Break
			/// @DnDVersion : 1
			/// @DnDHash : 06B8E9E0
			/// @DnDParent : 7D166202
			break;
	
	
	}

	/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
	/// @DnDVersion : 1
	/// @DnDHash : 14F90910
	/// @DnDParent : 0E03F100
	/// @DnDArgument : "var" "global.nextturns"
	/// @DnDArgument : "y" "turnordercycle"
	/// @DnDArgument : "value" "turnordercycle"
	
	{
		ds_grid_set(global.nextturns, 0, turnordercycle, turnordercycle);
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 14A9BF9F
	/// @DnDParent : 0E03F100
	/// @DnDArgument : "var" "takespd"
	if(takespd == 0)
	{
		
	
			/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
			/// @DnDVersion : 1
			/// @DnDHash : 52B1E370
			/// @DnDParent : 14A9BF9F
			/// @DnDArgument : "var" "global.nextturns"
			/// @DnDArgument : "x" "1"
			/// @DnDArgument : "y" "turnordercycle"
			/// @DnDArgument : "value" "1001"
			
			{
				ds_grid_set(global.nextturns, 1, turnordercycle, 1001);
			}
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5CD3F7A5
			/// @DnDParent : 14A9BF9F
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "turnordercycle"
			turnordercycle += 1;
			
	
	
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 52E25DC9
	/// @DnDParent : 0E03F100
	else
	{
		
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4F833F00
			/// @DnDParent : 52E25DC9
			/// @DnDArgument : "expr" "1000 - takeinit"
			/// @DnDArgument : "var" "cyclesleft"
			cyclesleft = 1000 - takeinit;
			
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 602AF24D
			/// @DnDParent : 52E25DC9
			/// @DnDArgument : "expr" "cyclesleft / takespd"
			/// @DnDArgument : "var" "cyclesleft"
			cyclesleft = cyclesleft / takespd;
			
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 38C4E3CB
			/// @DnDParent : 52E25DC9
			/// @DnDArgument : "expr" "ceil(cyclesleft)"
			/// @DnDArgument : "var" "cyclesleft"
			cyclesleft = ceil(cyclesleft);
			
	
			/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
			/// @DnDVersion : 1
			/// @DnDHash : 135A2BE1
			/// @DnDParent : 52E25DC9
			/// @DnDArgument : "var" "global.nextturns"
			/// @DnDArgument : "x" "1"
			/// @DnDArgument : "y" "turnordercycle"
			/// @DnDArgument : "value" "cyclesleft"
			
			{
				ds_grid_set(global.nextturns, 1, turnordercycle, cyclesleft);
			}
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2E9A39D5
			/// @DnDParent : 52E25DC9
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "turnordercycle"
			turnordercycle += 1;
			
	
	
	}


}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1B4278B4
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)ds_grid_sort(global.nextturns, 1, false);"

{
	/// @description Execute Code
ds_grid_sort(global.nextturns, 1, false);
}

/// @DnDAction : YoYo Games.Data Structures.If_DS_Exists
/// @DnDVersion : 1
/// @DnDHash : 3649CC9B
/// @DnDArgument : "ds" "3"
/// @DnDArgument : "var" "global.orderedturns"

	var l3649CC9B_0 = global.orderedturns;

if(ds_exists(l3649CC9B_0, ds_type_stack))
{
	

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 6C1EC08A
	/// @DnDParent : 3649CC9B
	/// @DnDArgument : "msg" ""Destroying Orderedturns""
	show_debug_message(string("Destroying Orderedturns"));

	/// @DnDAction : YoYo Games.Data Structures.DS_Free
	/// @DnDVersion : 1
	/// @DnDHash : 307D966C
	/// @DnDParent : 3649CC9B
	/// @DnDArgument : "ds" "3"
	/// @DnDArgument : "var" "global.orderedturns"
	ds_stack_destroy(global.orderedturns);


}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 33414F06
/// @DnDArgument : "var" "turnordercycle"
turnordercycle = 0;


/// @DnDAction : YoYo Games.Data Structures.Create_Stack
/// @DnDVersion : 1
/// @DnDHash : 1530FC23
/// @DnDArgument : "var" "global.orderedturns"
global.orderedturns = ds_stack_create();


/// @DnDAction : YoYo Games.Loops.Loop
/// @DnDVersion : 1
/// @DnDHash : 56113562
while(true)
{
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6731217F
	/// @DnDParent : 56113562
	/// @DnDArgument : "expr" "ds_grid_get(global.nextturns, 0, turnordercycle)"
	/// @DnDArgument : "var" "orderstackon"
	orderstackon = ds_grid_get(global.nextturns, 0, turnordercycle);
	

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 46DE599D
	/// @DnDParent : 56113562
	/// @DnDArgument : "var" "ds_grid_get(global.nextturns, 1, turnordercycle)"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "1000"
	if(ds_grid_get(global.nextturns, 1, turnordercycle) >= 1000)
	{
		
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 6DF0703D
	/// @DnDParent : 56113562
	else
	{
		
	
			/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
			/// @DnDVersion : 1
			/// @DnDHash : 15A6ACE0
			/// @DnDParent : 6DF0703D
			/// @DnDArgument : "msg" ""adding to stack""
			show_debug_message(string("adding to stack"));
	
			/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
			/// @DnDVersion : 1
			/// @DnDHash : 05F03378
			/// @DnDParent : 6DF0703D
			/// @DnDArgument : "msg" "orderstackon"
			show_debug_message(string(orderstackon));
	
			/// @DnDAction : YoYo Games.Data Structures.Stack_Push
			/// @DnDVersion : 1
			/// @DnDHash : 0BC08A77
			/// @DnDParent : 6DF0703D
			/// @DnDArgument : "var" "global.orderedturns"
			/// @DnDArgument : "value" "orderstackon"
			
				ds_stack_push(global.orderedturns, orderstackon);
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 17C09778
			/// @DnDParent : 6DF0703D
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "numberinstack"
			numberinstack += 1;
			
	
	
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7B6F6F13
	/// @DnDParent : 56113562
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "turnordercycle"
	turnordercycle += 1;
	

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2897CD2C
	/// @DnDParent : 56113562
	/// @DnDArgument : "var" "turnordercycle"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "100"
	if(turnordercycle >= 100)
	{
		
	
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2FC9FFCA
			/// @DnDParent : 2897CD2C
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "turnordercycle"
			turnordercycle += 0;
			
	
			/// @DnDAction : YoYo Games.Loops.Break
			/// @DnDVersion : 1
			/// @DnDHash : 34F8C5D6
			/// @DnDParent : 2897CD2C
			break;
	
	
	}


}

/// @DnDAction : YoYo Games.Loops.Loop
/// @DnDVersion : 1
/// @DnDHash : 1C25E589
while(true)
{
	

	/// @DnDAction : YoYo Games.Data Structures.If_DS_Empty
	/// @DnDVersion : 1
	/// @DnDHash : 450B4110
	/// @DnDParent : 1C25E589
	/// @DnDArgument : "ds" "2"
	/// @DnDArgument : "var" "global.orderedturns"
	
		var l450B4110_0 = global.orderedturns;
		
	if(ds_stack_empty(l450B4110_0))
	{
		
	
			/// @DnDAction : YoYo Games.Loops.Break
			/// @DnDVersion : 1
			/// @DnDHash : 6F1DD100
			/// @DnDParent : 450B4110
			break;
	
	
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5EA517F1
	/// @DnDParent : 1C25E589
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "global.ui_turn_order_found"
	global.ui_turn_order_found = 1;
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 128DB4EE
	/// @DnDInput : 5
	/// @DnDParent : 1C25E589
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_1" "-1"
	/// @DnDArgument : "expr_2" "-1"
	/// @DnDArgument : "expr_3" "-1"
	/// @DnDArgument : "expr_4" "-1"
	/// @DnDArgument : "var" "nextturn0"
	/// @DnDArgument : "var_1" "nextturn1"
	/// @DnDArgument : "var_2" "nextturn2"
	/// @DnDArgument : "var_3" "nextturn3"
	/// @DnDArgument : "var_4" "nextturn4"
	nextturn0 = -1;
	nextturn1 = -1;
	nextturn2 = -1;
	nextturn3 = -1;
	nextturn4 = -1;
	

	/// @DnDAction : YoYo Games.Data Structures.Stack_Pop
	/// @DnDVersion : 1
	/// @DnDHash : 1EBF4B62
	/// @DnDParent : 1C25E589
	/// @DnDArgument : "assignee" "nextinorder"
	/// @DnDArgument : "var" "global.orderedturns"
	
		nextinorder = ds_stack_pop(global.orderedturns);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 735391F1
	/// @DnDParent : 1C25E589
	/// @DnDArgument : "expr" "nextinorder"
	/// @DnDArgument : "var" "nextturn0"
	nextturn0 = nextinorder;
	

	/// @DnDAction : YoYo Games.Data Structures.If_DS_Empty
	/// @DnDVersion : 1
	/// @DnDHash : 55E03AFE
	/// @DnDParent : 1C25E589
	/// @DnDArgument : "ds" "2"
	/// @DnDArgument : "var" "global.orderedturns"
	
		var l55E03AFE_0 = global.orderedturns;
		
	if(ds_stack_empty(l55E03AFE_0))
	{
		
	
			/// @DnDAction : YoYo Games.Loops.Break
			/// @DnDVersion : 1
			/// @DnDHash : 0C3D8AF9
			/// @DnDParent : 55E03AFE
			break;
	
	
	}

	/// @DnDAction : YoYo Games.Data Structures.Stack_Pop
	/// @DnDVersion : 1
	/// @DnDHash : 5593A846
	/// @DnDParent : 1C25E589
	/// @DnDArgument : "assignee" "nextinorder"
	/// @DnDArgument : "var" "global.orderedturns"
	
		nextinorder = ds_stack_pop(global.orderedturns);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 37D76D47
	/// @DnDParent : 1C25E589
	/// @DnDArgument : "expr" "nextinorder"
	/// @DnDArgument : "var" "nextturn1"
	nextturn1 = nextinorder;
	

	/// @DnDAction : YoYo Games.Data Structures.If_DS_Empty
	/// @DnDVersion : 1
	/// @DnDHash : 602EEAE4
	/// @DnDParent : 1C25E589
	/// @DnDArgument : "ds" "2"
	/// @DnDArgument : "var" "global.orderedturns"
	
		var l602EEAE4_0 = global.orderedturns;
		
	if(ds_stack_empty(l602EEAE4_0))
	{
		
	
			/// @DnDAction : YoYo Games.Loops.Break
			/// @DnDVersion : 1
			/// @DnDHash : 45E2788C
			/// @DnDParent : 602EEAE4
			break;
	
	
	}

	/// @DnDAction : YoYo Games.Data Structures.Stack_Pop
	/// @DnDVersion : 1
	/// @DnDHash : 0CC63396
	/// @DnDParent : 1C25E589
	/// @DnDArgument : "assignee" "nextinorder"
	/// @DnDArgument : "var" "global.orderedturns"
	
		nextinorder = ds_stack_pop(global.orderedturns);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 470148BB
	/// @DnDParent : 1C25E589
	/// @DnDArgument : "expr" "nextinorder"
	/// @DnDArgument : "var" "nextturn2"
	nextturn2 = nextinorder;
	

	/// @DnDAction : YoYo Games.Data Structures.If_DS_Empty
	/// @DnDVersion : 1
	/// @DnDHash : 6A80F1AB
	/// @DnDParent : 1C25E589
	/// @DnDArgument : "ds" "2"
	/// @DnDArgument : "var" "global.orderedturns"
	
		var l6A80F1AB_0 = global.orderedturns;
		
	if(ds_stack_empty(l6A80F1AB_0))
	{
		
	
			/// @DnDAction : YoYo Games.Loops.Break
			/// @DnDVersion : 1
			/// @DnDHash : 7B8AA8A6
			/// @DnDParent : 6A80F1AB
			break;
	
	
	}

	/// @DnDAction : YoYo Games.Data Structures.Stack_Pop
	/// @DnDVersion : 1
	/// @DnDHash : 697FA213
	/// @DnDParent : 1C25E589
	/// @DnDArgument : "assignee" "nextinorder"
	/// @DnDArgument : "var" "global.orderedturns"
	
		nextinorder = ds_stack_pop(global.orderedturns);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 77CFEC6A
	/// @DnDParent : 1C25E589
	/// @DnDArgument : "expr" "nextinorder"
	/// @DnDArgument : "var" "nextturn3"
	nextturn3 = nextinorder;
	

	/// @DnDAction : YoYo Games.Data Structures.If_DS_Empty
	/// @DnDVersion : 1
	/// @DnDHash : 31FA0630
	/// @DnDParent : 1C25E589
	/// @DnDArgument : "ds" "2"
	/// @DnDArgument : "var" "global.orderedturns"
	
		var l31FA0630_0 = global.orderedturns;
		
	if(ds_stack_empty(l31FA0630_0))
	{
		
	
			/// @DnDAction : YoYo Games.Loops.Break
			/// @DnDVersion : 1
			/// @DnDHash : 6883EBB2
			/// @DnDParent : 31FA0630
			break;
	
	
	}

	/// @DnDAction : YoYo Games.Data Structures.Stack_Pop
	/// @DnDVersion : 1
	/// @DnDHash : 0D41F0DA
	/// @DnDParent : 1C25E589
	/// @DnDArgument : "assignee" "nextinorder"
	/// @DnDArgument : "var" "global.orderedturns"
	
		nextinorder = ds_stack_pop(global.orderedturns);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0774CDE0
	/// @DnDParent : 1C25E589
	/// @DnDArgument : "expr" "nextinorder"
	/// @DnDArgument : "var" "nextturn4"
	nextturn4 = nextinorder;
	

	/// @DnDAction : YoYo Games.Loops.Break
	/// @DnDVersion : 1
	/// @DnDHash : 0E141AC2
	/// @DnDParent : 1C25E589
	break;


}

