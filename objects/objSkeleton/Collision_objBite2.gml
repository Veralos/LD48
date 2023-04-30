/// @description Insert description here
// You can write your code in this editor

var dead = instance_create_layer(x, y, layer_get_id("Dead"), objDead);
var soul = instance_create_layer(x, y, layer, objSoul);
soul.sprite_index = sprite_index;
dead.sprite_index = sprSkeletonDead;
soul.body = dead;
soul.object = objSkeleton;
dead.start_x = start_x;
dead.start_y = start_y;

instance_destroy();