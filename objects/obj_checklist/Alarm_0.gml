/// @description Insert description here
// You can write your code in this editor
randomtask = irandom_range(1,3);
switch(randomtask)
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
alarm[0] = 2*room_speed;	