/// @description Insert description here
// You can write your code in this editor

if (iframe <= 0) {
	while (!ds_list_empty(souls)) {
		var soul = souls[| 0];
		ds_list_delete(souls, 0);
	
		soul.x = x;
		soul.y = y;
		soul.collected = false;
		soul.launch = true;
		soul.dir = random(360);
		soul.spd = 4 + random(2);
	}
	
	iframe = 120;
}