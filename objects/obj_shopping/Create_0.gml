/// @description Insert description here
// You can write your code in this editor
showList = true;
doOnce = true;
timeToReadList = 3;
numOfChoices = 0;
correctChoices = 0;
alarm[0] = room_speed*timeToReadList;
findTheseItems = ds_list_create();
itemListString = ""; //The string that will be printed for the player to see what ingredients to buy
itemListPos = ds_list_create();// The string that will remember what are the numbers for the ingredients the player needs
listOfItems = ds_list_create();//The original list that will be shuffled to randomly place art around the store
//Create the array of the names
items[0] = "Bread";
items[1] = "Cheese";
items[2] = "Milk";
items[3] = "Water";
items[4] = "Cereal";
items[5] = "Chips";
items[6] = "Soda";
items[7] = "Waffles";
items[8] = "Cookies";

playerChoice[0] = "";
playerChoice[1] = "";
playerChoice[2] = "";

ds_list_add(listOfItems,0);
ds_list_add(listOfItems,1);
ds_list_add(listOfItems,2);
ds_list_add(listOfItems,3);
ds_list_add(listOfItems,4);
ds_list_add(listOfItems,5);
ds_list_add(listOfItems,6);
ds_list_add(listOfItems,7);
ds_list_add(listOfItems,8);
ds_list_shuffle(listOfItems);
//Pick 3 items
for(i=0;i<3;i++)
{
	value = irandom_range(0,8);
	//continuously make random values until you get unique answers
	while(ds_list_find_index(findTheseItems,value)!=-1)
	{
		value = irandom_range(0,8);
	}
	show_debug_message("Current value is: " + string(value));
	ds_list_add(findTheseItems,value);
	itemListString += items[value]+"\n";
	ds_list_add(itemListPos,value);
}
ds_list_shuffle(findTheseItems);
show_debug_message(string(ds_list_find_value(itemListPos,0))+"   "+string(ds_list_find_value(itemListPos,1))+"   "+string(ds_list_find_value(itemListPos,2)));