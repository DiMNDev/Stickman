/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1532A558
/// @DnDArgument : "code" "/// @description Checks to see if the floor height of a given tile, returns how deep in the floor$(13_10)/// @arg tilemap$(13_10)/// @arg x$(13_10)/// @arg y$(13_10)function infloor1(arg0,arg1,arg2)$(13_10){$(13_10)var pos = tilemap_get_at_pixel(arg0,arg1,arg2)$(13_10)$(13_10)if (pos > 0)$(13_10){$(13_10)	if (pos == 1) return (arg2 mod Tile_size);$(13_10)	var thefloor = global.heights[(arg1 mod Tile_size) + (pos * Tile_size)];$(13_10)	return ((arg2 mod Tile_size) - thefloor);$(13_10)} else return -(Tile_size - (arg2 mod Tile_size));$(13_10)}"
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
	var thefloor = global.heights[(arg1 mod Tile_size) + (pos * Tile_size)];
	return ((arg2 mod Tile_size) - thefloor);
} else return -(Tile_size - (arg2 mod Tile_size));
}