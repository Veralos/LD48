/// @description Insert description here
// You can write your code in this editor

image_speed = 0;

TIMER_MIN = 30;
TIMER_MAX = 60;

ATTACK_CD_MAX = 60;

spd = 0.5;

MAX_HP = 20;

dead_sprite = sprSkeletonDead;

attack_sound = sndDash;

pref_dist = 30;

start_x = x;
start_y = y;

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

function reset() {
	hp = MAX_HP;

	flash = 0;
	anim = 0;

	wait = 30;
	attack = 0;
	attack_cd = 0;

	timer = 0;
	spd_x = 0;
	spd_y = 0;
}

reset();