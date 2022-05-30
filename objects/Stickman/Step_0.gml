with(Stickman) {
	
//Define Variables for collision checking
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

#region Calculate Movement & friction

if pState != pState.monkeyBars  {
	if pState == pState.slide {
		key_left = 0;
		key_right = 0;
	}
var move = key_right - key_left;
hsp = (move * walksp) + momentum;
if key_right = 1 hsp = clamp(hsp,0,momentumMax);
if key_left = 1 hsp = clamp(hsp,-momentumMax,0);
vsp += grv;

if place_meeting(x,y+33,iceBlock_OBJ) {
	fric = .05;
}

else if skeleton_animation_get() != "Slide" {
	fric = .5;
}

if (move > 0)
	{
		momentum += .2;
		momentum = clamp (momentum,0,momentumMax);
	}

else if (move < 0)
	{
		momentum -= .2;
		momentum = clamp (momentum,-momentumMax,0);
	}

if (face_right = 1) && (move = 0)
	{
		momentum -= fric;
		momentum = clamp (momentum,0,momentumMax);
	}

else if (face_left = 1) && (move = 0)
	{
		momentum += fric;
		momentum = clamp (momentum,-momentumMax,0);
	}
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

#region Grounded
//Check vsp limit
if (vsp >= 14 && floorDistance < -55) vspDamage = round(vsp);
vspDamage = clamp(vspDamage,0,15);
//Is my middle center touching the floor at the start of this frame?
var grounded = (infloor1(global.coll_mapid,x,bbox_bottom+1) >= 0);
//falling damage
if grounded == 1 {
	switch(vspDamage) {
		case 14:
			health -= 10;
			vspDamage = 0;
		break;
		case 15:
			health -= 15;
			vspDamage = 0;
		break;
		case 16:
			health -= 20;
			vspDamage = 0;
		break;
		case 17:
			health -= 25;
			vspDamage = 0;
		break;
		default:
			health += 0;
			vspDamage = 0;
		break;
	}
}
//jump
if (grounded || (infloor1(global.coll_mapid,bbox_left,bbox_bottom+1) >= 0) || (infloor1(global.coll_mapid,bbox_right,bbox_bottom+1) >= 0))
{
if jump = true && grounded = 1 
{
	//audio_play_sound(jumpHuya_SND,0,false);
	vsp += spd_jump;
	jump = false;
	grounded = 0;
	
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

//stop on land with no input
if global.one_touch = 0 && global.two_touch = 0 && grounded = 1
{
	key_right = 0;
	key_left = 0;
	friction = 0;
	jump = false;
}
#endregion 

#region Check underground
if !place_meeting(x,y,underground_OBJ) {
	layer_set_visible("Underground_top",false);
	layer_set_visible("Underground_bottom",false);
} else {
layer_set_visible("Underground_top",true);
	layer_set_visible("Underground_bottom",true);	
}
//	shaderAlpha += alphaIncrement;
	
//} else {
//shaderAlpha -= alphaIncrement;	
//}

//shaderAlpha = clamp(shaderAlpha,0,1);
#endregion

#region Check tile ladder

if place_meeting(x,y+32,ladderBlock_OBJ) && key_down = 1 && hsp = 0 pState = pState.ladder;
else if place_meeting(x,y,ladderBlock_OBJ) && hsp = 0 pState = pState.ladder;
else if pState != pState.monkeyBars pState = pState.normal;
if !place_meeting(x,y + 52,ladderBlock_OBJ) pState = pState.normal;

#endregion

#region Check tile monkey bars

if pState != pState.monkeyBars {
if  place_meeting(x + sign(((key_right-key_left) * 64)),y,monkeyBars_OBJ) == true pState = pState.monkeyBars
else if pState != pState.ladder pState = pState.normal;
}

#endregion

#region Check jumping
if pState != pState.ladder && pState != pState.monkeyBars {
if air = true pState = pState.jumping else  pState = pState.normal;
}
#endregion

#region Check slide
if flickDirection == "down" && sprite_index == Stickman_walk {
	pState = pState.slide;
}
#endregion

#region Check ccnt gun
if global.ccntgun = true pState = pState.ccntGun;
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
	hsp = 0;
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
floorDistance = floordist;
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
			y += abs(infloor1(global.coll_mapid,x,bbox_bottom+1));
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

//Change Sprite Idle
if grounded = 1 
{
if face_left == false && face_right == false && flick < 2 && hsp = 0
{
	sprite_index = Stickman_Stand;
}
}


if flick < 2 && key_left == 0 && key_right == 0 {

if face_right = true sprite_index = Stickman_faceR;

if face_left = true sprite_index = Stickman_faceL;

}

//Change Sprite Right
if key_right = 1 && runTimer = 0 && flick < 2
{
	if sprite_index != Stickman_walk {
		sprite_index = Stickman_walk;
		}
}
//Change Sprite Left
if key_left = 1 && runTimer = 0 && flick < 2
{
	if sprite_index != Stickman_walk {
		sprite_index = Stickman_walk;
		}

} 
if sprite_index = Stickman_walk {
if face_right == true part_particles_create(global.particleSystem01,x-14,y+32,global.walkParticle,1);
if face_left == true part_particles_create(global.particleSystem01,x+14,y+32,global.grassParticle,1);

if face_left = true  && image_xscale = 1 image_xscale = -1;
if face_right = true && image_xscale = -1 image_xscale = 1;
} else image_xscale = 1;
	
//Running shoes sprite
if runTimer > 0 {
	if key_left = 1 sprite_index = Stickman_sideLRunner;
	if key_right = 1 sprite_index = Stickman_sideRRunner;
}

break
}
case pState.jumping: {
image_xscale = 1;
if dbl_jump != true {
	if face_right = true
{
		sprite_index = Stickman_jumpR;
} else if face_left = true
{
		 sprite_index = Stickman_jumpL;
}
} else
//Double Jump

if dbl_jump = true {
	image_speed = 2;
	sprite_index = Stickman_dbl_jump_ball
	if image_index > image_number - 1 {
		image_speed = 1;
		dbl_jump = false;
		if face_right = 1 sprite_index = Stickman_jumpR;
		if face_left = 1 sprite_index = Stickman_jumpL;
	}

}


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
	#region weapon aim sprite
if face_left = true && image_xscale = 1 image_xscale = -1;
if face_right = true && image_xscale = -1 image_xscale = 1;
if global.one_touch = 1 && global.two_touch = 1 {
	printVar = draggingY - y;	
	aimAngle = aimDirection(draggingY,y);	
}

if key_right = 1 || key_left = 1 {
	aimWalk = aimWalk.walk;
}
else {
	aimWalk = aimWalk.aim;
}

switch aimWalk {
	
case aimWalk.aim: {
	sprite_index = Stickman_aim;
	image_speed = 0;
	image_index = aimAngle;
	break
}
case aimWalk.walk: {
	sprite_index = Stickman_aim_walking;
	if air = true {
		image_index = 5;
		image_speed = 0; 
		}
		else image_speed = 1;
	
switch aimAngle {
//full up
case 1:{ if skeleton_animation_get() != "walkAimUp01" skeleton_animation_set("walkAimUp01");
	break
	}
case 2:{ if skeleton_animation_get() != "walkAimUp02" skeleton_animation_set("walkAimUp02");
	break
	}
case 3:{ if skeleton_animation_get() != "walkAimUp03" skeleton_animation_set("walkAimUp03");
	break
	}
case 4:{ if skeleton_animation_get() != "walkAimUp04" skeleton_animation_set("walkAimUp04");
	break
	}
case 5:{ if skeleton_animation_get() != "walkAimUp05" skeleton_animation_set("walkAimUp05");
	break
	}
//full down
case 11:{ if skeleton_animation_get() != "walkAimDown01" skeleton_animation_set("walkAimDown01");
	break
	}
case 12:{ if skeleton_animation_get() != "walkAimDown02" skeleton_animation_set("walkAimDown02");
	break
	}
case 13:{ if skeleton_animation_get() != "walkAimDown03" skeleton_animation_set("walkAimDown03");
	break
	}
case 14:{ if skeleton_animation_get() != "walkAimDown04" skeleton_animation_set("walkAimDown04");
	break
	}
case 15:{ if skeleton_animation_get() != "walkAimDown05" skeleton_animation_set("walkAimDown05");
	break
	}
//neutral
default:{ if skeleton_animation_get() != "walk00" skeleton_animation_set("walk00");
	break
	}
	
}
break
}


}
#endregion
	break
}
case pState.slide: {
	
if skeleton_animation_get() != "Slide" {
	skeleton_animation_set("Slide");
	fric = .05;
}
if image_index == 4 {
	image_speed = 0;
	image_index = 5;
}
if hsp == 0  {
image_speed = 2
if image_index == 20 {
if face_right == true sprite_index = Stickman_faceR;
if face_left == true sprite_index = Stickman_faceL;
flickDirection = "null";
pState = pState.normal;
}
}
	break
}
}

#endregion

#region Runners High
if runTimer > 0 {
	momentumMax = 8;
	runTimer -= 1;
}
if runTimer = 0 momentumMax = 4;
if !instance_exists(runningShoes_OBJ) == true && runTimer == 0 instance_activate_object(runningShoes_OBJ);
#endregion
}
