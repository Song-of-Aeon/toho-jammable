image_angle = pos*90;
image_xscale = -1;
draw_self();
draw_set_alpha(darker);
draw_rectangle_colour(0, 0, 1600, 900, c_black, c_black, c_black, c_black, false);
draw_set_alpha(1);
if global.partial {
	draw_sprite(s_partial, 0, 1185, 690);
}