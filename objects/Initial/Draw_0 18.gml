/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 675721E1
/// @DnDArgument : "code" "draw_tilemap(Tilemapid,0,0);$(13_10)ychg = 64;$(13_10)xchg = 32;$(13_10)for (var i = heightstoget-1; i >= 0; i--)$(13_10){$(13_10)	var check = 0;$(13_10)	while (check <= Tile_size)$(13_10)	{$(13_10)		global.heights[i] = check;$(13_10)		draw_text(xchg,ychg,global.heights[i]);$(13_10)		ychg += 12;$(13_10)		if ychg >= 840$(13_10)		{$(13_10)			ychg = 64;$(13_10)			xchg += 24;$(13_10)		}$(13_10)		if (check == Tile_size) break;$(13_10)		if (surface_getpixel(application_surface,i,check) != c_black) break;$(13_10)		check++;$(13_10)	}$(13_10)	$(13_10)}$(13_10)room_goto_next();"
draw_tilemap(Tilemapid,0,0);
ychg = 64;
xchg = 32;
for (var i = heightstoget-1; i >= 0; i--)
{
	var check = 0;
	while (check <= Tile_size)
	{
		global.heights[i] = check;
		draw_text(xchg,ychg,global.heights[i]);
		ychg += 12;
		if ychg >= 840
		{
			ychg = 64;
			xchg += 24;
		}
		if (check == Tile_size) break;
		if (surface_getpixel(application_surface,i,check) != c_black) break;
		check++;
	}
	
}
room_goto_next();