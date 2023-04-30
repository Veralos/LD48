/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

MAX_HP = 50;
XP = 100;
dead_sprite = sprSkeletonDead;

function perform_attack() {
	spd_x = lengthdir_x(3, dir);
	spd_y = lengthdir_y(3, dir);
}

reset();