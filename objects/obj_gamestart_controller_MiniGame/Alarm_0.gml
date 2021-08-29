/// @description countdown before game

before_time--;

if (before_time <= 0)
{
	room_goto(rm_Game_MiniGame);	
}

alarm[0] = 1 * room_speed;
