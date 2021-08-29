/// @description score, lives

// score = 0;
lives = 3;

moment = 0;
next_obstacle = 0;

time = 30;


global.speedModifier = 1;
global.isPaused = false;

draw_set_font(fnt_text);

show_debug_message("creating room");


timeline_index = tml_controller;

if !timeline_running
    { 
    timeline_position = 0;
    timeline_running = true;
    }