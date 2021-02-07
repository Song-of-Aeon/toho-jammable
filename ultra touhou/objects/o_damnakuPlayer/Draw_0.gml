/// @description Insert description here
// You can write your code in this editor
if(invuln){
	image_blend = (c_gray);
} else {
	image_blend = c_white;
}
draw_self();
//draw_set_color(c_white)


if(keyboard_check(ord("Z"))) {
	draw_sprite(s_janken, 0, 320, 480);
} else if(keyboard_check(ord("X"))) {
	draw_sprite(s_janken, 1, 320, 480);
} else if(keyboard_check(ord("C"))) {
	draw_sprite(s_janken, 2, 320, 480);
}

if(focus){
	draw_set_color(c_red);
	draw_sprite(shitbox, 0, x, y);
	draw_set_color(c_white);
}

//draw_text(0,0,score);

