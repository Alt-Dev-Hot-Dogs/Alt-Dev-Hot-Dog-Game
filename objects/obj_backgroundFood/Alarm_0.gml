/// @description Insert description here
// You can write your code in this editor

if(cookingDone)
{
	alarm[0] = -1;	
}
else
{
	if(heatSetting=="Low")
	{
		cookingTime +=1;
	}
	else if(heatSetting=="Medium")
	{
		cookingTime +=3;
	}
	else if(heatSetting=="High")
	{
		cookingTime +=6;
	}
	alarm[0] = 1*room_speed;	
}