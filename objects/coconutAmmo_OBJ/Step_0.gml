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