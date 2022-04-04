drag_y = event_data[? "posY"];
drag_x = event_data[? "posX"];
guidrag_y = event_data[? "guiposY"];
guidrag_x = event_data[? "guiposX"];
guidrag_x = event_data[? "guiposX"];
drag_side = event_data[? "posX"];
guiDragEndY = event_data[? "guiposY"];
dragging = true;
#region Direction facing
if drag_side > x +16
{
	face_right = true;
	face_left = false;
	
}
if drag_side < x -16 
{
	face_left = true;
	face_right = false;
	
}
#endregion
#region Stand still
if drag_side > x - 15 && drag_side < x + 15
{
	key_right = 0;
	key_left = 0;
	face_left = false;
	face_right = false;
}	
#endregion
#region Horizontal movement 64
if twoHanded = true {
if drag_side > x + 64
{
	key_right = 1;
	key_left = 0;
}
else
key_right = 0;
if drag_side < x - 64  
{
	key_left = 1;
	key_right = 0;
}
else
key_left = 0;
}
#endregion
#region Vertical movement 
if drag_y < y - 64
{
	key_up = 1;
	key_down = 0;
}

if drag_y > y + 64
{
	key_down = 1;
	key_up = 0;
}
#endregion
#region One handed
if oneHanded = true {
	
if guidrag_x > oneTouchStartX {
	key_right = 1;
	key_left = 0;
}
if guidrag_x < oneTouchStartX {
	key_left = 1;
	key_right = 0;
}
}
#endregion