/// @description show message to user

if (room == rm_Win_MiniGame)
{

draw_text(73, 43, string(lives));
draw_text(room_width * 0.3, 43, "Победа!");

}

switch (room)
{
	case rm_Win_MiniGame:
	draw_text(73, 43, string(lives));
	draw_text(room_width * 0.3, 43, "Победа!");
	break;
	
	case rm_Lost_MiniGame4:
	draw_text(73, 43, string(lives));
	draw_text(room_width * 0.3, 43, "Game over");
	break;
}
