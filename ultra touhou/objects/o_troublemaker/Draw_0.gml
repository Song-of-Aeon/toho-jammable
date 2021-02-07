
//draw_sprite(songbg, 0, 0, 0);

draw_set_colour(c_white);
//draw_sprite(s_scoreshow, 0, 0, 0);
draw_set_font(ft_);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_sprite(s_fontscore, 0, 553, 600);
var guy = string_copy(string(floor(realscore*1000000)), 0, 10);
guy = "00000000000"+guy;
guy = string_copy(guy, string_length(guy)-8, 8);
draw_text(553, 575, guy);
//draw_sprite_ext(s_futureselected, 0, bluepos, 0, global.mini, 1, 0, c_white, 1);


draw_sprite_ext(global.receptor, 0, laneleft, bar, global.mini*bop[0], global.mini*bop[0], -90, c_white, 1);
draw_sprite_ext(global.receptor, 0, lanedown, bar, global.mini*bop[1], global.mini*bop[1], 0, c_white, 1);
draw_sprite_ext(global.receptor, 0, laneup, bar, global.mini*bop[2], global.mini*bop[2], 180, c_white, 1);
draw_sprite_ext(global.receptor, 0, laneright, bar, global.mini*bop[3], global.mini*bop[3], 90, c_white, 1);

draw_set_font(ft_);
draw_set_halign(fa_center);
draw_set_colour(c_white);
var l;
for (l=0; l<floor(hp); l++) {
    //draw_sprite(s_heart, floor(hp/12), laneright+80*global.mini, bar+l*16);
}

draw_text_transformed_colour(lanedown+lanespacing/4, bar+230, string(combo), floor(combo/100)/10+1.5, floor(combo/100)/10+1.5, 0, combocolour[0], combocolour[1], combocolour[2], combocolour[3], infoalpha);
draw_sprite_ext(s_judgement, noterank+3, lanedown+lanespacing/4, bar+150, bop[8], bop[8], noterank, c_white, infoalpha);

draw_set_halign(fa_left);