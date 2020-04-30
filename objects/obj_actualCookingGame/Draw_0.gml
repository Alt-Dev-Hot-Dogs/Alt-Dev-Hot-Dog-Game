/// @description Insert description here
// You can write your code in this editor
meatX = x + 130;
meatY = y + 110;
if(!obj_backgroundFood.cookingDone)
{
	//Draw the background
	if(obj_backgroundFood.heatSetting=="Off")
	{
		draw_sprite_ext(Stove,0,x,y,1.95,1.7,0,-1,1);
		draw_sprite_ext(Pan,0,x+120,y+100,1.5,1.5,0,-1,1);
	}
	else if(obj_backgroundFood.heatSetting=="Low")
	{
		draw_sprite_ext(Stove,1,x,y,1.95,1.7,0,-1,1);
		draw_sprite_ext(Pan,0,x+120,y+100,1.5,1.5,0,-1,1);
	}
	else if(obj_backgroundFood.heatSetting=="Medium")
	{
		draw_sprite_ext(Stove,2,x,y,1.95,1.7,0,-1,1);
		draw_sprite_ext(Pan,0,x+120,y+100,1.5,1.5,0,-1,1);
	}
	else if(obj_backgroundFood.heatSetting=="High")
	{
		draw_sprite_ext(Stove,3,x,y,1.95,1.7,0,-1,1);
		draw_sprite_ext(Pan,0,x+120,y+100,1.5,1.5,0,-1,1);
	}
	//Draw the food
	if(obj_backgroundFood.cookingTime==0)
	{
		if(obj_backgroundFood.typeOfFood==0)
		{
			draw_sprite(Chicken,0,meatX,meatY);	
		}
		else if(obj_backgroundFood.typeOfFood==1)
		{
			draw_sprite(Noodles,0,meatX,meatY);	
		}
		else if(obj_backgroundFood.typeOfFood==2)
		{
			draw_sprite(Egg,0,meatX,meatY);	
		}
		else if(obj_backgroundFood.typeOfFood==3)
		{
			draw_sprite(Veggie,0,meatX,meatY);	
		}
	}
	else if(obj_backgroundFood.cookingTime<70)
	{
		if(obj_backgroundFood.typeOfFood==0)
		{
			draw_sprite(Chicken,1,meatX,meatY);	
		}
		else if(obj_backgroundFood.typeOfFood==1)
		{
			draw_sprite(Noodles,1,meatX,meatY);	
		}
		else if(obj_backgroundFood.typeOfFood==2)
		{
			draw_sprite(Egg,1,meatX,meatY);	
		}
		else if(obj_backgroundFood.typeOfFood==3)
		{
			draw_sprite(Veggie,1,meatX,meatY);	
		}
	}
	else if(obj_backgroundFood.cookingTime<91)
	{
		if(obj_backgroundFood.typeOfFood==0)
		{
			draw_sprite(Chicken,2,meatX,meatY);	
		}
		else if(obj_backgroundFood.typeOfFood==1)
		{
			draw_sprite(Noodles,2,meatX,meatY);	
		}
		else if(obj_backgroundFood.typeOfFood==2)
		{
			draw_sprite(Egg,2,meatX,meatY);	
		}
		else if(obj_backgroundFood.typeOfFood==3)
		{
			draw_sprite(Veggie,2,meatX,meatY);	
		}
	}
	else if(obj_backgroundFood.cookingTime>90)
	{
		if(obj_backgroundFood.typeOfFood==0)
		{
			draw_sprite(Chicken,3,meatX,meatY);	
		}
		else if(obj_backgroundFood.typeOfFood==1)
		{
			draw_sprite(Noodles,3,meatX,meatY);	
		}
		else if(obj_backgroundFood.typeOfFood==2)
		{
			draw_sprite(Egg,3,meatX,meatY);	
		}
		else if(obj_backgroundFood.typeOfFood==3)
		{
			draw_sprite(Veggie,3,meatX,meatY);	
		}
	}
}
else
{
	draw_sprite_ext(spr_kitchenTable,0,x,y,1.95,1.7,0,-1,1);
}