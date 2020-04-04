/// @description Insert description here
// You can write your code in this editor

if(!gameDone)
{
	if(addDistraction)
	{
		addDistraction = false;
		randomX = irandom_range(0,50);
		randomY = irandom_range(10,25);
		ds_list_shuffle(listOfDistractions);
		currentDistraction = ds_list_find_value(listOfDistractions,0);
	}
	if(keyboard_check_pressed(vk_space))
	{
		completedDistractions++;
		addDistraction = true;
		distractionMultiplier +=5;
	}
	if(floor(time/60)==11 || completedDistractions==5)
	{
		gameDone = true	
		if(floor(time/60)==11)
		{
			index = ds_list_find_index(obj_checklist.arrayOfNotDoneWork, "Pink");
			ds_list_replace(obj_checklist.stateOfEachTask,index,2);
			ds_list_replace(obj_checklist.arrayOfNotDoneWork,index,"None");
		}
		else
		{
			index = ds_list_find_index(obj_checklist.arrayOfNotDoneWork, "Pink");
			ds_list_replace(obj_checklist.stateOfEachTask,index,1);
			ds_list_replace(obj_checklist.arrayOfNotDoneWork,index,"None");
			playerScore += 5;
		}	
	}
}