/// @description Insert description here
// You can write your code in this editor

if (other.can_damage) {
	var text = instance_create_layer(x, y - 16, layer_get_id("Effect"), objDamageText);
	text.damage = other.damage;
	hp -= other.damage;
	objView.shake = 5;
	flash = 5;
	
	scr_play_sound(sndHit);
}