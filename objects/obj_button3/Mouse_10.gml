/// @description Insert description here
// You can write your code in this editor
//roomNum = 3;
//switchRoom = true;
if(switchStop == 0 && !timeIsUp)
{
	room_goto(rm_MiniGame3);
	switchStop = 1;
	obj_controllableCursor.depth-=1;
	obj_checklist.depth-=1;
	obj_manager.depth-=1;
	audio_play_sound(button_19,10,0);
}