surface_set_target(application_surface);
draw_sprite_stretched(bg_bg,0,0,0,1600,900);
if(surface_exists(surf)){
draw_surface_stretched(surf, 300,100,800,600);
}
else{
    surf = surface_create(800,600);
    view_surface_id[0] = surf;
}
surface_reset_target();