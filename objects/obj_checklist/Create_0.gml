/// @description Insert description here
// You can write your code in this editor

//Some variables to use


//Create a list for the tasks
arrayOfWork= ds_list_create();
//Set a timer that will add in another task every 15 seconds
alarm[0] = 2*room_speed;
//Create the first 5 games at random
for(i=0; i < 5; i++)
{
	task = irandom_range(1,3);
	switch(task)
	{
		case 1: 
			ds_list_add(arrayOfWork, "Red");
		break;
		case 2:
			ds_list_add(arrayOfWork, "Blue");
		break;
		case 3: 
			ds_list_add(arrayOfWork, "Pink");
		break;	
	}
}
