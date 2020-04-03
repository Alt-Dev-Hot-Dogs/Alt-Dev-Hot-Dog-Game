/// @description Insert description here
// You can write your code in this editor
draw_self();
initialSprX = x+20;
initialSprY = y+10;
controlX = x+170;

draw_set_color(c_white);
for(i=0;i<3;i++)
{
	draw_sprite(spr_shirt,ds_list_find_value(shirts,i),initialSprX+(120*i),initialSprY);
	draw_text(controlX+(120*i),initialSprY+40,control[i]);
	draw_sprite(spr_pants,ds_list_find_value(pants,i),initialSprX+(120*i),initialSprY+120);
	draw_text(controlX+(120*i),initialSprY+160,control[i+3]);
}