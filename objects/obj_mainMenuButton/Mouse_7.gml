/// @description Insert description here
// You can write your code in this editor
switch(choice)
{
	case 0:
	room_goto(rm_Instructions);
	obj_controllableCursor.depth -=1;
	break;
	case 2:
	game_end();
}