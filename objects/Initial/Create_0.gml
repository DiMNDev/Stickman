//Initial Game Setup
#macro Tile_size 64
heightstoget = sprite_get_width(sCol64);
Tiles = heightstoget / Tile_size;

//Create Tiles
var layerid = layer_create(0,"Tiles");
Tilemapid = layer_tilemap_create(layerid,0,0,TileSet3,Tiles,1);

for (var i = 0; i <= Tiles; i++)
{
	tilemap_set(Tilemapid,i,i,0);
}