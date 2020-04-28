/// @description Insert description here
// You can write your code in this editor

if(lagStart)
{
	//step event
	time += 1;

	p = time mod delay; 

	if (time > delay - 1) {
	    shadow_x = lmouse_x[p]; //these are the coordinates the shadow should be
	    shadow_y = lmouse_y[p];
	}

	lmouse_x[p] = mouse_x;
	lmouse_y[p] = mouse_y;

	if (time > 500) 
	{
		time = p + delay; //precaution in case time gets too big	
	}
	x = shadow_x;
	y = shadow_y;
	
}
else if(driftStart)
{
	if (x < driftTarget) {
		x += 1;
	}
	if (x > driftTarget) {
		x -= 1;
	}
	if (y < 75) {
		y += 1;
	}
	if (y > 75) {
		y -= 1;
	}
}
else
{
	x = mouse_x;
	y = mouse_y;	
}
