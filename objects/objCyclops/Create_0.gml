/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

MAX_HP = 100;
XP = 1000;
dead_sprite = sprCyclopsDead;
spd = 0.5;
pref_dist = 96;

function perform_attack() {
	//spd_x = lengthdir_x(3, dir);
	//spd_y = lengthdir_y(3, dir);
	var arrow = instance_create_layer(x, y, layer, objArrow);
	arrow.sprite_index = sprRock;
}

reset();