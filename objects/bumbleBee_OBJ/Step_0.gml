#region BuZzBuZz
ran2_1 = irandom_range(-2,2);
ran2_2 = irandom_range(-2,2);
ran8_1 = irandom_range(-8,8);
ran8_2 = irandom_range(-8,8);
x = x + ran2_1;
y = y + ran2_2;
#endregion
#region Stay close to hive until finished
if localHive.image_index < 4 {
	if !point_in_circle(x,y,hiveX,hiveY,64) {
		move_towards_point(hiveX,hiveY,5);
	}
	x = x + ran2_1;
	y = y + ran2_2;
}
#endregion
#region Stay in range of local hive
if localHive.image_index == 4 {
if point_in_circle(x,y,hiveX,hiveY,256) {
	y = y + ran2_2;
	x = x + ran2_1;	
} 
if !point_in_circle(x,y,hiveX,hiveY,256) {
	move_towards_point(hiveX,hiveY,4);	
}
}
#endregion
#region Move towards Stickman
if instance_exists(Stickman) && localHive.image_index == 4 {
if stung = false {
	if point_in_circle(x,y,Stickman.x,Stickman.y,96) {
		move_towards_point(Stickman.x, Stickman.y, 3);
		y = y + ran2_1;
		x = x + ran2_2;
	}
		if !point_in_circle(x,y,Stickman.x,Stickman.y,96) {
		y = y + ran2_1;
		x = x + ran2_2;
	}

}
if stung = true
{
	move_towards_point(hiveX ,hiveY, 4)
	y = y + ran2_2;
	x = x + ran2_1;
if y < Stickman.y -128 stung = false;
}
}
#endregion
