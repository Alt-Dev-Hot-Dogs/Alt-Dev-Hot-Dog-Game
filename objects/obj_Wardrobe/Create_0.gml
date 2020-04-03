/// @description Insert description here
// You can write your code in this editor

//Set some variables
shirts = ds_list_create();
pants = ds_list_create();
gameDone = false;
playerChoiceShirt = -1;
playerChoicePants = -1;

random_set_seed(wardrobeSeed);

//Create an array for the shirts and
//Save what pants fit the shirt
combo[0]= "0,2,3,4";
combo[1]= "1,3,4,5";
combo[2]= "0,2,4,5";
combo[3]= "0,1,3,5";
combo[4]= "0,1,2,4";
combo[5]= "1,2,3,5";

control[0]="R";
control[1]="T";
control[2]="Y";
control[3]="F";
control[4]="G";
control[5]="H";
//Get 3 unique shirts
for(i=0;i<3;i++)
{
	value = irandom_range(0,5);
	//continuously make random values until you get unique answers
	while(ds_list_find_index(shirts,value)!=-1)
	{
		value = irandom_range(0,5);
	}
	ds_list_add(shirts,value);
}
//Get 3 unique pants
for(i=0;i<3;i++)
{
	value = irandom_range(0,5);
	//continuously make random values until you get unique answers
	while(ds_list_find_index(pants,value)!=-1)
	{
		value = irandom_range(0,5);
	}
	ds_list_add(pants,value);
}