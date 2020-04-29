/// @description Insert description here
// You can write your code in this editor
//roomNum = 1;
//switchRoom = true;
if(switchStop == 0 && !timeIsUp)
{
	room_goto(rm_MiniGame1);
	switchStop = 1;
	obj_controllableCursor.depth-=1;
	obj_checklist.depth-=1;
	obj_manager.depth-=1;
	audio_play_sound(button_19,10,0);
}