/// @description Insert description here
// You can write your code in this editor

vx = camera_get_view_x(view_camera[0]);
vy = camera_get_view_y(view_camera[0]);

vw = camera_get_view_width(view_camera[0]);
vh = camera_get_view_height(view_camera[0]);

draw_set_color(c_black);
draw_set_alpha(0.5);

draw_rectangle(vx, vy, vx + vw, vy + vh, false);

draw_set_color(c_white);
draw_set_alpha(1);

draw_set_halign(1);
draw_set_valign(1);

draw_text(vx + vw / 2, vy + vh / 2, base_xp);
draw_text(vx + vw / 2 + 64, vy + vh / 2, multiplier);
draw_text(vx + vw / 2, vy + vh / 2 + 32, final_xp);