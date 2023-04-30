/// @description Insert description here
// You can write your code in this editor

var left_held = keyboard_check(ord("A"));
var right_held = keyboard_check(ord("D"));
var up_held = keyboard_check(ord("W"));
var down_held = keyboard_check(ord("S"));

var move_x = right_held - left_held;
var move_y = down_held - up_held;

if (!instance_exists(objSoulCollector)) {
	if (place_free(x + move_x, y)) {
		x += move_x;
	}
	if (place_free(x, y + move_y)) {
		y += move_y;
	}

	var dir = point_direction(x, y, mouse_x, mouse_y);

	var ldx = lengthdir_x(32, dir);
	var ldy = lengthdir_y(32, dir);

	if (mouse_check_button_pressed(mb_left)) {
		var bite = instance_create_layer(x +ldx, y + ldy, layer, objBite2);
		bite.damage = 10 + level;
	}
}

spin += 2;
var size = ds_list_size(souls);
for (var i = 0; i < ds_list_size(souls); i++) {
	var soul = souls[| i];
	var dir = 360 / size * i + spin;
	var ldx = lengthdir_x(32, dir);
	var ldy = lengthdir_y(32, dir);
	
	soul.x = x + ldx;
	soul.y = y + ldy;
}

if (iframe > 0) {
	iframe--;
	visible = iframe mod 10 > 5;
}
else visible = true;