/// @description Insert description here
// You can write your code in this editor

var left_held = keyboard_check(ord("A"));
var right_held = keyboard_check(ord("D"));
var up_held = keyboard_check(ord("W"));
var down_held = keyboard_check(ord("S"));

var run_pressed = mouse_check_button(mb_right);

var move_x = right_held - left_held;
var move_y = down_held - up_held;

if (move_x != 0) {
	facing = sign(move_x);
}

spd_x = 1.5 * move_x;
spd_y = 1.5 * move_y;
if (move_x != 0 && move_y != 0) {
	spd_x /= 1.5;
	spd_y /= 1.5;
}

sprite_index = sprPlayerWalk;

if (stamina > 0 && run_pressed) {
	sprite_index = sprPlayer;
	
	spd_x *= 2;
	spd_y *= 2;
	stamina--;
	
	stamina_wait = MAX_STAMINA_WAIT;
}

var spd = point_distance(0, 0, spd_x, spd_y);
image_index += spd / 16;

if (spd == 0) {
	image_index = 0;
}

if (stamina_wait > 0) {
	stamina_wait--;
}
else {
	stamina += 2;
	if (stamina > max_stamina) {
		stamina = max_stamina;
	}
}

if (!instance_exists(objSoulCollector)) {
	if (place_free(x + spd_x, y)) {
		x += spd_x;
	}
	if (place_free(x, y + spd_y)) {
		y += spd_y;
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