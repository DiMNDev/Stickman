flicked = event_data[? "isflick"];
dragEndY = event_data[? "guiposY"]
key_down = 0
key_up = 0

#region Check flick direction 
if hsp != 0 {
if dragStartY < dragEndY flickDirection = "down";
}
if dragStartY > dragEndY flickDirection = "up";

#endregion

if !place_meeting(x,y,monkeyBars_OBJ) flick += flicked;
if flick = 1 && air = false && flickDirection = "up" jump = true;
if flick = 2 && air = true && flickDirection = "up" if global.ccntgun != true dbl_jump = true;

if flicked < 1 && !place_meeting(x,y+33,iceBlock_OBJ)
{
	friction = 0;
	key_left = 0;
	key_right = 0;
}
dragging = false;


