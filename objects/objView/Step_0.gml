/// @description Insert description here
// You can write your code in this editor

view_x = objPlayer.x div 256 * 256;
view_y = objPlayer.y div 240 * 240;

var offset_x = 0;
var offset_y = 0;
if (shake > 0) {
	shake--;
	offset_x = random_range(-2, 2);
	offset_y = random_range(-2, 2);
}

camera_set_view_pos(view_camera[0], view_x + offset_x, view_y + offset_y);

if (view_x != old_view_x || view_y != old_view_y) {
	with (objSkeleton) {
		x = start_x;
		y = start_y;
	}
	with (objDead) {
		x = start_x;
		y = start_y;
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
	
	with (objSkeleton) {
		reset();
	}
}

old_view_x = view_x;
old_view_y = view_y;