/// @description creating obstacles and speedmodifier

if (!global.isPaused && !global.isHit) { 
	
	moment += 1;
	// show_debug_message(string(moment) + "  " + string(next_obstacle));
	// 
	if (next_obstacle <= moment && irandom_range(0,35) == 0)
	{
		var big_or_small = irandom_range(0, 1);
	
		if (big_or_small == 0)
		{
			var i = instance_create_layer(room_width, room_height * 0.7, "Instances", obj_obstacle_MiniGame);
			i.sprite_index = spr_R_one_MiniGame;
			i.image_index = irandom_range(0, 2);
			i.image_speed = 0;
			next_obstacle = moment + 80;
		}
		else
		{
			var j = instance_create_layer(room_width, room_height * 0.7, "Instances", obj_SmallObstacle_MiniGame);
			j.sprite_index = spr_R_two_MiniGame;
			j.image_index = irandom_range(0, 2);
			j.image_speed = 0;	
			next_obstacle = moment + 65;
		}
	
	}
}

// pause and speed modifier
if (global.isPaused) 
{
	global.speedModifier = 0;	
}

if (!global.isPaused)
{
	global.speedModifier = 1;
	
	if (time <= 20 && time > 10)
	{
		global.speedModifier = 1.2;	
	}
	
	else if (time <= 10) 
	{
	global.speedModifier = 1.5;	
	}

}

// end of game
if (time <= 0)
{
	room_goto(rm_Win_MiniGame);	
	global.speedModifier = 0;
}

if (lives <= 0)
{
	room_goto(rm_Lost_MiniGame4);
	global.speedModifier = 0;
}

