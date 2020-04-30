/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_black);
draw_set_font(font_CheckList);
if(!timeIsUp)
{
	minute = floor(timer/60);
	second = floor(timer%60);
	displaySecond = second;
	
	if(second<30)
		{
			displaySecond = second + 30;
		}
		else
		{
			displaySecond = second;
		}
		
	if(minute<4&& hideOnce)
	{
		driftStart = true;
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
	else if(minute<2)
	{
		delay = 40;	
	}
	
	//Top right of score 948, 8
	//Bot left of score 500,77
	
	// when bar is full x will be 500 and y will be 8. Scale is 112
	draw_sprite_ext(Score_Bar,0,948-4.48*playerScore,9,1.2*(1+playerScore/10)+playerScore,1,0,-1,1);
	draw_text(x+70,y+10,"Time Left: \n"+ string(minute)+":"+string(displaySecond));	
}