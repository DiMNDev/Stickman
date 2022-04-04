if (state ==0) 
{
	timer++;
	// check fade in
	if (timer>= duration)
	{
		
		//Set state
		state = 1;
	}
}
//Exit state
else if (state ==1)
{timer--;
	//check faded
	if (timer<= 0){
	
	//Set state
	state = 0;
	}
}
//Set alpha
image_alpha = timer / duration;