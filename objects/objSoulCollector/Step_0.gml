/// @description Insert description here
// You can write your code in this editor

if (!ds_list_empty(objPlayer.souls)) {
	if (timer > 0) {
		timer--;
	}
	else {
		var soul = objPlayer.souls[| 0];
		ds_list_delete(objPlayer.souls, 0);
		instance_destroy(soul);
		
		base_xp += soul.XP;
		multiplier += 0.05;
		final_xp = base_xp * multiplier;
		
		timer = MAX_TIMER;
			
		objSoulCounter.count--;
			
		scr_play_sound(sndCount);
	}
}
else {
	if (final_xp > 0) {
		var add = min(final_xp, 20);
		objPlayer.xp += add;
		final_xp -= add;
		
		var req_xp = 500 + 50 * objPlayer.level;
		
		if (objPlayer.xp >= req_xp) {
			objPlayer.level++;
			objPlayer.xp -= req_xp;
			objPlayer.max_stamina = objPlayer.BASE_MAX_STAMINA * (1 + 0.1 * objPlayer.level);
			
			scr_play_sound(sndLevelUp);
		}
	}
	else {
		if (mouse_check_button_pressed(mb_left)) {
			instance_destroy();
		}
	}
}
	