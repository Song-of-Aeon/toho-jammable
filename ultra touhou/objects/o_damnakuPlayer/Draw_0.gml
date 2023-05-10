/// @description Insert description here
// You can write your code in this editor
if(invuln){
	draw_set_color(c_gray);	
}
draw_self();
draw_set_color(c_white)


if(keyboard_check(ord("Z"))) {
	draw_sprite(s_janken, 0, 0, 448);
} else if(keyboard_check(ord("X"))) {
	draw_sprite(s_janken, 1, 0, 448);
} else if(keyboard_check(ord("C"))) {
	draw_sprite(s_janken, 2, 0, 448);
}

if(focus){
	draw_set_color(c_red);
	draw_circle(x-1,y-1,3,false);	
	draw_set_color(c_white);
}

draw_text(0,0,score);

