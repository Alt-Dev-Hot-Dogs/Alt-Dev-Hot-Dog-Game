/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_black);
draw_set_font(font_CheckList);
if(!timeIsUp)
{
	minute = floor(timer/60);
	second = floor(timer%60);
	if(minute<4&& hideOnce)
	{
		visible = false;
		hideOnce = false;
	}
	else if(minute<3)
	{
		lagStart = true;
	}
	else if(minute<2)
	{
		delay = 30;	
	}
	else if(minute<1)
	{
		delay = 40;	
	}
	
	// when bar is full x will be 498 and y will be 33. Scale is 108
	draw_sprite_ext(Score_Bar,0,927-4.29*playerScore,33,.8*(1+playerScore/10)+playerScore,1,0,-1,1);
	draw_text(x+70,y+10,"Time Left: \n"+ string(minute)+":"+string(second));	
}