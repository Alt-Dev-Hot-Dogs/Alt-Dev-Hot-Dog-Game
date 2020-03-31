/// @description Insert description here
// You can write your code in this editor
if(switchRoom)
{
	switch(roomNum)
	{
		case 0: 
		room_goto(rm_Start);
		break;
		case 1:
		room_goto(rm_MiniGame1);
		break;
		case 2:
		room_goto(rm_MiniGame2);
		break;
		case 3:
		room_goto(rm_MiniGame3);
		break;
	}	
	switchRoom = false;
	//show_debug_message("Manager Exists!!!");
}
