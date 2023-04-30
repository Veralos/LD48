/// @description Insert description here
// You can write your code in this editor

var vx = camera_get_view_x(view_camera[0]);
var vy = camera_get_view_y(view_camera[0]);

var vw = camera_get_view_width(view_camera[0]);
var vh = camera_get_view_height(view_camera[0]);

draw_set_color(c_blue);
draw_rectangle(vx + 2, vy + 2, vx + 2 + objPlayer.stamina, vy + 16 - 2, false);

draw_set_color(c_white);
draw_rectangle(vx + 2, vy + 2, vx + 2 + objPlayer.max_stamina, vy + 16 - 2, true);