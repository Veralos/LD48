/// @description Insert description here
// You can write your code in this editor

if (timer > 0) {
	timer--;
}
else {
	if (!ds_list_empty(objPlayer.souls)) {
		var soul = objPlayer.souls[| 0];
		ds_list_delete(objPlayer.souls, 0);
		instance_destroy(soul);
		
		base_xp += 100;
		multiplier += 0.1;
		final_xp = base_xp * multiplier;
	}
	else {
		instance_destroy();
	}
	
	timer = MAX_TIMER;
}