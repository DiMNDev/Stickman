depth = 99
draw_sprite(backpackButtonStatic_SP,-1,global.guiWidth - 48,112);

if point_in_rectangle(xtouch,ytouch,global.guiWidth - 48,32,x2 + 64,96){
	
if !instance_exists(backpackMenu) 
instance_create_depth(x+16,y+16,-2,backpackMenu)

else

instance_destroy(backpackMenu)

}


xtouch = 0;
ytouch = 0;