/// @description Insert description here
// You can write your code in this editor
if(!gameDone)
{
	//This gets the number between 0-5 to know which shirt was chosen
	if(keyboard_check_pressed(ord("R")))
	{
		playerChoiceShirt = ds_list_find_value(shirts, 0);
	}
	else if(keyboard_check_pressed(ord("T")))
	{
		playerChoiceShirt = ds_list_find_value(shirts, 1);
	}
	else if(keyboard_check_pressed(ord("Y")))
	{
		playerChoiceShirt = ds_list_find_value(shirts, 2);
	}
	//This gets the number between 0-5 to know which pair of pants were chosen
	if(keyboard_check_pressed(ord("F")))
	{
		playerChoicePants = ds_list_find_value(pants,0);
	}
	else if(keyboard_check_pressed(ord("G")))
	{
		playerChoicePants = ds_list_find_value(pants,1);
	}
	else if(keyboard_check_pressed(ord("H")))
	{
		playerChoicePants = ds_list_find_value(pants,2);
	}
	//Once a shirt and pants have been chosen
	if(playerChoicePants>-1 && playerChoiceShirt>-1)
	{
		gameDone = true;
		wardrobeSeed+=12;
		//If the number is correct, they win this minigame
		if(string_pos(playerChoicePants,combo[playerChoiceShirt])!=0)
		{
			index = ds_list_find_index(obj_checklist.arrayOfNotDoneWork, "Blue");
			ds_list_replace(obj_checklist.stateOfEachTask,index,1);
			ds_list_replace(obj_checklist.arrayOfNotDoneWork,index,"None");
			playerScore += 5;
			audio_play_sound(Checked_off,10,0);
		}
		//other wise they lose
		else
		{
			index = ds_list_find_index(obj_checklist.arrayOfNotDoneWork, "Blue");
			ds_list_replace(obj_checklist.stateOfEachTask,index,2);
			ds_list_replace(obj_checklist.arrayOfNotDoneWork,index,"None");
			audio_play_sound(button_10,10,0);
		}
	}
}