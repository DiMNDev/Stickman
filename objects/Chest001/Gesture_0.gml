if distance_to_object(Stickman) < 128{
if global.chestKey > 0 {
	sprite_index = animatedChest
	global.chestKey -= 1
}
}