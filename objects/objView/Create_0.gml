/// @description Insert description here
// You can write your code in this editor

view_x = objPlayer.x div 256 * 256;
view_y = objPlayer.y div 240 * 240;
old_view_x = view_x;
old_view_y = view_y;

shake = 0;

set_spawn = true;

with (objSkeleton) {
	start_x = x;
	start_y = y;
}

instance_deactivate_object(objSkeleton);
instance_deactivate_object(objTree);

instance_activate_region(
	view_x, 
	view_y, 
	camera_get_view_width(view_camera[0]), 
	camera_get_view_height(view_camera[0]),
	true
);