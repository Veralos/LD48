/// @description Insert description here
// You can write your code in this editor

if (!other.launch && !other.collected) {
	other.collected = true;
	
	ds_list_add(souls, other);
	
	scr_play_sound(sndGet);
}