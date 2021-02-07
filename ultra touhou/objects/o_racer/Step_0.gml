
look_x += (keyboard_check(vk_right) - keyboard_check(vk_left))*((drift*1.8)+.6);

look_y = 0

var zz = -10;
var xx = lengthdir_x(100,look_x )
var yy = lengthdir_y(100,look_x)

projmat = matrix_build_lookat(x+xx,y+yy,-25, x,y,-7, 0,0,-1);

camera_set_view_mat(view_camera[0], projmat);
spd = 0.03;
maxspd = 7;
if(keyboard_check(vk_up)) && acc < 15 {
	acc+=spd;	
}
else{
	//acc = acc/1.02;
}
if(keyboard_check(vk_down)){
	acc-=spd*10;	
}
if(keyboard_check(vk_shift)){
	drift = true;	
} else {
	drift = false;
}
x-=	lengthdir_x(acc,look_x);
y-= lengthdir_y(acc,look_x);

c_timebuster();
timer += global.truetime/10;

if(audio_sound_get_track_position(music) >  176.612){
	audio_sound_set_track_position(music, 6.048);
}