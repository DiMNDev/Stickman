#region Define draw preferences
depth = 999;
draw_set_alpha(.7);
#endregion
#region Draw bounding box of menu
draw_set_font(Dialouge_FNT);
//bottom rectangle
draw_roundrect_color(0, 0, screenWidth, 128, c_ltgray,c_dkgray,false)
//top rectangle
draw_rectangle_color(8, 8, screenWidth - 8,120,c_dkgray,c_dkgray,c_dkgray,c_dkgray,false)
#endregion
#region Health bar
//Draw health bar
draw_text_color(16, 96,"Health", c_white,c_white,c_white,c_white,1)
draw_healthbar(76, 100, screenWidth - 48,116,health,c_black,c_red,c_green,0,true,true);
#endregion
#region Draw lives hearts
draw_text_color(16, 76,"Lives", c_white,c_white,c_white,c_white,1)
i = 0
xShift = 0
while i < lives{
	
	draw_sprite(livesHeart,-1,76 + xShift,82)
	xShift += 24
	i += 1
	
}
#endregion
#region Draw score
draw_text_color(16, 56,"Score", c_white,c_white,c_white,c_white,1)
draw_text_color(76, 60,score, c_white,c_white,c_white,c_white,1)
#endregion
#region Draw level
draw_text_color(16, 36,"Level", c_white,c_white,c_white,c_white,1)
draw_text_color(76, 36,global.level, c_white,c_white,c_white,c_white,1)
#endregion
//Buttons drawn are 32x32
#region Draw menu button
draw_sprite(menuButtonStatic,-1,global.guiWidth - 48,16);
if PIR_GUI(global.guiWidth - 48,16,xtouch,ytouch,32){
	FadetoRoom(MainMenu,15,c_black);
	instance_destroy(Stickman);
}
#endregion
#region Draw backpack button
draw_sprite(backpackButtonStatic_SP,-1,global.guiWidth - 48,64);

if PIR_GUI(global.guiWidth - 48,64,xtouch,ytouch,32) == true{
	global.buttonTouched = true;
	with(Stickman) {
	alarm_set(1,10);	
	}
	xtouch = 0;
	ytouch = 0;
if !instance_exists(backpackMenu) {
instance_create_depth(x+16,y+16,-2,backpackMenu)
}
else{

instance_destroy(backpackMenu)
}

}
#endregion
#region Create coconut gun selection button
//if global.ccntgunaquired = true {
//	if PIR_GUI(96,screenHeight - 72, 128 , screenHeight - 40)
//	{
//		if global.ccntgun = false {
//			global.ccntgun = true;
//			Stickman.walksp -= 1;
//		}
//		else if global.ccntgun = true {
//			global.ccntgun = false;
//			Stickman.walksp += 1;
//		}
//	}
//	xtouch = 0;
//	ytouch = 0;
//	if global.ccntgun = true
//		draw_sprite(ccntButtonSelected,-1,global.guiWidth - 48,16);
//		else
//		draw_sprite(ccntButtonStatic,-1,96,screenHeight - 72);
//}
#endregion
//reset draw alpha
draw_set_alpha(1);
