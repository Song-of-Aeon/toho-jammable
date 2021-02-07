if(driftdir == 0){
	look_x += (keyboard_check(vk_right) - keyboard_check(vk_left));
}
look_y = 0

var zz = -10;
var xx = lengthdir_x(100,look_x )
var yy = lengthdir_y(100,look_x)

projmat = matrix_build_lookat(x+xx,y+yy,-25, x,y,-7, 0,0,-1);

camera_set_view_mat(view_camera[0], projmat);
spd = 0.03;
maxspd = 7;
if(keyboard_check(vk_up)) && acc < 15 && !drift {
	acc+=spd*2;	
}
else{
	//acc = acc/1.02;
}
if(keyboard_check(vk_down)){
	acc-=spd;	
}
if(keyboard_check(vk_shift)){
	drift = true;	
} else {
	drift = false;
}
if(driftdir == 0 && drift && keyboard_check(vk_left)){
		driftdir = -20;
}
if(driftdir == 0 && drift && keyboard_check(vk_right)){
		driftdir = 20;
}
	x-=	lengthdir_x(acc,look_x);
	y-= lengthdir_y(acc,look_x);

if(driftdir != 0){
	driftdir+= 	(keyboard_check(vk_right) - keyboard_check(vk_left))*10;
	driftdir/=1.1;
	
	look_x += driftdir/36;
	driftdir = clamp(driftdir,-100,100);
}
if(!keyboard_check(vk_shift)){
	drift = false;
	driftdir = 0;
}
c_timebuster();
timer += delta_time/1000000;
if(drift){
	acc /= 1.01;	
}

if(audio_sound_get_track_position(music) >  176.612){
	audio_sound_set_track_position(music, 6.048);
}