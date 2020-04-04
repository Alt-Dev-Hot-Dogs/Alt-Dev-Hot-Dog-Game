/// @description Insert description here
// You can write your code in this editor
globalvar wardrobeSeed;
globalvar timeIsUp;
globalvar playerScore;

wardrobeSeed = 20;
timeIsUp = false;
playerScore = 0;
restart = false;
doOnce = true; //This is the variable to move to the End room after timer is up ONCE.
//5 minutes for a game
timer = 300;
//Trigger this alarm every second
alarm[0] = 1*room_speed;