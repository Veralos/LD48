/// @description Insert description here
// You can write your code in this editor

if (other.can_damage) {
	var text = instance_create_layer(x, y, layer_get_id("Effect"), objDamageText);
	text.damage = other.damage;
	hp -= other.damage;
	objView.shake = 5;
	flash = 5;
}