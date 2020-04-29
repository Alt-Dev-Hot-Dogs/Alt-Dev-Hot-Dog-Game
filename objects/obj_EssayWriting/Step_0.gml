/// @description Insert description here
// You can write your code in this editor


playerLength = string_length(playerString);

if(!typingDone)
{
	if(keyboard_check_pressed(vk_anykey))
	{
		playerString = keyboard_string;
	}
	if(playerLength==sampleLength)
	{
		if(playerString = targetSentence)
		{
			color = c_green;	
			typingDone = true;
			
		}
		else
		{
			color = c_red;	
		}
	}
	else
	{
		color = c_black;	
	}	
}
else
{
	keyboard_string = "";
	if(!gameDone)
	{
		if(keyboard_check_pressed(ord(1))||keyboard_check_pressed(ord(2))||keyboard_check(ord(3))||keyboard_check(ord(4)))
		{
			if(keyboard_check_pressed(ord(correctIndex)))
			{
				index = ds_list_find_index(obj_checklist.arrayOfNotDoneWork, "Red");
				ds_list_replace(obj_checklist.stateOfEachTask,index,1);
				ds_list_replace(obj_checklist.arrayOfNotDoneWork,index,"None");
				gameDone = true;
				playerScore +=5;
				rightOrWrong = 0;
				audio_play_sound(Checked_off,10,0);
			}
			else
			{
				index = ds_list_find_index(obj_checklist.arrayOfNotDoneWork, "Red");
				ds_list_replace(obj_checklist.stateOfEachTask,index,2);
				ds_list_replace(obj_checklist.arrayOfNotDoneWork,index,"None");
				gameDone = true;
				rightOrWrong = 1;
				
			}	       
		}	
	}
}