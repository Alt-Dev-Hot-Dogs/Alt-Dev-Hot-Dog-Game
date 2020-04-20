/// @description Insert description here
// You can write your code in this editor
if(numOfChoices<3)
{
	if(keyboard_check_pressed(ord(1)))
	{
		if(ds_list_find_index(itemListPos,1)!=0)
		{
			correctChoices++;
			numOfChoices++;
		}
		else
		{
			numOfChoices++;
		}
	}
	else if(keyboard_check_pressed(ord(2)))
	{
		if(ds_list_find_index(itemListPos,2)!=0)
		{
			correctChoices++;
			numOfChoices++;
		}
		else
		{
			numOfChoices++;
		}
	}
	else if(keyboard_check_pressed(ord(3)))
	{
		if(ds_list_find_index(itemListPos,3)!=0)
		{
			correctChoices++;
			numOfChoices++;
		}
		else
		{
			numOfChoices++;
		}
	}
	else if(keyboard_check_pressed(ord(4)))
	{
		if(ds_list_find_index(itemListPos,4)!=0)
		{
			correctChoices++;
			numOfChoices++;
		}
		else
		{
			numOfChoices++;
		}
	}
	else if(keyboard_check_pressed(ord(5)))
	{
		if(ds_list_find_index(itemListPos,5)!=0)
		{
			correctChoices++;
			numOfChoices++;
		}
		else
		{
			numOfChoices++;
		}
	}
	else if(keyboard_check_pressed(ord(6)))
	{
		if(ds_list_find_index(itemListPos,6)!=0)
		{
			correctChoices++;
			numOfChoices++;
		}
		else
		{
			numOfChoices++;
		}
	}
	else if(keyboard_check_pressed(ord(7)))
	{
		if(ds_list_find_index(itemListPos,7)!=0)
		{
			correctChoices++;
			numOfChoices++;
		}
		else
		{
			numOfChoices++;
		}
	}
	else if(keyboard_check_pressed(ord(8)))
	{
		if(ds_list_find_index(itemListPos,8)!=0)
		{
			correctChoices++;
			numOfChoices++;
		}
		else
		{
			numOfChoices++;
		}
	}
	else if(keyboard_check_pressed(ord(9)))
	{
		if(ds_list_find_index(itemListPos,9)!=0)
		{
			correctChoices++;
			numOfChoices++;
		}
		else
		{
			numOfChoices++;
		}
	}
}
else
{
	if(doOnce)
	{
		if(correctChoices==3)
		{
			index = ds_list_find_index(obj_checklist.arrayOfNotDoneWork, "Pink");
			ds_list_replace(obj_checklist.stateOfEachTask,index,1);
			ds_list_replace(obj_checklist.arrayOfNotDoneWork,index,"None");
			gameDone = true;
			playerScore +=5;
		}
		else
		{
			index = ds_list_find_index(obj_checklist.arrayOfNotDoneWork, "Pink");
			ds_list_replace(obj_checklist.stateOfEachTask,index,2);
			ds_list_replace(obj_checklist.arrayOfNotDoneWork,index,"None");
		}	
		doOnce = false;
	}
}