// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Bullet(scr, _x,_y){
	var inst = instance_create_layer(_x,_y,"Instances",o_danmaku_bullet);
	inst.step = scr;
	return inst;
	
}