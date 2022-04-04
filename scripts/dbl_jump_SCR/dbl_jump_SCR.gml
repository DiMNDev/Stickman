/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 26EEE918
/// @DnDArgument : "code" "// // Script assets have changed for v2.3.0 see$(13_10)// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information$(13_10)function dbl_jump_SCR() $(13_10){$(13_10)while image_index <= 15 {$(13_10)$(13_10)	flick = 0;$(13_10)	dbl_jump = false;$(13_10)	if face_left = 1 sprite_index = Stickman_jumpL;$(13_10)	if face_right = 1 sprite_index = Stickman_jumpR;$(13_10)$(13_10)}$(13_10)}"
// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function dbl_jump_SCR() 
{
while image_index <= 15 {

	flick = 0;
	dbl_jump = false;
	if face_left = 1 sprite_index = Stickman_jumpL;
	if face_right = 1 sprite_index = Stickman_jumpR;

}
}