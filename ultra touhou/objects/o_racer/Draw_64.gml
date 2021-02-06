draw_sprite(s_wheel, 0, 320, 200);
draw_set_font(ft_wheel);
draw_set_halign(fa_center);
draw_text(279, 157, string(lap)+"/3");
draw_sprite(s_bar, 0, 0, 200);
draw_set_halign(fa_left);
draw_text(15, 180, string_copy(string(timer), 0, 5));