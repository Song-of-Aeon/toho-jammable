/// @description Insert description here
// You can write your code in this editor
gpu_set_ztestenable(false);

if(!touched){
	draw_sprite_ext(sprite_index,0,x,y,image_xscale,image_yscale,image_angle,c_red,1);
}
else{
	draw_sprite_ext(sprite_index,0,x,y,image_xscale,image_yscale,image_angle,c_green,1);
}
gpu_set_ztestenable(true);
