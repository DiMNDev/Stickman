//Is my middle center touching the floor at the start of this frame?
var grounded = (infloor1(global.coll_mapid,x,bbox_bottom+1) >= 0);
vsp += grv;
if hsp > 0 bbox_side = bbox_right; else bbox_side = bbox_left;
p1 = tilemap_get_at_pixel(global.coll_mapid,bbox_side+hsp,bbox_top);
p2 = tilemap_get_at_pixel(global.coll_mapid,bbox_side+hsp,bbox_bottom);
	if (tilemap_get_at_pixel(global.coll_mapid,x,bbox_bottom) > 1) p2 = 0; //ignore bottom tiles if on slope
	if (p1 == 1) || (p2 == 1)
	{
	if (hsp > 0) 
		x = x - (x mod Tile_size) + (Tile_size-1) - (bbox_right - x);
	else x = x - (x mod Tile_size) - (bbox_left - x);
	if hsp = 3 {
		hsp = -3;
		sprite_index = chatterboxLeft_SP;
	}
	else if hsp = -3 {
		hsp = 3;
		sprite_index = chatterboxRight_SP;
	}
	}
x += hsp;
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
			 y += abs(infloor1(global.coll_mapid,x,bbox_bottom+1));
		}
	}
}
