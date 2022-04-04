/// @description Checks to see if the floor height of a given tile, returns how deep in the floor
/// @arg image_angle

function Weapon_flip_FUNC(arg0)

{
//Check between 0 and 180 degrees to find mirrored angle
if arg0 >= 0 && arg0 <= 180 {
	return 180 - arg0;
}
//Check between 181 and 359 degrees to find mirrored angle
if arg0 >= 181 && arg0 <= 359 {
	return 360 - arg0 + 180;	
}



}