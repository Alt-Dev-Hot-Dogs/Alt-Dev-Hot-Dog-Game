/// @description Insert description here
// You can write your code in this editor
meatX = x + 160;
meatY = y + 150;
if(!obj_backgroundFood.cookingDone)
{
	//Draw the background
	if(obj_backgroundFood.heatSetting=="Off")
	{
		draw_sprite_ext(spr_stove,0,x,y,1.95,1.7,0,-1,1);
	}
	else if(obj_backgroundFood.heatSetting=="Low")
	{
		draw_sprite_ext(spr_stove,1,x,y,1.95,1.7,0,-1,1);
	}
	else if(obj_backgroundFood.heatSetting=="Medium")
	{
		draw_sprite_ext(spr_stove,2,x,y,1.95,1.7,0,-1,1);
	}
	else if(obj_backgroundFood.heatSetting=="High")
	{
		draw_sprite_ext(spr_stove,3,x,y,1.95,1.7,0,-1,1);
	}
	//Draw the food
	if(obj_backgroundFood.cookingTime==0)
	{
		draw_sprite(spr_cookingFood,0,meatX,meatY);	
	}
	else if(obj_backgroundFood.cookingTime<70)
	{
		draw_sprite(spr_cookingFood,1,meatX,meatY);	
	}
	else if(obj_backgroundFood.cookingTime<91)
	{
		draw_sprite(spr_cookingFood,2,meatX,meatY);	
	}
	else if(obj_backgroundFood.cookingTime>90)
	{
		draw_sprite(spr_cookingFood,3,meatX,meatY);	
	}
}
else
{
	draw_sprite_ext(spr_kitchenTable,0,x,y,1.95,1.7,0,-1,1);
}