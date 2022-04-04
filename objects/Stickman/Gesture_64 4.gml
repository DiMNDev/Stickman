/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1B52D523
/// @DnDArgument : "code" "if global.ccntgun = true$(13_10){$(13_10)	if face_right = 1 $(13_10){$(13_10)ccnt_fired = instance_create_depth(x+28,y+8,-300,ccnt_proj);$(13_10)	ccnt_fired.hspeed = 8;$(13_10)}$(13_10)if face_left = 1 $(13_10){$(13_10)ccnt_fired = instance_create_depth(x-28,y+8,-300,ccnt_proj);$(13_10)	 $(13_10)	ccnt_fired.hspeed = -8;$(13_10)}$(13_10)}"
if global.ccntgun = true
{
	if face_right = 1 
{
ccnt_fired = instance_create_depth(x+28,y+8,-300,ccnt_proj);
	ccnt_fired.hspeed = 8;
}
if face_left = 1 
{
ccnt_fired = instance_create_depth(x-28,y+8,-300,ccnt_proj);
	 
	ccnt_fired.hspeed = -8;
}
}