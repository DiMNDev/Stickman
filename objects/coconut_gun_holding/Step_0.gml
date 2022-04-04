
//Flip y scale based on image angle
if image_angle >= 90 && image_angle <= 270 image_yscale = -1;
else image_yscale = 1;

//Check direction facing and correct 
if Stickman.face_left = true && image_angle = 0 image_angle = 180;
if Stickman.face_right = true && image_angle = 180 image_angle = 0;

//Check direction and mirror angle
if Stickman.face_left = true && StickRight = true {
	image_angle = Weapon_flip_FUNC(abs(image_angle));
	StickLeft = false;
	StickRight = false;
}

if Stickman.face_right = true && StickLeft = true {
	image_angle = Weapon_flip_FUNC(abs(image_angle));
	StickLeft = false;
	StickRight = false;
}

//Change angle of image based on "Tx" and "Ty" which are points based on player touch.
if global.one_touch = 1 && global.two_touch = 1 {
gunAngle = abs(point_direction(x,y,Tx,Ty));
image_angle = gunAngle;

}


