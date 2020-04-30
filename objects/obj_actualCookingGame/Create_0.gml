/// @description Insert description here
// You can write your code in this editor

//If the game is over already
if(obj_backgroundFood.gameOver)
{
	obj_backgroundFood.gameOver = false;
	obj_backgroundFood.foodStatus = "Uncooked";
	obj_backgroundFood.heatSetting = "Off";
	obj_backgroundFood.alarm[0] = -1;
	obj_backgroundFood.doOnce = true;
	obj_backgroundFood.cookingTime = 0;
	obj_backgroundFood.cookingDone = false;
	obj_backgroundFood.youWin = false;
	obj_backgroundFood.typeOfFood = irandom_range(0,3);
}
catchFoodOnce = true;
updateListOnce = true;
//Off 0
//low 1
//medium 3
//high 6
//70-90 is cooked
//>90 is burnt
//<70 is cooking/undercooked
//Total duration is 15 seconds on highest

