/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0A93D900
/// @DnDArgument : "code" "//Initial Game Setup$(13_10)#macro Tile_size 32$(13_10)heightstoget = sprite_get_width(sCol);$(13_10)Tiles = heightstoget / Tile_size;$(13_10)$(13_10)//Create Tiles$(13_10)var layerid = layer_create(0,"Tiles");$(13_10)Tilemapid = layer_tilemap_create(layerid,0,0,TileSet1,Tiles,1);$(13_10)$(13_10)for (var i = 0; i <= Tiles; i++)$(13_10){$(13_10)	tilemap_set(Tilemapid,i,i,0);$(13_10)}"
//Initial Game Setup
#macro Tile_size 32
heightstoget = sprite_get_width(sCol);
Tiles = heightstoget / Tile_size;

//Create Tiles
var layerid = layer_create(0,"Tiles");
Tilemapid = layer_tilemap_create(layerid,0,0,TileSet1,Tiles,1);

for (var i = 0; i <= Tiles; i++)
{
	tilemap_set(Tilemapid,i,i,0);
}