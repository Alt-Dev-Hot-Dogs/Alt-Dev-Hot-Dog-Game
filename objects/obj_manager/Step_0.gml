/// @description Insert description here
// You can write your code in this editor
if(timer>0)
{
	timer = timer - delta_time/1000000;	
}
else
{
	timeIsUp = true;	
	timer=0;
	if(doOnce)
	{
		obj_basicArt.persistent = false;
		obj_checklist.persistent = false;
		obj_button1.persistent = false;
		obj_button2.persistent = false;
		obj_button3.persistent = false;
		restart = true;
		room_goto(rm_End);
		doOnce = false;
		
	}
}
if(!hideOnce)
{
	if(mouse_x>500 && mouse_x<645&& mouse_y>99 && mouse_y<210)
	{
		visible = true;	
	}
	else
	{
		visible = false;
	}	
}
