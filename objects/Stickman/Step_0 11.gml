/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1D63EF36
/// @DnDApplyTo : Stickman
/// @DnDArgument : "code" "//Define Variables$(13_10)var bbox_side;$(13_10)var p1;	$(13_10)var p2;$(13_10)//check user input$(13_10)one_touch = device_mouse_check_button(0,mb_any);$(13_10)two_touch = device_mouse_check_button(1,mb_any);$(13_10)//Calculate Movement$(13_10)var move = key_right - key_left;$(13_10)hsp = move * walksp;$(13_10)vsp += grv;$(13_10)move_1 = move;$(13_10)//Is my middle center touching the floor at the start of this frame?$(13_10) grounded = (infloor1(coll_mapid,x,bbox_bottom+1) >= 0);$(13_10)//jump$(13_10)if (grounded || (infloor1(coll_mapid,bbox_left,bbox_bottom+1) >= 0) || (infloor1(coll_mapid,bbox_right,bbox_bottom+1) >= 0))$(13_10){$(13_10)if jump = true$(13_10){$(13_10)	vsp = spd_jump;$(13_10)	grounded = false;$(13_10)	jump = false$(13_10)$(13_10)}$(13_10)}$(13_10)//Horizontal collision checking$(13_10)if hsp > 0 bbox_side = bbox_right else bbox_side = bbox_left;$(13_10)p1 = tilemap_get_at_pixel(coll_mapid,bbox_side+hsp,bbox_top) != 0$(13_10)p2 = tilemap_get_at_pixel(coll_mapid,bbox_side+hsp,bbox_bottom) != 0$(13_10)	if (tilemap_get_at_pixel(coll_mapid,x,bbox_bottom) > 1) p2 = 0; //ignore bottom tiles if on slope$(13_10)	if (p1 == 1) || (p2 == 1)$(13_10)	{$(13_10)	if (hsp > 0) x = x - (x mod Tile_size) + (Tile_size-1) - (bbox_right - x);$(13_10)	else x = x - (x mod Tile_size) - (bbox_left - x);$(13_10)	hsp = 0$(13_10)	}$(13_10)x += hsp;$(13_10)//Horizontal Collision !old!$(13_10)//if (place_meeting(x+hsp,y,GRND))$(13_10)//{	$(13_10)//hsp = 0;$(13_10)//key_right = 0;$(13_10)//key_left = 0;$(13_10)//}$(13_10)$(13_10)$(13_10)//Vertical collision checking$(13_10)if (tilemap_get_at_pixel(coll_mapid,x,bbox_bottom+vsp) <= 1)$(13_10){$(13_10)	if vsp > 0 bbox_side = bbox_bottom else bbox_side = bbox_top;$(13_10)	p1 = tilemap_get_at_pixel(coll_mapid,bbox_left,bbox_side+vsp) != 0$(13_10)	p2 = tilemap_get_at_pixel(coll_mapid,bbox_right,bbox_side+vsp) != 0$(13_10)	{$(13_10)		if (vsp > 0) y = y - (y mod 64) + 63 - (bbox_bottom - y);$(13_10)		else y = y - (y mod 64) - (bbox_top - y);$(13_10)		//vsp = 0$(13_10)	}$(13_10)}$(13_10)var floordist = infloor1(coll_mapid,x,bbox_bottom+vsp);$(13_10)if (floordist >= 0)$(13_10){$(13_10)	y += vsp;$(13_10)	y -= (floordist + 1);$(13_10)	vsp = 0;$(13_10)	floordist = -1;$(13_10)}$(13_10)y += vsp;$(13_10)//Vertical Collision !old!$(13_10)//if (place_meeting(x,y+vsp,GRND))$(13_10)//{	$(13_10)//vsp = 0; $(13_10)//dbl_jump = false;$(13_10)//air = 0 $(13_10)//}$(13_10)//y = y + vsp;$(13_10)$(13_10)$(13_10)$(13_10)//jump$(13_10)//if place_meeting(x+hsp,y+1,GRND) && (jump = true)$(13_10)//{$(13_10)//vsp =-7;$(13_10)//air = 1;$(13_10)//}$(13_10)//jump = false;$(13_10)//check dbljump(see drag end event)$(13_10)//check land$(13_10)if air = 1 && place_meeting(x,y+vsp,GRND)$(13_10){$(13_10)air = 0;$(13_10)key_right = 0;$(13_10)key_left = 0;$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)//Change Sprite Idle$(13_10)if air = 0 $(13_10){$(13_10)if key_left = 0 && key_right = 0$(13_10){$(13_10)	sprite_index = Stickman_Stand;$(13_10)}$(13_10)}$(13_10)//coconut cannon/idle sprties$(13_10)if global.ccntgun = true && face_right = true sprite_index = Stickman_faceRccnt;$(13_10)else$(13_10)if face_right = true sprite_index = Stickman_faceR;$(13_10)if global.ccntgun = true && face_left = true sprite_index = Stickman_faceLccnt;$(13_10)else$(13_10)if face_left = true sprite_index = Stickman_faceL;$(13_10)//Change Sprite Right$(13_10)if key_right = 1 $(13_10){$(13_10)	if air = 1 $(13_10)	{$(13_10)		if dbl_jump = false sprite_index = Stickman_jumpR; $(13_10)	}$(13_10)	else$(13_10)$(13_10)	{$(13_10)		sprite_index = Stickman_sideR;$(13_10)	}$(13_10)}$(13_10)//Change Sprite Left$(13_10)if key_left = 1 $(13_10){$(13_10)	if air = 1 $(13_10)	{$(13_10)		 if dbl_jump = false sprite_index = Stickman_jumpL;$(13_10)	}$(13_10)	else$(13_10)	{$(13_10)		 sprite_index = Stickman_sideL;$(13_10)	}$(13_10)}$(13_10)//check sprite dbl jump$(13_10)if alarm_get(0) > 29 sprite_index = Stickman_dbl_jumpR;$(13_10)if image_speed > 0$(13_10){$(13_10)if image_index > image_number -1 dbl_jump = false;$(13_10)}"
with(Stickman) {
//Define Variables
var bbox_side;
var p1;	
var p2;
//check user input
one_touch = device_mouse_check_button(0,mb_any);
two_touch = device_mouse_check_button(1,mb_any);
//Calculate Movement
var move = key_right - key_left;
hsp = move * walksp;
vsp += grv;
move_1 = move;
//Is my middle center touching the floor at the start of this frame?
 grounded = (infloor1(coll_mapid,x,bbox_bottom+1) >= 0);
//jump
if (grounded || (infloor1(coll_mapid,bbox_left,bbox_bottom+1) >= 0) || (infloor1(coll_mapid,bbox_right,bbox_bottom+1) >= 0))
{
if jump = true
{
	vsp = spd_jump;
	grounded = false;
	jump = false

}
}
//Horizontal collision checking
if hsp > 0 bbox_side = bbox_right else bbox_side = bbox_left;
p1 = tilemap_get_at_pixel(coll_mapid,bbox_side+hsp,bbox_top) != 0
p2 = tilemap_get_at_pixel(coll_mapid,bbox_side+hsp,bbox_bottom) != 0
	if (tilemap_get_at_pixel(coll_mapid,x,bbox_bottom) > 1) p2 = 0; //ignore bottom tiles if on slope
	if (p1 == 1) || (p2 == 1)
	{
	if (hsp > 0) x = x - (x mod Tile_size) + (Tile_size-1) - (bbox_right - x);
	else x = x - (x mod Tile_size) - (bbox_left - x);
	hsp = 0
	}
x += hsp;
//Horizontal Collision !old!
//if (place_meeting(x+hsp,y,GRND))
//{	
//hsp = 0;
//key_right = 0;
//key_left = 0;
//}


//Vertical collision checking
if (tilemap_get_at_pixel(coll_mapid,x,bbox_bottom+vsp) <= 1)
{
	if vsp > 0 bbox_side = bbox_bottom else bbox_side = bbox_top;
	p1 = tilemap_get_at_pixel(coll_mapid,bbox_left,bbox_side+vsp) != 0
	p2 = tilemap_get_at_pixel(coll_mapid,bbox_right,bbox_side+vsp) != 0
	{
		if (vsp > 0) y = y - (y mod 64) + 63 - (bbox_bottom - y);
		else y = y - (y mod 64) - (bbox_top - y);
		//vsp = 0
	}
}
var floordist = infloor1(coll_mapid,x,bbox_bottom+vsp);
if (floordist >= 0)
{
	y += vsp;
	y -= (floordist + 1);
	vsp = 0;
	floordist = -1;
}
y += vsp;
//Vertical Collision !old!
//if (place_meeting(x,y+vsp,GRND))
//{	
//vsp = 0; 
//dbl_jump = false;
//air = 0 
//}
//y = y + vsp;



//jump
//if place_meeting(x+hsp,y+1,GRND) && (jump = true)
//{
//vsp =-7;
//air = 1;
//}
//jump = false;
//check dbljump(see drag end event)
//check land
if air = 1 && place_meeting(x,y+vsp,GRND)
{
air = 0;
key_right = 0;
key_left = 0;
}







//Change Sprite Idle
if air = 0 
{
if key_left = 0 && key_right = 0
{
	sprite_index = Stickman_Stand;
}
}
//coconut cannon/idle sprties
if global.ccntgun = true && face_right = true sprite_index = Stickman_faceRccnt;
else
if face_right = true sprite_index = Stickman_faceR;
if global.ccntgun = true && face_left = true sprite_index = Stickman_faceLccnt;
else
if face_left = true sprite_index = Stickman_faceL;
//Change Sprite Right
if key_right = 1 
{
	if air = 1 
	{
		if dbl_jump = false sprite_index = Stickman_jumpR; 
	}
	else

	{
		sprite_index = Stickman_sideR;
	}
}
//Change Sprite Left
if key_left = 1 
{
	if air = 1 
	{
		 if dbl_jump = false sprite_index = Stickman_jumpL;
	}
	else
	{
		 sprite_index = Stickman_sideL;
	}
}
//check sprite dbl jump
if alarm_get(0) > 29 sprite_index = Stickman_dbl_jumpR;
if image_speed > 0
{
if image_index > image_number -1 dbl_jump = false;
}
}