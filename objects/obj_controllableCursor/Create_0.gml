/// @description Insert description here
// You can write your code in this editor

globalvar delay;
globalvar lagStart;
globalvar driftStart;
globalvar driftTarget;
//create event

time = 0; //this will hold the time
lagStart = false;
delay = 20;
driftStart = false;
randomize();
driftTarget = 116 * irandom_range(0,3);

lmouse_x[0] = mouse_x;
lmouse_y[0] = mouse_y;
shadow_x = mouse_x;
shadow_y = mouse_y;