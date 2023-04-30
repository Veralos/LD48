/// @description Insert description here
// You can write your code in this editor

image_alpha = 0.8;

flicker += 0.15;
if (flicker >= 1) {
	flicker -= 1;
}

if (charge > 0) {
	visible = (flicker > min(charge, 0.8));
}
else {
	visible = true;
}

if (collected) {
	image_blend = c_lime;
}
else {
	image_blend = c_aqua;
}

if (collected) {
	charge = 0;
	spd = 0.5;
	dir = point_direction(x, y, objPlayer.x, objPlayer.y);
}
else {
	if (launch) {
		spd -= 0.1;
		if (spd <= 0) {
			launch = false;
			spd = 0.5;
		}
	}
	else {
		dir = point_direction(x, y, body.x, body.y);
	
		if (point_distance(x, y, body.x, body.y) < 4) {
			charge += 1/120;
		}
		else {
			charge = 0;
		}
		
		if (charge > 1 && !place_meeting(body.x, body.y, objEnemy)) {
			var enemy = instance_create_layer(body.x, body.y, layer, object);
			enemy.start_x = body.start_x;
			enemy.start_y = body.start_y;
			instance_destroy(body);
			instance_destroy();
		}
	}
}

x += lengthdir_x(spd, dir);
y += lengthdir_y(spd, dir);