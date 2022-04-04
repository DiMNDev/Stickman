/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1C2D824A
/// @DnDArgument : "code" "drag_y = event_data[? "guiposY"];$(13_10)drag_x = event_data[? "guiposX"];$(13_10)drag_side = event_data[? "posX"];$(13_10)if drag_side > x +20$(13_10){$(13_10)	face_right = true;$(13_10)	face_left = false;$(13_10)}$(13_10)if drag_side < x -20 $(13_10){$(13_10)	face_left = true;$(13_10)	face_right = false;$(13_10)}$(13_10)if drag_side > x-20 && drag_side <x+20$(13_10){$(13_10)	sprite_index = Stickman_Stand;$(13_10)	face_left = false;$(13_10)	face_right = false;$(13_10)}	$(13_10)$(13_10)if drag_side > x + 100  && !place_meeting(x+1,y,GRND) key_right = 1$(13_10)else$(13_10)key_right = 0;$(13_10)if drag_side < x - 100  && !place_meeting(x-1,y,GRND) key_left = 1;$(13_10)else$(13_10)key_left = 0;"
drag_y = event_data[? "guiposY"];
drag_x = event_data[? "guiposX"];
drag_side = event_data[? "posX"];
if drag_side > x +20
{
	face_right = true;
	face_left = false;
}
if drag_side < x -20 
{
	face_left = true;
	face_right = false;
}
if drag_side > x-20 && drag_side <x+20
{
	sprite_index = Stickman_Stand;
	face_left = false;
	face_right = false;
}	

if drag_side > x + 100  && !place_meeting(x+1,y,GRND) key_right = 1
else
key_right = 0;
if drag_side < x - 100  && !place_meeting(x-1,y,GRND) key_left = 1;
else
key_left = 0;