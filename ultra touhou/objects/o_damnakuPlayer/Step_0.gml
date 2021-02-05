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
if(keyboard_check(ord("Z"))){
	//shoot
	if(timer%5 == 0){
		PlayerBullet(x,y-3);
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