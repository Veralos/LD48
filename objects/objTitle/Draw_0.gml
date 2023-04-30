/// @description Insert description here
// You can write your code in this editor

draw_set_color(make_color_rgb(20 + sin(effect) * 20, 0, 0,));

draw_rectangle(0, 0, room_width, room_height, false);

draw_set_halign(1);
draw_set_valign(1);

draw_set_color(#7F080C);
draw_set_font(fntTitle);

draw_text(room_width / 2, room_height * (1/3), "CERBERUS");

draw_set_color(c_white);
draw_set_font(fntMain);

draw_text(room_width / 2, room_height * (2/3), "Click to start");