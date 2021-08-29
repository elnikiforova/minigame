/// @description show countdown before game

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(room_width/2,room_height/2, string(before_time));

draw_set_halign(fa_left);

draw_text_transformed(room_width * 0.3, room_height * 0.16, "Жми чтобы прыгать!", 0.2, 0.2, 0);

draw_set_valign(fa_top);
