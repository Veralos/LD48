/// @description Insert description here
// You can write your code in this editor

if (flash > 0) {
	flash--;
	shader_set(shadWhite);
}

var facing = 1;
if (spd_x < 0) {
	facing = -1;
}

draw_sprite_ext(sprite_index, anim, x, y, facing, 1, 0, c_white, 1);

shader_reset();