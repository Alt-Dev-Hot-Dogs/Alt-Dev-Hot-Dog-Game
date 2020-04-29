 /// @description Insert description here
// You can write your code in this editor

draw_self();
draw_set_font(font_Words);
if(!typingDone)
{
	//If the draw_self does not work, you can manually draw the actual sprite but oyu have to scale it
	//draw_sprite(spr_writeEssay,0,x,y);
	draw_set_color(c_green);
	//Change the position where the text is being drawn
	draw_text_ext(x+310,350,targetSentence,30,400);
	draw_set_color(color);
	draw_text_ext(x+310,450,playerString,30,400); 
}
else
{
	if(rightOrWrong==-1)
	{
		//Either Desktop or submitEssay that can be changed here
		draw_sprite(spr_Desktop,0,x,y);
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
	//If the player picked the correct folder
	else if(rightOrWrong==0)
	{
		draw_sprite(spr_correctEssay,0,x,y);	
	}
	//If the player picked the wrong folder
	else if(rightOrWrong ==1)
	{
		draw_sprite(spr_wrongEssay,0,x,y);	
	}
}