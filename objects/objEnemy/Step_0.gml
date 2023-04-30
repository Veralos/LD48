/// @description Insert description here
// You can write your code in this editor

if (wait > 0) {
	wait--;
}
else {
	if (attack == 0) {
		anim += spd * 0.1;
		if (anim >= 4) {
			anim -= 4;
		}
	}
	
	if (attack_cd > 0) {
		attack_cd--;
	}
	
	timer--;
	if (timer <= 0) {
		if (attack == 0) {
			
			var dist = point_distance(x, y, objPlayer.x, objPlayer.y);
			dir = point_direction(x, y, objPlayer.x, objPlayer.y) + random_range(-45, 45);
		
			if (attack_cd <= 0 && dist < pref_dist * 2) {
				attack = 1;
				timer = 45;
				
				spd_x = 0;
				spd_y = 0;
				
				anim = 4;
			}
			else {
				if (dist < pref_dist) {
					dir += 180;
				}
		
				spd_x = lengthdir_x(spd, dir);
				spd_y = lengthdir_y(spd, dir);
	
				timer = random_range(TIMER_MIN, TIMER_MAX);
			}
		}
		else if (attack == 1) {
			attack = 2;
			timer = 20;
			anim = 5;
			
			dir = point_direction(x, y, objPlayer.x, objPlayer.y);
			
			scr_play_sound(attack_sound);
			
			perform_attack();
		}
		else {
			attack = 0;
			timer = 0;
			anim = 0;
			
			attack_cd = ATTACK_CD_MAX;
		}
	}

	if (!place_free(x + spd_x, y) || place_meeting(x + spd_x, y, objEnemy)) {
		spd_x *= -1;
	}
	if (!place_free(x, y + spd_y) || place_meeting(x, y + spd_y, objEnemy)) {
		spd_y *= -1;
	}

	x += spd_x;
	y += spd_y;
}

if (hp <= 0) {
	instance_create_layer(x, y, layer_get_id("Effect"), objSlash);
	
	var dead = instance_create_layer(x, y, layer_get_id("Dead"), objDead);
	var soul = instance_create_layer(x, y, layer, objSoul);
	soul.sprite_index = sprite_index;
	dead.sprite_index = dead_sprite;
	soul.body = dead;
	soul.object = object_index;
	soul.XP = XP;
	dead.start_x = start_x;
	dead.start_y = start_y;
	
	scr_play_sound(sndDie);

	instance_destroy();
}