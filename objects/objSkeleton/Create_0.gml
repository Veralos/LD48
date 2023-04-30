/// @description Insert description here
// You can write your code in this editor

image_speed = 0;

TIMER_MIN = 30;
TIMER_MAX = 60;

timer = 0;
spd_x = 0;
spd_y = 0;

MAX_HP = 20;
hp = MAX_HP;

flash = 0;

var vx = camera_get_view_x(view_camera[0]);
var vy = camera_get_view_y(view_camera[0]);
var vw = camera_get_view_width(view_camera[0]);
var vh = camera_get_view_height(view_camera[0]);


if (collision_rectangle(vx, vy,
	vx + vw,
	vy + vh,
	self, false, false) == noone) {
	instance_deactivate_object(self);
}