/// @description Insert description here
// You can write your code in this editor
if(keyboard_check(ord(1)))
{
	obj_backgroundFood.heatSetting = "Off";
}
else if(keyboard_check(ord(2)))
{
	obj_backgroundFood.heatSetting = "Low";
}
else if(keyboard_check(ord(3)))
{
	obj_backgroundFood.heatSetting = "Medium";
}
else if(keyboard_check(ord(4)))
{
	obj_backgroundFood.heatSetting = "High";
}
if(catchFoodOnce && obj_backgroundFood.cookingDone)
{
	obj_plate.visible = true;
	obj_meat.visible = true;
	obj_plate.canMove = true;
	obj_meat.canMove = true;
	catchFoodOnce = false;
}
if(obj_backgroundFood.gameOver)   
{
	if(updateListOnce)
	{
		if(obj_backgroundFood.youWin)
		{
			index = ds_list_find_index(obj_checklist.arrayOfNotDoneWork, "Green");
			ds_list_replace(obj_checklist.stateOfEachTask,index,1);
			ds_list_replace(obj_checklist.arrayOfNotDoneWork,index,"None");
			obj_backgroundFood.gameOver = true;
			playerScore +=5;
			audio_play_sound(Checked_off,10,0);
		}
		else
		{
			obj_backgroundFood.gameOver = true;
			index = ds_list_find_index(obj_checklist.arrayOfNotDoneWork, "Green");
			ds_list_replace(obj_checklist.stateOfEachTask,index,2);
			ds_list_replace(obj_checklist.arrayOfNotDoneWork,index,"None");
 			audio_play_sound(button_10,10,0);
		}	
		updateListOnce=false;
	}
}