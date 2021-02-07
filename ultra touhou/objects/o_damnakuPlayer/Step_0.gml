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
hput = keyboard_check(vk_right) - keyboard_check(vk_left);
vput = keyboard_check(vk_down) - keyboard_check(vk_up);
x += spd*hput;
y += spd*vput;
if hput = 0 {
	sprite_index = s_player;
} else if hput = 1 {
	sprite_index = s_playerright;
} else {
	sprite_index = s_playerleft;
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
if keyboard_check_pressed(ord("Z")) + keyboard_check_pressed(ord("X")) + keyboard_check_pressed(ord("C")) {
	audio_play_sound(se_bup, 0, false);
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
score = max(0,score);

if(audio_sound_get_track_position(music) >  184.624){
	audio_sound_set_track_position(music, 12.310);
}
