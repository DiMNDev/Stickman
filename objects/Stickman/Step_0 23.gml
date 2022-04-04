with(Stickman) {
	
//Define Variables
var bbox_side;
var p1;	
var p2;
//check user input
global.one_touch = device_mouse_check_button(0,mb_any);
global.two_touch = device_mouse_check_button(1,mb_any);
//Button touched reset
if global.one_touch = 1 && global.two_touch = 1 {
	key_right = 0;
	key_left = 0;
}
#region Device orientation
if flipLocal != global.flip instance_create_depth(x,y,-1,orientational);
flipLocal = global.flip
global.flip = L - P
if display_get_orientation() == display_landscape || display_get_orientation() == display_landscape_flipped {
	view_set_visible(0,false);
	view_set_visible(1,true);
	L = 1;
	P = 0;
	
}
else
{
	view_set_visible(1,false);
	view_set_visible(0,true);
	L = 0;
	P = 1;
}
//if display_get_orientation() == display_portrait || display_get_orientation() == display_portrait_flipped {
//	view_set_visible(1,false);
//	view_set_visible(0,true);
//	L = 0;
//	P = 1;
	
//}


#endregion

#region Lives and Health
if lives == 0 {
	instance_destroy(self);	
	FadetoRoom(MainMenu,15,c_black)
}
if reGen = true if health <= global.maxHealth health ++
else
reGen = false;
if health <= 0 {
	
	
	if !instance_exists(loseLifeFade_OBJ){
		if lives > 1 instance_create_depth(x,y,1,loseLifeFade_OBJ);
		reGen = true;
		lives -= 1;
		
	}

}
if inVini > 0 {
	if instance_exists(bumbleBee_OBJ) bumbleBee_OBJ.solid = false;
	if image_alpha == 1 image_alpha = .02;
	else image_alpha += .02;
	inVini --;
}
else if instance_exists(bumbleBee_OBJ) bumbleBee_OBJ.solid = true;

#endregion

#region Calculate Movement
if pState != pState.monkeyBars {
var move = key_right - key_left;
hsp = move * walksp;
vsp += grv;
}

#endregion

#region Check tile ladder

if place_meeting(x,y+32,ladderBlock_OBJ) && key_down = 1 && hsp = 0 pState = pState.ladder;
else if place_meeting(x,y,ladderBlock_OBJ) && hsp = 0 pState = pState.ladder;
else if pState != pState.monkeyBars pState = pState.normal;
if !place_meeting(x,y + 52,ladderBlock_OBJ) pState = pState.normal;

#endregion

#region Check tile monkey bars

if pState != pState.monkeyBars {
if  place_meeting(x + sign(((key_right-key_left) * 64)),y,monkeyBars_OBJ) = true pState = pState.monkeyBars
else if pState != pState.ladder pState = pState.normal;
}

#endregion

#region Grounded
//Is my middle center touching the floor at the start of this frame?
var grounded = (infloor1(global.coll_mapid,x,bbox_bottom+1) >= 0);

//jump
if (grounded || (infloor1(global.coll_mapid,bbox_left,bbox_bottom+1) >= 0) || (infloor1(global.coll_mapid,bbox_right,bbox_bottom+1) >= 0))
{
if jump = true && grounded = 1
{
	//audio_play_sound(jumpHuya_SND,0,false);
	vsp += spd_jump;
	grounded = 0;
	jump = false;
	
}

if grounded = 1 && jump = false flick = 0;
}
if dbl_jump = true
{
	vsp = 0;
	vsp += spd_jump * 1.1;
	
}
if grounded = 1 air = false;
else if grounded = 0 air = true;
//Double Jump
//if dbl_jump = true {
//	vsp = vsp * 1.5;
//    dbl_jump = false;
//}

//stop on land with no input
if global.one_touch = 0 && global.two_touch = 0 && grounded = 1
{
	key_right = 0;
	key_left = 0;
	jump = false;
}
#endregion

#region Smooth movement fraction fun
//Reapply factions
hsp += hsp_fraction;
vsp += vsp_fraction;

//Store and Remove fractions
//Important : go into collision with whole integers ONLY!
hsp_fraction = hsp - (floor(abs(hsp)) * sign(hsp));
hsp -= hsp_fraction;
vsp_fraction = vsp - (floor(abs(vsp)) * sign(vsp));
vsp -= vsp_fraction;
#endregion

#region Collision checking

//Horizontal collision checking
if hsp > 0 bbox_side = bbox_right; else bbox_side = bbox_left;
p1 = tilemap_get_at_pixel(global.coll_mapid,bbox_side+hsp,bbox_top);
p2 = tilemap_get_at_pixel(global.coll_mapid,bbox_side+hsp,bbox_bottom);
	if (tilemap_get_at_pixel(global.coll_mapid,x,bbox_bottom) > 1) p2 = 0; //ignore bottom tiles if on slope
	if (p1 == 1) || (p2 == 1)
	{
	if (hsp > 0) x = x - (x mod Tile_size) + (Tile_size-1) - (bbox_right - x);
	else x = x - (x mod Tile_size) - (bbox_left - x);
	hsp = 0
	}
x += hsp;
//cancel vertical collision on ladder
if pState != pState.ladder {
	if pState != pState.monkeyBars {
//Vertical collision checking
if (tilemap_get_at_pixel(global.coll_mapid,x,bbox_bottom+vsp) <= 1)
{
	if (vsp >= 0) bbox_side = bbox_bottom; else bbox_side = bbox_top;
	p1 = tilemap_get_at_pixel(global.coll_mapid,bbox_left,bbox_side+vsp)
	p2 = tilemap_get_at_pixel(global.coll_mapid,bbox_right,bbox_side+vsp)
	if (p1 == 1) || (p2 == 1)
	{
		if (vsp >= 0) y = y - (y mod Tile_size) + (Tile_size-1) - (bbox_bottom - y);
		else y = y - (y mod Tile_size) - (bbox_top - y);
		vsp = 0;
	}
}

var floordist = infloor1(global.coll_mapid,x,bbox_bottom+vsp);
if (floordist >= 0)
{
	y += vsp;
	y -= (floordist + 1);
	vsp = 0;
	floordist = -1;
}
y += vsp;

//Walk down slopes
if (grounded)
{
	y += abs(floordist)-1;
	//if at base of current tile
	if ((bbox_bottom mod Tile_size) == Tile_size-1)
	{
		//if the slope contines
		if (tilemap_get_at_pixel(global.coll_mapid,x,bbox_bottom+1) > 1)
		{
			//move there
			if key_down = 1 y += abs(infloor1(global.coll_mapid,x,bbox_bottom+1));
		}
	}
}
}
}
#endregion

#region Player state
switch pState
{
case pState.normal:{

image_speed = 1;
	//Double Jump

if dbl_jump = true {
	image_speed = 2;
	sprite_index = Stickman_dbl_jump_ball

}
	if image_index > image_number - 1 {
		image_speed = 1;
		dbl_jump = false;
		if face_right = 1 sprite_index = Stickman_jumpR;
		if face_left = 1 sprite_index = Stickman_jumpL;
	}


//Change Sprite Idle
if grounded = 1 
{
if key_left = 0 && key_right = 0 && flick < 2
{
	sprite_index = Stickman_Stand;
}
}
//coconut cannon/idle sprties

if flick < 2 {

if face_right = true sprite_index = Stickman_faceR;

if face_left = true sprite_index = Stickman_faceL;

}

//Sprite change before angled gun

//if flick < 2 {
//if global.ccntgun = true && face_right = true sprite_index = Stickman_faceRccnt;
//else
//if face_right = true sprite_index = Stickman_faceR;
//if global.ccntgun = true && face_left = true sprite_index = Stickman_faceLccnt;
//else
//if face_left = true sprite_index = Stickman_faceL;
//}

//Change Sprite Right
if key_right = 1 && runTimer = 0 && flick < 2
{
	if grounded = 0 
	{
		sprite_index = Stickman_jumpR; 
	}
	else

	{
		sprite_index = Stickman_sideR;
	}
}
//Change Sprite Left
if key_left = 1 && runTimer = 0 && flick < 2
{
	if grounded = 0 
	{
		 sprite_index = Stickman_jumpL;
	}
	else
	{
		 sprite_index = Stickman_sideL;
	}
}

	
//Running shoes sprite
if runTimer > 0 {
	if key_left = 1 sprite_index = Stickman_sideLRunner;
	if key_right = 1 sprite_index = Stickman_sideRRunner;
}


//if dbl_jump = true { 
//	sprite_index = Stickman_dbl_jump_ball;
//	image_speed = 2;
//	while sprite_index = Stickman_dbl_jump_ball {
//	if image_number >= image_index {
//	dbl_jump = false;
//	image_speed = 1;
//	}
//}
//}




break
}
case pState.ladder:{
	
sprite_index = Stickman_climb;
var climb = key_down - key_up;
ladderId = instance_nearest(x,y,ladderBlock_OBJ)
x = ladderId.x
if key_up = 0 && key_down = 0 image_speed = 0;
if key_up = 1 || key_down = 1 image_speed = 1;
vsp = climb * climb_speed;
y += vsp;
break
}
case pState.monkeyBars: {
	

var swing = key_right - key_left;
monkeyBarId = instance_nearest(x,y,monkeyBars_OBJ)
y = monkeyBarId.y
if key_left = 0 && key_right = 0 {
	image_speed = 0;
	hsp = 0;
}
if key_left = 1 || key_right = 1 image_speed = 1;
//Monkey Bars collision sprite change
hsp = swing * 2;
x += hsp;
flick = 0;
jump = false;
dbl_jump = false;
break

}
case pState.ccntGun: {
	sprite_index = Stickman_aim;
	break
}
}

#endregion

#region weapon aim sprite
if global.ccntgun = true sprite_index = Stickman_aim;
#endregion

#region Runners High
if runTimer > 0 {
	walksp = 8;
	runTimer -= 1;
}
if runTimer = 0 walksp = 4;
if !instance_exists(runningShoes_OBJ) == true && runTimer == 0 instance_activate_object(runningShoes_OBJ);
#endregion
}