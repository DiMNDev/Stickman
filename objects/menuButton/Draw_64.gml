draw_sprite(menuButtonStatic,-1,32,32);
if point_in_rectangle(xtouch,ytouch,32,32,96,96){
	FadetoRoom(MainMenu,15,c_black);
	instance_destroy(Stickman);
}
