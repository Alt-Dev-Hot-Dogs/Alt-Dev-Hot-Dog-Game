/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_red);
draw_set_font(font_Words);
text_x = x + 80;
text_y = y + 105;
box_x  = x + 10;
box_y  = y + 85;
secondColumn = false;

length = ds_list_size(arrayOfWork)
for(i = 0; i < length; i++)
{
	//If the number of tasks reach the bottom of the list,
	//shift the x and restart the y so it starts at the top again
	if(text_y+(40*i)>550 && !secondColumn)
	{
		draw_sprite(spr_checkbox,ds_list_find_value(stateOfEachTask,i),box_x+120,box_y+(40*(i-8)));
		draw_text(text_x + 120, text_y + (40*(i-8)), ds_list_find_value(arrayOfWork,i));
	}
	else if(text_y+(40*i)>550 && secondColumn)
	{
		draw_sprite(spr_checkbox,ds_list_find_value(stateOfEachTask,i),box_x+240,box_y+(40*(i-16)));
		draw_text(text_x + 240, text_y + (40*(i-16)), ds_list_find_value(arrayOfWork,i));
	}
	else
	{
		draw_sprite(spr_checkbox,ds_list_find_value(stateOfEachTask,i),box_x,box_y+(40*i));
		draw_text(text_x, text_y + (40*i), ds_list_find_value(arrayOfWork,i));
	}
	if(i ==15)
	{
		secondColumn = true;	
	}
}