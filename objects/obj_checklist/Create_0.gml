/// @description Insert description here
// You can write your code in this editor

//Some variables to use

timeForEachTask = 2;

//This creates the list that is drawn on the task list
arrayOfWork= ds_list_create();
//This keeps track of what should the sprite for the checkbox look like
stateOfEachTask = ds_list_create();
//This array will be the the tasks that have NOT been completed
//This is so that when finding a task, it will not look for the same one in the array
arrayOfNotDoneWork = ds_list_create();

//Set a timer that will add in another task every 15 seconds
alarm[0] = timeForEachTask*room_speed;
//Create the first 5 games at random

for(i=0; i < 5; i++)
{
	task = irandom_range(1,3);
	switch(task)
	{
		case 1: 
			ds_list_add(arrayOfWork, "Red");
			ds_list_add(arrayOfNotDoneWork, "Red");
			ds_list_add(stateOfEachTask, 0);
		break;
		case 2:
			ds_list_add(arrayOfWork, "Blue");
			ds_list_add(arrayOfNotDoneWork, "Blue");
			ds_list_add(stateOfEachTask, 0);
		break;
		case 3: 
			ds_list_add(arrayOfWork, "Pink");
			ds_list_add(arrayOfNotDoneWork, "Pink");
			ds_list_add(stateOfEachTask, 0);
		break;	
	}
}

