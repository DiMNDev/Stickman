/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 60E6F5E6
/// @DnDArgument : "code" "//Get collision tile map id$(13_10)coll_mapid = layer_tilemap_get_id("Collision64");$(13_10)//character control$(13_10)air = 0;$(13_10)hsp = 0;$(13_10)hsp_fraction = 0;$(13_10)vsp = 0;$(13_10)vsp_fraction = 0;$(13_10)spd_jump = -8;$(13_10)grv = 0.4;$(13_10)grounded = false$(13_10)walksp = 4;$(13_10)jump = false;$(13_10)dbl_jump = false;$(13_10)face_right = 0;$(13_10)face_left = 0;$(13_10)//character tracking$(13_10)Stick_X = x;$(13_10)Stick_y = y;$(13_10)//user input$(13_10)one_touch = false$(13_10)two_touch = false$(13_10)flick = -1;$(13_10)key_left = 0;$(13_10)key_right = 0;$(13_10)drag_x = 0;$(13_10)drag_y = 0;$(13_10)//Weapon acquisiton$(13_10)global.ccntgun = false;$(13_10)//item counters$(13_10)coin_count = 0;$(13_10)//Determine screen size$(13_10)scr_height = display_get_gui_height();$(13_10)scr_width = display_get_gui_width();$(13_10)scr_center = scr_width/2;$(13_10)$(13_10)"
//Get collision tile map id
coll_mapid = layer_tilemap_get_id("Collision64");
//character control
air = 0;
hsp = 0;
hsp_fraction = 0;
vsp = 0;
vsp_fraction = 0;
spd_jump = -8;
grv = 0.4;
grounded = false
walksp = 4;
jump = false;
dbl_jump = false;
face_right = 0;
face_left = 0;
//character tracking
Stick_X = x;
Stick_y = y;
//user input
one_touch = false
two_touch = false
flick = -1;
key_left = 0;
key_right = 0;
drag_x = 0;
drag_y = 0;
//Weapon acquisiton
global.ccntgun = false;
//item counters
coin_count = 0;
//Determine screen size
scr_height = display_get_gui_height();
scr_width = display_get_gui_width();
scr_center = scr_width/2;