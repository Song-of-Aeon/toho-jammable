if y < 720 + sprite_height/2 {
    if global.notecover = s_kaguya {
        draw_self();
    } else {
        draw_sprite_ext(global.notecover, 0, x, y, image_xscale, image_yscale, 180, image_blend, image_alpha);
    }
    if instance_exists(stringto) {
        draw_set_colour(c_teal);
        draw_line_width(x, y, stringto.x, stringto.y, 3);
    }
}