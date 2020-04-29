/// @description Insert description here
// You can write your code in this editor

if(!cookingDone && !gameOver)
{
	if(doOnce&&heatSetting!="Off")
	{
		doOnce = false;
		alarm[0] = 1*room_speed;
	}
	if(cookingTime>=70&&heatSetting=="Off")
	{
		cookingDone = true;
	}
	else if(cookingTime>90)
	{
		cookingDone = true;
		gameOver = true;
		index = ds_list_find_index(obj_checklist.arrayOfNotDoneWork, "Green");
		ds_list_replace(obj_checklist.stateOfEachTask,index,2);
		ds_list_replace(obj_checklist.arrayOfNotDoneWork,index,"None");
	}
}