/// @description Insert description here
// You can write your code in this editor

offset = anim * 16;
draw_sprite_ext(sprBiteHalf, 0, x, y - offset, 1, 1, 0, c_white, 1);
draw_sprite_ext(sprBiteHalf, 0, x, y + offset, 1, 1, 180, c_white, 1);