draw_self();
draw_sprite_ext(s_hp, 0, 20, 20, hp/85, 1, 0, c_white, 1);
draw_sprite(s_fontscore, 0, 320, 480);
var guy = string_copy(string(floor(score*1000000)), 0, 10);
guy = "00000000000"+guy;
guy = string_copy(guy, string_length(guy)-8, 8);
draw_text(246, 575, guy);