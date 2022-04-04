/// @description Checks to see if the floor height of a given tile, returns how deep in the floor
/// @arg tilemap
/// @arg x
/// @arg y
function infloor1(arg0,arg1,arg2)
{
var pos = tilemap_get_at_pixel(arg0,arg1,arg2)

if (pos > 0)
{
	if (pos == 1) return (arg2 mod Tile_size);
	var thefloor = global.jsonStruct[(arg1 mod Tile_size) + (pos * Tile_size)];
	return ((arg2 mod Tile_size) - thefloor);
} else return -(Tile_size - (arg2 mod Tile_size));
}