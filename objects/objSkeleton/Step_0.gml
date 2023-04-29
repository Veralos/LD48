/// @description Insert description here
// You can write your code in this editor

image_index += 0.05;

timer--;
if (timer <= 0) {
	dir = point_direction(x, y, objPlayer.x, objPlayer.y) + random_range(-45, 45);
	spd_x = lengthdir_x(0.5, dir);
	spd_y = lengthdir_y(0.5, dir);
	
	timer = random_range(TIMER_MIN, TIMER_MAX);
}

if (!place_free(x + spd_x, y) || place_meeting(x + spd_x, y, objSkeleton)) {
	spd_x *= -1;
}
if (!place_free(x, y + spd_y) || place_meeting(x, y + spd_y, objSkeleton)) {
	spd_y *= -1;
}

x += spd_x;
y += spd_y;