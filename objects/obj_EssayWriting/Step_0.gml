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
		if(keyboard_check(ord(0))||keyboard_check(ord(1))||keyboard_check(ord(2))||keyboard_check(ord(3)))
		{
			if(keyboard_check(ord(correctIndex)))
			{
				index = ds_list_find_index(obj_checklist.arrayOfNotDoneWork, "Red");
				show_debug_message(index);
				ds_list_replace(obj_checklist.stateOfEachTask,index,1);
				ds_list_replace(obj_checklist.arrayOfNotDoneWork,index,"None");
				gameDone = true;
			}
			else
			{
				index = ds_list_find_index(obj_checklist.arrayOfNotDoneWork, "Red");
				ds_list_replace(obj_checklist.stateOfEachTask,index,2);
				ds_list_replace(obj_checklist.arrayOfNotDoneWork,index,"None");
				gameDone = true;
			}	
		}	
	}
}