if (state ==0) 
{
	timer++;
	// change room
	if (timer>= duration)
	{
		
		Stickman.x = Stickman.xstart;
		Stickman.y = Stickman.ystart;
		//Set state
		state = 1;
	}
}
//Exit state
else if (state ==1)
{timer--;
	//Destroy
	if (timer<= 0)
	{instance_destroy();
	}
}
//Set alpha
alpha = timer / duration;