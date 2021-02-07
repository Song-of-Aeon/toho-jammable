surface_set_target(application_surface);
draw_sprite_stretched(bg_arcade,0,0,0,1600,900);
if(surface_exists(surf)){
	draw_rectangle(280,20,280+1040,20+760,false)
	draw_surface_stretched(surf, 280,20,1040,760);
}
else{
    surf = surface_create(800,600);
    view_surface_id[0] = surf;
}
draw_sprite_stretched(border6,0,0,0,1600,900);
surface_reset_target();

/*surface_set_target(application_surface);
draw_sprite_stretched(bg_arcade,0,0,0,1600,900);
if(surface_exists(surf)){
	draw_set_alpha(alpha);
	draw_surface_stretched(surf, 280,20,1040,760);
	draw_set_alpha(1);
}
else{
	surf = surface_create(960,720);
	view_surface_id[0] = surf;
}
draw_sprite_stretched(border6,0,0,0,1600,900);
surface_reset_target();
/*