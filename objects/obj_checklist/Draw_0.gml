/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_red);
draw_set_font(font_Words);
text_x = x + 80;
text_y = y + 145;
box_x  = x + 10;
box_y  = y + 125;

length = ds_list_size(arrayOfWork)
for(i = 0; i < length; i++)
{
	draw_sprite(spr_checkbox,0,box_x,box_y+(40*i));
	draw_text(text_x, text_y + (40*i), ds_list_find_value(arrayOfWork,i));
}