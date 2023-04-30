/// @description Insert description here
// You can write your code in this editor

var view_x = camera_get_view_x(view_camera[0]);
var view_y = camera_get_view_y(view_camera[0]);

camera_set_view_pos(view_camera[0], objPlayer.x div 256 * 256, objPlayer.y div 240 * 240);

if (view_x != camera_get_view_x(view_camera[0]) || view_y != camera_get_view_y(view_camera[0])) {
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
		camera_get_view_x(view_camera[0]), 
		camera_get_view_y(view_camera[0]), 
		camera_get_view_width(view_camera[0]), 
		camera_get_view_height(view_camera[0]),
		true
	);
}