/// @description Insert description here
// You can write your code in this editor

var left_held = keyboard_check(ord("A"));
var right_held = keyboard_check(ord("D"));
var up_held = keyboard_check(ord("W"));
var down_held = keyboard_check(ord("S"));

var move_x = right_held - left_held;
var move_y = down_held - up_held;

x += move_x;
y += move_y;

var dir = point_direction(x, y, mouse_x, mouse_y);

var ldx = lengthdir_x(32, dir);
var ldy = lengthdir_y(32, dir);

if (mouse_check_button_pressed(mb_left)) {
	instance_create_layer(x +ldx, y + ldy, layer, objBite2);
}