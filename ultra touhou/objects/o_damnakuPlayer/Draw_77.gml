/// @description Insert description here
// You can write your code in this editor
surface_set_target(application_surface);
draw_sprite_stretched(bg_bg,0,0,0,1600,900);
if(surface_exists(surf)){
	draw_set_alpha(alpha);
	draw_surface_stretched(surf, 300,100,960,720);
	draw_set_alpha(1);
}
else{
	surf = surface_create(960,720);
	view_surface_id[0] = surf;
}
surface_reset_target();