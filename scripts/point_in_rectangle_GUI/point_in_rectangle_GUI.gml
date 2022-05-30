/// @description checks point in rectangle relative to the GUI
/// @arg x1
/// @arg y1
/// @arg xTouch
/// @arg yTouch
/// @arg size
function PIR_GUI(arg0,arg1,arg2,arg3,arg4)
{

//point in rectangle x1 and x2 values
if arg2 > arg0 && arg2 < (arg0 + arg4) {
//point in rectangle y1 and y2 values		
	if arg3 > arg1 && arg3 < (arg1 + arg4) {
return true
	}
}
}