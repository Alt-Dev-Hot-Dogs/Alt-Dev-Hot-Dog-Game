/// @description Insert description here
// You can write your code in this editor

//Initialize some variables
typingDone = false;
playerString = "";
keyboard_string = "";
obj_basicArt.depth-=1;
color = c_black;
gameDone = false;

//Array of sentences to display for essay
sentences[0] = "America was founded in 1776.";//(history paper)
sentences[1] = "The sun is a star.";//(science paper)
sentences[2] = "Dr. Suess was an author.";//(english paper)
sentences[3] = "Mozart was a famous musician.";//(music paper)
sentences[4] = "The brain is a complex machine.";//(psychology paper)
sentences[5] = "Jesus please take the wheel.";//(religion paper)
sentences[6] = "Dear Professor, I would like to request an A for this class.";//(Email)

//Array for What paper to submit
paper[0] = "History";
paper[1] = "Science";
paper[2] = "English";
paper[3] = "Music";
paper[4] = "Psychology";
paper[5] = "Religion";
paper[6] = "Email";

//Choose a task and set length of the string to compare with player input later
task = irandom_range(0,6);
targetSentence = sentences[task];
sampleLength = string_length(targetSentence);

//Create an array, store all other papers other than the correct one
otherPaperChoice = ds_list_create();
for(i = 0; i < 6; i++)
{
		if(i==task)
		{
			continue;	
		}
		else
		{
			ds_list_add(otherPaperChoice,paper[i]);	
		}
}
//shuffle this array
ds_list_shuffle(otherPaperChoice);

//Create another array to store the actual 4 folders to use
actualFolderChoice = ds_list_create();
//Input the first 3 names from the shuffled array above, and the correct name
ds_list_add(actualFolderChoice, ds_list_find_value(otherPaperChoice,0));
ds_list_add(actualFolderChoice, ds_list_find_value(otherPaperChoice,1));
ds_list_add(actualFolderChoice, ds_list_find_value(otherPaperChoice,2));
ds_list_add(actualFolderChoice, paper[task]);
//Shuffle this array 
ds_list_shuffle(actualFolderChoice);
//Find what index the correct folder is
correctIndex = ds_list_find_index(actualFolderChoice, paper[task]);
