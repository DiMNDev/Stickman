//Draw bounding box of menu
draw_set_font(hud_FNT);
draw_roundrect_color(8, screenHeight - 136, screenWidth - 8, screenHeight - 8, c_ltgray,c_dkgray,false)
draw_rectangle_color(16, screenHeight - 128, screenWidth - 16,screenHeight - 16,c_dkgray,c_dkgray,c_dkgray,c_dkgray,false)
#region Health bar
//Draw health bar
draw_text_color(24, screenHeight - 118,"Health", c_white,c_white,c_white,c_white,1)
draw_healthbar(96, screenHeight - 120, screenWidth - 24,screenHeight - 104,health,c_black,c_red,c_green,0,true,true);
#endregion
#region Draw lives hearts
draw_text_color(24, screenHeight - 100,"Lives", c_white,c_white,c_white,c_white,1)
i = 0
xShift = 0
while i < lives{
	
	draw_sprite(livesHeart,-1,96 + xShift,screenHeight - 100)
	xShift += 24
	i += 1
	
}
#endregion
#region Draw score
draw_text_color(24, screenHeight - 80,"Score", c_white,c_white,c_white,c_white,1)
draw_text_color(72, screenHeight - 80,score, c_white,c_white,c_white,c_white,1)
#endregion
#region Create coconut gun selection button
if global.ccntgunaquired = true {
	if point_in_rectangle(xtouch,ytouch,96,screenHeight - 72, 128 , screenHeight - 40)
	{
		if global.ccntgun = false {
			global.ccntgun = true;
			Stickman.walksp -= 1;
		}
		else if global.ccntgun = true {
			global.ccntgun = false;
			Stickman.walksp += 1;
		}
	}
	xtouch = 0;
	ytouch = 0;
	if global.ccntgun = true
		draw_sprite(ccntButtonSelected,-1,96,screenHeight - 72);
		else
		draw_sprite(ccntButtonStatic,-1,96,screenHeight - 72);
}
#endregion