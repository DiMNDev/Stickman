/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 42A2CB07
/// @DnDArgument : "code" "flick = event_data[? "isflick"];$(13_10)if flick < 1$(13_10){$(13_10)	key_left = 0;$(13_10)	key_right = 0;$(13_10)}$(13_10)if flick >= 1 || grounded = true jump = true$(13_10)//else$(13_10)	//jump = true;$(13_10)	//if air = 1 $(13_10)	//{$(13_10)	//	dbl_jump = true;$(13_10)	//	alarm_set(0,30);$(13_10)	//}$(13_10)"
flick = event_data[? "isflick"];
if flick < 1
{
	key_left = 0;
	key_right = 0;
}
if flick >= 1 || grounded = true jump = true
//else
	//jump = true;
	//if air = 1 
	//{
	//	dbl_jump = true;
	//	alarm_set(0,30);
	//}