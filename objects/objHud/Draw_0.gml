/// @description Insert description here
// You can write your code in this editor

var vx = camera_get_view_x(view_camera[0]);
var vy = camera_get_view_y(view_camera[0]);

var vw = camera_get_view_width(view_camera[0]);
var vh = camera_get_view_height(view_camera[0]);

/*
draw_set_color(c_blue);
draw_rectangle(vx + 2, vy + 2, vx + 2 + objPlayer.stamina, vy + 16 - 2, false);

draw_set_color(c_white);
draw_rectangle(vx + 2, vy + 2, vx + 2 + objPlayer.max_stamina, vy + 16 - 2, true);
*/

var dir = point_direction(objPlayer.x, objPlayer.y, objPool.x, objPool.y);
var dist = point_distance(objPlayer.x, objPlayer.y, objPool.x, objPool.y);

if (dist > 96) {
draw_sprite_ext(sprPointer, 1,
	objPlayer.x + lengthdir_x(64, dir), objPlayer.y + lengthdir_y(64, dir),
	1, 1, dir, c_white, 1);
}

if (objPlayer.stamina < objPlayer.max_stamina) {
	var stamina_y = objPlayer.y + 20;

	draw_rectangle(objPlayer.x - objPlayer.stamina / 10, stamina_y, objPlayer.x + objPlayer.stamina / 10, stamina_y + 4, false);
	draw_rectangle(objPlayer.x - objPlayer.max_stamina / 10, stamina_y, objPlayer.x + objPlayer.max_stamina / 10, stamina_y + 4, true);
}