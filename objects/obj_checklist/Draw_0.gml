/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_red);
draw_set_font(font_Words);
text_x = x + 60;
text_y = y + 95;
box_x  = x + 10;
box_y  = y + 85;
secondColumn = false;

length = ds_list_size(arrayOfWork)
for(i = 0; i < length; i++)
{
	//If the number of tasks reach the bottom of the list,
	//shift the x and restart the y so it starts at the top again
	if(text_y+(40*i)>600 && !secondColumn)
	{
		draw_sprite_ext(spr_checkbox,ds_list_find_value(stateOfEachTask,i),box_x+100,box_y+(30*(i-10)),0.7,0.7,0,-1,1);
		draw_text_transformed(text_x + 100, text_y + (30*(i-10)), ds_list_find_value(arrayOfWork,i),0.7,0.7,0);
	}
	else if(text_y+(40*i)>600 && secondColumn)
	{
		draw_sprite_ext(spr_checkbox,ds_list_find_value(stateOfEachTask,i),box_x+200,box_y+(30*(i-20)),0.7,0.7,0,-1,1);
		draw_text_transformed(text_x + 200, text_y + (30*(i-20)), ds_list_find_value(arrayOfWork,i),0.7,0.7,0);
	}
	else
	{
		draw_sprite_ext(spr_checkbox,ds_list_find_value(stateOfEachTask,i),box_x,box_y+(30*i),0.7,0.7,0,-1,1);
		draw_text_transformed(text_x, text_y + (30*i), ds_list_find_value(arrayOfWork,i),0.7,0.7,0);
	}
	if(i ==19)
	{
		secondColumn = true;	
	}
}