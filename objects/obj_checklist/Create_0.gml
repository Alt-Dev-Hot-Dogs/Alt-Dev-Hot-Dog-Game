/// @description Insert description here
// You can write your code in this editor
arrayOfWork= ds_list_create();
for(i=0; i < 5; i++)
{
	task = irandom_range(1,3);
	switch(task)
	{
		case 1: 
			ds_list_add(arrayOfWork, "Red");
		break;
		case 2:
			ds_list_add(arrayOfWork, "Blue");
		break;
		case 3: 
			ds_list_add(arrayOfWork, "Pink");
		break;	
	}
}
