//Set font
draw_set_font(hud_FNT);
//Draw bounding box of menu
//Inner 
draw_roundrect_color(global.guiWidth - 96, 120, global.guiWidth , global.guiHeight - 256, c_ltgray,c_dkgray,false)
//Outer
draw_rectangle_color(global.guiWidth - 88, 128, global.guiWidth - 8 , global.guiHeight - 262,c_dkgray,c_dkgray,c_dkgray,c_dkgray,false)

#region Create coconut gun selection button
if global.ccntgunaquired = true {
	//Draw coconut count
	draw_text_color(x2,172,global.coconutCount,c_white,c_white,c_white,c_white,1)
	if point_in_rectangle(xtouch,ytouch,global.guiWidth - 64,140, x2 + 64 , 172)
	{
		
		if global.ccntgun = false {
			global.ccntgun = true;
			//instance_create_depth(Stickman.x,Stickman.y +12,-210,coconut_gun_holding);
			Stickman.walksp -= 1;
		}
		else if global.ccntgun = true {
			global.ccntgun = false;
			//instance_destroy(coconut_gun_holding);
			Stickman.walksp += 1;
		}
	xtouch = 0;
	ytouch = 0;
	}


	if global.ccntgun = true
		draw_sprite(ccntButtonSelected,-1,global.guiWidth - 64,140);
		else
		draw_sprite(ccntButtonStatic,-1,global.guiWidth - 64,140);
}

#endregion