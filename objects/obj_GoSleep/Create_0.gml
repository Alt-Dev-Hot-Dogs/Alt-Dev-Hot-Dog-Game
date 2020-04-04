/// @description Insert description here
// You can write your code in this editor

listOfDistractions = ds_list_create();
currentDistraction = -1;
defaultTime = 570;
time = defaultTime;
distractionMultiplier = 5;
gameDone = false;
addDistraction = true;
completedDistractions = 0;


ds_list_add(listOfDistractions,0);
ds_list_add(listOfDistractions,1);
ds_list_add(listOfDistractions,2);
ds_list_add(listOfDistractions,3);

alarm[0] = 1*room_speed;