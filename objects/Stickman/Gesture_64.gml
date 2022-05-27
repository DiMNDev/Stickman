guiTap_y = event_data[? "guiposY"];
guiTap_x = event_data[? "guiposX"];

#region Backpack button check
//Check point in rectangle for button
if PIR_GUI(global.guiWidth - 48,64,guiTap_x,guiTap_y,32) == true {
	global.buttonTouched = true;
	alarm_set(1,10);
}
#endregion
#region Coconut button check
//Check point in rectangle for button
if PIR_GUI(global.guiWidth - 48,16,guiTap_x,guiTap_y,32) {
	global.buttonTouched = true;
	alarm_set(1,10);
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
//tipX = 19
//tipY = 8
//if global.buttonTouched = false{
//if global.ccntgun = true && global.coconutCount > 0
//{
//	audio_play_sound(shoot_SND,1,false);
//	ccnt_fired = instance_create_depth(x+tipX,y+tipY,-1,ccnt_proj);
//	global.coconutCount -= 1;
//	//Set the direction of projectile to match weapon angle
//	ccnt_fired.direction = coconut_gun_holding.image_angle;
//	//Set the speed of the projectile
//	ccnt_fired.speed = 6;
	

//}
//}
#endregion
#region Coconut gun fire with spine
result = ccntGunTip(aimAngle)
tipX = result[0];
tipY = result[1];

if global.buttonTouched = false{
if global.ccntgun = true && global.coconutCount > 0
{
	audio_play_sound(shoot_SND,1,false);
	ccnt_fired = instance_create_depth(x+tipX,y+tipY,-1,ccnt_proj);
	global.coconutCount -= 1;
	//Set the direction of projectile to match weapon angle
	if image_xscale = 1 {
	ccnt_fired.direction = coconutFireAngle(aimAngle);
	}
	else if image_xscale = -1 {
		ccnt_fired.direction = coconutFireAngle(aimAngle) * -1
	}
	//Set the speed of the projectile
	if image_xscale = 1 {
	ccnt_fired.speed = 6;
	} else {ccnt_fired.speed = -6}
	

}
}
#endregion




