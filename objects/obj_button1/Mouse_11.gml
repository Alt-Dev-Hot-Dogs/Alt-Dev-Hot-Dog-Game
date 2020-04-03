/// @description Insert description here
// You can write your code in this editor
//roomNum = 0;
//switchRoom = true;
if(!timeIsUp)
{
	room_goto(rm_Start);
	switchStop = 0;
	obj_controllableCursor.depth-=2;
	obj_checklist.depth-=1;	
	obj_manager.depth-=1;
}