/// @description Insert description here
// You can write your code in this editor
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
if(keyboard_check(ord("Z"))){
	//shoot
}