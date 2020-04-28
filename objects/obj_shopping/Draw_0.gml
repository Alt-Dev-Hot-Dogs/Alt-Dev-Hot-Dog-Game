/// @description Insert description here
// You can write your code in this editor
draw_self();
textListX = x+190;
textListY = y+170;
spriteX = x+25;
spriteY = y-5;
spriteTextX = x+100;
spriteTextY = y+90;
draw_set_color(c_black);
if(showList)
{
	draw_sprite(spr_shoppingList,0,x+60,y+60);
	draw_text(textListX,textListY,itemListString);
}
else
{
	for(i=0; i < 9; i++)
	{
		if(i<3)
		{
			draw_sprite_ext(spr_food,ds_list_find_value(listOfItems,i),spriteX+(i*200),spriteY,0.5,0.5,0,-1,1);
			draw_text(spriteTextX+(i*200),spriteTextY,string(ds_list_find_value(listOfItems,i)+1));
		}
		else if(i<6)
		{
			draw_sprite_ext(spr_food,ds_list_find_value(listOfItems,i),spriteX+((i-3)*200),spriteY+100,0.5,0.5,0,-1,1);
			draw_text(spriteTextX+((i-3)*200),spriteTextY+100,string(ds_list_find_value(listOfItems,i)+1));
		}
		else
		{
			draw_sprite_ext(spr_food,ds_list_find_value(listOfItems,i),spriteX+((i-6)*200),spriteY+200,0.5,0.5,0,-1,1);
			draw_text(spriteTextX+((i-6)*200),spriteTextY+200,string(ds_list_find_value(listOfItems,i)+1));
		}
	}
}