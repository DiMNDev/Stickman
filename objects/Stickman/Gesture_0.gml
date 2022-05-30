localX = event_data[? "posX"];
localY = event_data[? "posY"];

if instance_exists(HUDTop) instance_destroy(HUDTop)
else
instance_create_depth(x+16,y+16,-2,HUDTop)