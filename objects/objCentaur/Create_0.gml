/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

MAX_HP = 150;
XP = 800;
dead_sprite = sprCentaurDead;
spd = 1.5;

function perform_attack() {
	spd_x = lengthdir_x(3, dir);
	spd_y = lengthdir_y(3, dir);
}

reset();