/// @description Insert description here
// You can write your code in this editor
timer++;
if(keyboard_check(vk_shift)){
	focus = true;
	spd = 1;
}
else{
	focus = false;
	spd = 3;	
}
if(keyboard_check(vk_left)){
	x-=spd;
}
if(keyboard_check(vk_right)){
	x+=spd;
}
if(keyboard_check(vk_up)){
	y-=spd;
}
if(keyboard_check(vk_down)){
	y+=spd;
}
if keyboard_check(vk_shift) {
	if(keyboard_check(ord("Z"))) {
		script_execute(st_rock);
	} else if(keyboard_check(ord("X"))) {
		script_execute(st_paper2);
	} else if(keyboard_check(ord("C"))) {
		script_execute(st_scissors);
	}
} else {
	if(keyboard_check(ord("Z"))) {
		script_execute(st_rock2);
	} else if(keyboard_check(ord("X"))) {
		script_execute(st_paper);
	} else if(keyboard_check(ord("C"))) {
		script_execute(st_scissors2);
	}
}
if(x  - (sprite_width/2) < 0){
 x = sprite_width/2;	
}
if(x + (sprite_width/2) > 640){
	x = 640-(sprite_width/2)	
}

if(y  - (sprite_height/2) < 0){
 y = sprite_height/2;	
}
if(y + (sprite_height/2) > 480){
	y = 480-(sprite_height/2)	
}
if(invuln){
	invuln--;
}