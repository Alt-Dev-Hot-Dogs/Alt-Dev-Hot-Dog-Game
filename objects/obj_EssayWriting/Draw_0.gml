/// @description Insert description here
// You can write your code in this editor
draw_self();
if(!typingDone)
{
	draw_set_color(c_green);
	draw_text_ext(x+240,280,targetSentence,30,600);
	draw_set_color(color);
	draw_text_ext(x+240,360,playerString,30,600);
}
else
{
	draw_set_color(c_black);
	draw_sprite(spr_Folder,0,x+160,300);
	draw_text(x+170,290,ds_list_find_value(actualFolderChoice,0)+"(1)");
	draw_sprite(spr_Folder,0,x+360,300);
	draw_text(x+340,290,ds_list_find_value(actualFolderChoice,1)+"(2)");
	draw_sprite(spr_Folder,0,x+160,400);
	draw_text(x+170,400,ds_list_find_value(actualFolderChoice,2)+"(3)");
	draw_sprite(spr_Folder,0,x+360,400);
	draw_text(x+340,400,ds_list_find_value(actualFolderChoice,3)+"(4)");
}