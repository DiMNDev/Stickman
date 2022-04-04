//Define camera position
view_xport[0] = x;
view_yport[0] = y;
//Monkey Bar ID
monkeyBarId = instance_nearest(x,y,monkeyBars_OBJ)
//Create player HUD
instance_create_depth(1,1,1,menuHUD);
//Device orientation
L = 0;
P = 0;
flipLocal = 0;
global.flip = 0;
//Player settings
oneHanded = false;
twoHanded = true;
//Get collision tile map id
global.coll_mapid = layer_tilemap_get_id("Collision64");

//Establsih Player States
enum pState{
	normal,ladder, monkeyBars, ccntGun
}
pState = pState.normal;
//character control
air = 0;
runTimer = 0;

ladderId = 0;
hsp = 0;
hsp_fraction = 0;
vsp = 0;
vsp_fraction = 0;
spd_jump = -9;
grv = 0.4;
walksp = 4;
climb_speed = 3;
jump = false;
dbl_jump = false;
face_right = 0;
face_left = 0;
//character tracking
//Stick_X = x;
//Stick_y = y;
//user input
global.one_touch = false
global.two_touch = false
flick = 0;
key_left = 0;
key_right = 0;
key_up = 0;
key_down = 0;
drag_x = 0;
drag_y = 0;
guidrag_x = 0;
guidrag_y = 0;
guiTap_x = 0;
guiTap_y = 0;
guiDragStarty = 0;
guiDragEndY = 0;
dragging = false;
global.buttonTouched = false;
//Weapon acquisiton
global.ccntgunaquired = false;
global.ccntgun = false;
//item counters
global.coconutCount = 0
lives = 3;
health = 1;
reGen = true;
score = 0;
global.chestKey = 0;
global.maxHealth = 100;
stung = false;
inVini = 0;
clamp(health,0,100);
coin_count = 0;
//Enemy kill counter
global.beeTally = 0;
//Determine screen size
scr_width = display_get_gui_width();
	//scr_height = display_get_gui_height();
scr_center = scr_width/2;