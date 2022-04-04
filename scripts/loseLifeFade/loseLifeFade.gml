///@arg room
///@arg duration
///@arg color
function loseLifeFade(arg0,arg1,arg2) 
{
//Create
var _inst = instance_create_depth(0,0,0,OBJ_Fade);
//Set Properties
with (_inst)
{
	target_room = arg0;
	duration = arg1;
	color = arg2;
}


}