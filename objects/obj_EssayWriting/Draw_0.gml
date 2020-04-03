/// @description Insert description here
// You can write your code in this editor
draw_self();
if(!typingDone)
{
	draw_set_color(c_green);
	draw_text_ext(x+240,280,targetSentence,30,900);
	draw_set_color(color);
	draw_text_ext(x+240,320,playerString,30,900);
}
else
{
	draw_set_color(c_black);
	draw_sprite(spr_Folder,0,x+160,300);
	draw_text(x+160,300,ds_list_find_value(actualFolderChoice,0)+"(1)");
	draw_sprite(spr_Folder,0,x+360,300);
	draw_text(x+320,300,ds_list_find_value(actualFolderChoice,1)+"(2)");
	draw_sprite(spr_Folder,0,x+160,450);
	draw_text(x+160,500,ds_list_find_value(actualFolderChoice,2)+"(3)");
	draw_sprite(spr_Folder,0,x+360,450);
	draw_text(x+320,500,ds_list_find_value(actualFolderChoice,3)+"(4)");
}