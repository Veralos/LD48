/// @description Insert description here
// You can write your code in this editor

with (objSkeleton) {
	start_x = x;
	start_y = y;
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