/// @description Checks to see if the floor height of a given tile, returns how deep in the floor
/// @arg x1
/// @arg y1
/// @arg x2
/// @arg y2
function PIR_GUI(arg0,arg1,arg2,arg3)
{

//point in rectangle x1 and x2 values
if device_mouse_x_to_gui(0) > arg0 && device_mouse_x_to_gui(0) < arg2 {
//point in rectangle y1 and y2 values		
	if device_mouse_y_to_gui(0) > arg1 && device_mouse_y_to_gui(0) < arg3 {
return true
	}
}
}