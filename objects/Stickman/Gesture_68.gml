flicked = event_data[? "isflick"];
key_down = 0
key_up = 0

if !place_meeting(x,y,monkeyBars_OBJ) flick += flicked;
if flick = 1 && air = false jump = true;
if flick = 2 && air = true dbl_jump = true;
//if flick > 2 flick = 0;
if flicked < 1
{
	key_left = 0;
	key_right = 0;
}
dragging = false;
