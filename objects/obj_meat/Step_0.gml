/// @description Insert description here
// You can write your code in this editor
if(canMove)
{
	if(x<20)
	{
		hSpeed *=-1;	
	}
	if(x>600)
	{
		hSpeed *=-1;	
	}
	x += 1*hSpeed;
	y += 0.9*vSpeed;
	if(y>500)
	{
		canMove = false;
		obj_plate.canMove = false;
	}
}