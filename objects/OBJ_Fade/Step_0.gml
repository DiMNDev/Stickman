if (state ==0) 
{
	timer++;
	// change room
	if (timer>= duration)
	{
		room_goto(target_room);
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