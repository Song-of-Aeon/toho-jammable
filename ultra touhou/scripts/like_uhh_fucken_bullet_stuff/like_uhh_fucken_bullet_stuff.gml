// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Bullet(_step,_create, _x, _y) {
	var inst = instance_create_layer(_x, _y, "Instances", o_danmaku_bullet);
	inst.step = _step;
	inst.create = _create;
	inst.owner = id;
	return inst;
}
function Bullet_draw(_step, _create, _draw, _x, _y) {
	var inst = instance_create_layer(_x, _y, "Instances", o_danmaku_bullet);
	inst.step = _step;
	inst.create = _create;
	inst.draw = _draw;
	inst.owner = id;
	return inst;
}
function PlayerBullet(_x, _y) {
	var _create = function(this) {
		this.speed = 20;
		this.direction = 90;
	}
	var _step = function(this){
		
	}	
	Bullet(_step,_create,_x,_y);
}