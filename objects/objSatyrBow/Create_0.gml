/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

MAX_HP = 30;
XP = 500;
dead_sprite = sprSatyrBowDead;
spd = 1;
pref_dist = 96;

function perform_attack() {
	//spd_x = lengthdir_x(3, dir);
	//spd_y = lengthdir_y(3, dir);
	instance_create_layer(x, y, layer, objArrow);
}

reset();