/// @description Insert description here
// You can write your code in this editor

var facing = 1;
if (spd_x < 0) {
	facing = -1;
}

draw_sprite_ext(sprite_index, image_index, x, y, facing, 1, 0, c_white, 1);