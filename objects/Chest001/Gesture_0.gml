if distance_to_object(Stickman) < 128{
if global.chestKey > 0 {
	sprite_index = animatedChest
	global.chestKey -= 1
} else {
	with(instance_create_depth(x,y,-9999,dialougeTextbox)){
scr_gameScript("tutorial","chestLocked");
};
}
}