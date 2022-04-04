//BuZzBuZz
//ran8 = irandom_range(-8,8);
ran2 = irandom_range(-2,2);

//y = y + ranY;
//x = x + ranX;

//if lives > 0 {
//if distance_to_object(Stickman) < 160 && stung = false{
//move_towards_point(Stickman.x,Stickman.y,1);
//}

//if stung = true {
//	move_towards_point(x + ranX, Stickman.y - 64,5);
//	if Stickman.y - y > 100 stung = false;

//}
//}

//
if point_in_circle(x,y,xstart,ystart,256) {
	y = y + ran2;
	x = x + ran2;	
}
if !point_in_circle(x,y,xstart,ystart,256) {
	move_towards_point(xstart,ystart,3);	
}

//More Precise
if instance_exists(Stickman) {
if stung = false {
	if point_in_circle(x,y,Stickman.x,Stickman.y,128) {
		move_towards_point(Stickman.x, Stickman.y, 3);
		y = y + ran2;
		x = x + ran2;
	}
		if !point_in_circle(x,y,Stickman.x,Stickman.y,128) {
		y = y + ran2;
		x = x + ran2;
	}

}
if stung = true
{
move_towards_point(x ,y - 144,4)
	y = y + ran2;
	x = x + ran2;
if y < Stickman.y -128 stung = false;
}
}