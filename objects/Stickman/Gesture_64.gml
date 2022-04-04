guiTap_y = event_data[? "guiposY"];
guiTap_x = event_data[? "guiposX"];

#region Backpack button check
//Point in GUI rectangle function
if PIR_GUI(global.guiWidth - 64,32,(global.guiWidth - 64) + 64,96) = true {
	global.buttonTouched = true;
	alarm_set(1,10);
}
#endregion
#region Coconut button check
//point in rectangle x1 and x2 values
if device_mouse_x_to_gui(0) > global.guiWidth - 64 && device_mouse_x_to_gui(0) < (global.guiWidth - 64) + 64 {
//point in rectangle y1 and y2 values	
	if device_mouse_y_to_gui(0) > 140 && device_mouse_y_to_gui(0) < 172 {
		global.buttonTouched = true;
		alarm_set(1,10);
	}
}
#endregion
#region Coconut gun fire BEFORE seperation
//if global.buttonTouched = false{
//if global.ccntgun = true && global.coconutCount > 0
//{
//	audio_play_sound(shoot_SND,1,false);
//	if face_right = 1 && sprite_index = Stickman_faceRccnt
//{
	
//	ccnt_fired = instance_create_depth(x+28,y+8,-300,ccnt_proj);
//	global.coconutCount -= 1;
//	ccnt_fired.hspeed = 8;
	
//}
//if face_left = 1 && sprite_index = Stickman_faceLccnt
//{

//	ccnt_fired = instance_create_depth(x-28,y+8,-300,ccnt_proj);
//	global.coconutCount -= 1;
//	ccnt_fired.hspeed = -8;

//}
//}
//}
#endregion
#region Coconut gun fire AFTER seperation
tipX = 19
tipY = 8
if global.buttonTouched = false{
if global.ccntgun = true && global.coconutCount > 0
{
	audio_play_sound(shoot_SND,1,false);
	ccnt_fired = instance_create_depth(x+tipX,y+tipY,-1,ccnt_proj);
	global.coconutCount -= 1;
	//Set the direction of projectile to match weapon angle
	ccnt_fired.direction = coconut_gun_holding.image_angle;
	//Set the speed of the projectile
	ccnt_fired.speed = 6;
	

}
}
#endregion




