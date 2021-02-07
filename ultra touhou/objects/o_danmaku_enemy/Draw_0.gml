draw_self();
draw_sprite_ext(s_hp, 0, 20, 20, hp/85, 1, 0, c_white, 1);
draw_set_halign(fa_center);
draw_set_font(ft_lucida);
draw_sprite(s_fontscore, 0, 120, 480);
var guy2 = score;
var guy = string_copy(string(floor(guy2)), 0, 10);
guy = "00000000000"+guy;
guy = string_copy(guy, string_length(guy)-6, 6);
draw_text(126, 460, guy);

draw_sprite(s_fontscore, 0, 520, 480);
draw_text(526, 460, "HIGH: 080480");
draw_set_halign(fa_left);