/// @description Insert description here
// You can write your code in this editor
randomtask = irandom_range(1,3);
switch(randomtask)
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
		case 4:
			ds_list_add(arrayOfWork, "Green");
			ds_list_add(arrayOfNotDoneWork, "Green");
			ds_list_add(stateOfEachTask, 0);
		break;
}
alarm[0] = timeForEachTask*room_speed;	