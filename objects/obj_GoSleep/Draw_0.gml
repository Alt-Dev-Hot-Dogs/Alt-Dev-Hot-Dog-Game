/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_color(c_white);
//draw_sprite_ext(spr_Clock,clockArt,x+450,y+60,2,2,0,-1,1);
hour   = floor(time/60);
minute = floor(time%60);
draw_text(x+450,y+60,string(hour)+":"+string(minute));
if(currentDistraction>=0)
{
	draw_sprite_ext(spr_distractions,currentDistraction,x+450,y+150,0.7,0.7,0,-1,1);
}