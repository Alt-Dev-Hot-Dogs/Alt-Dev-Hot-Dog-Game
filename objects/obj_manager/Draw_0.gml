/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_black);
minute = floor(timer/60);
second = floor(timer%60);
draw_text(x+70,y+10,"Time Left: \n"+ string(minute)+":"+string(second));