/// @description Insert description here
// You can write your code in this editor
if(switchStop == 0 && !timeIsUp)
{
	room_goto(rm_MiniGame4);
	switchStop = 1;
	obj_controllableCursor.depth-=1;
	obj_checklist.depth-=1;
	obj_manager.depth-=1;
}