/// @description Insert description here

/*Creates a random outcome when a projectile collides with instance
it will spin and stop or it will destroy itself upon collision
*/
rand = irandom_range(0,10)
if rand > 4 {
	collisionCheck = true
	rand = 0
	} else {
	image_index = 0;	
	}

