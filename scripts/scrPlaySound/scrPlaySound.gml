// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_play_sound(sound) {
	audio_stop_sound(sound);
	var new_sound = audio_play_sound(sound, 0, false);
	audio_sound_pitch(new_sound, random_range(0.8, 1.2));
}