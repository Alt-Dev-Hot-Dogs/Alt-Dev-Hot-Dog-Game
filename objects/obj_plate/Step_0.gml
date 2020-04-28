/// @description Insert description here
// You can write your code in this editor
if(canMove)
{
	if(keyboard_check(vk_left)||keyboard_check(ord("A")))
	{
		if(x<20)
		{	
		}
		else
		{
			x -=5;
		}
	}
	else if(keyboard_check(vk_right)||keyboard_check(ord("D")))
	{
		if(x>600)
		{	
		}
		else
		{
			x+=5	
		}
	}
}