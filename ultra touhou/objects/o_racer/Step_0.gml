
look_x += (keyboard_check(vk_right) - keyboard_check(vk_left))*2

look_y =0

var zz = -30;
var xx = lengthdir_x(200,look_x )
var yy = lengthdir_y(200,look_x)

projmat = matrix_build_lookat(x+xx,y+yy,-40, x,y,0, 0,0,-1);

camera_set_view_mat(view_camera[0], projmat);
spd = 0.1;
maxspd = 7;
if(keyboard_check(vk_up)){
	acc+=spd;	
}
else{
	acc = acc/1.02;
}
if(keyboard_check(vk_down)){
	acc-=spd;	
}

x-=	lengthdir_x(acc,look_x);
y-= lengthdir_y(acc,look_x);
