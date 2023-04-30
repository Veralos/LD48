/// @description Insert description here
// You can write your code in this editor

draw_set_font(fntMain);

vx = camera_get_view_x(view_camera[0]);
vy = camera_get_view_y(view_camera[0]);

vw = camera_get_view_width(view_camera[0]);
vh = camera_get_view_height(view_camera[0]);

draw_set_color(c_black);
draw_set_alpha(0.5);

draw_rectangle(vx, vy, vx + vw, vy + vh, false);

draw_set_color(c_white);
draw_set_alpha(1);

draw_set_halign(1);
draw_set_valign(1);

draw_y = vy + vh / 2 - 32;

draw_text(vx + vw / 2, draw_y, base_xp);
draw_text(vx + vw / 2 + 64, draw_y, "X " + string(multiplier));
draw_text(vx + vw / 2, draw_y + 32, final_xp);

var req_xp = 500 + 50 * objPlayer.level;
		
if (objPlayer.xp >= req_xp) {
	objPlayer.level++;
	objPlayer.xp -= req_xp;
}

draw_text(vx + vw / 2, draw_y + 64, "" + string(objPlayer.xp) + " / " + string(req_xp));
draw_text(vx + vw / 2, draw_y + 96, "Level " + string(objPlayer.level));

if (done) {
	draw_text(vx + vw / 2, vy + vh - 32, "Click to continue");
}