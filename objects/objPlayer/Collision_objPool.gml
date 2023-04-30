/// @description Insert description here
// You can write your code in this editor

if (!ds_list_empty(souls) && !instance_exists(objSoulCollector)) {
	instance_create_layer(0, 0, layer_get_id("Effect"), objSoulCollector);
	
	scr_play_sound(sndReturn);
}