
look_x += keyboard_check(vk_right) - keyboard_check(vk_left)

look_y =0

var zz = -30;
var xx = lengthdir_x(200,look_x )
var yy = lengthdir_y(200,look_x)

projmat = matrix_build_lookat(x+xx,y+yy,-40, x,y,0, 0,0,-1);

camera_set_view_mat(view_camera[0], projmat);
spd = 5;
if(keyboard_check(ord("W"))){
	x-=	lengthdir_x(spd,look_x);
	y-= lengthdir_y(spd,look_x);
}
