function c_scissors1() {
	if count % 10 = 0 {
		var _create = function(this) {
			this.speed = 0;
			this.direction = -90;
			this.gone = false;
			this.sprite_index = s_cissor;
			if this.x > 310 && this.x < 330 {
				instance_destroy(this.id);
			}
		}
		var _step = function(this) {
			if collision_point(this.x, this.y, o_danmaku_bullet, true, true) != this.id && collision_point(this.x, this.y, o_danmaku_bullet, true, true) != noone && !this.gone && this.y < 460&&collision_point(this.x, this.y, o_danmaku_bullet, true, true).owner != o_damnakuPlayer.id {
				this.direction = point_direction(this.x, this.y, o_damnakuPlayer.x, o_damnakuPlayer.y);
				this.speed = 0;
				this.gone = true;
				this.sprite_index = s_cissors;
				this.image_index += speed/10;
				instance_destroy(collision_point(this.x, this.y, o_danmaku_bullet, true, true));
			} else if this.gone {
				this.speed += .07;
			} else {
				this.speed += .03;
			}
			this.image_index += speed/10;
			
		}
		var _draw = function(this) {
			if this.sprite_index = s_cissors && this.image_index = 0 {
				this.image_angle = this.direction+45;
			} else if this.sprite_index = s_cissors {
				this.image_angle = this.direction+90;
			}
		}
		Bullet_draw(_step, _create, _draw, (sin(count-10/100)+1)*640/2, 0);
		
		var _create = function(this) {
			this.speed = 2;
			this.direction = -90;
			this.gone = false;
			this.sprite_index = s_cissor;
			if this.x > 310 && this.x < 330 {
				instance_destroy(this.id);
			}
			this.image_xscale = -1;
		}
		Bullet_draw(_step, _create, _draw, (sin(-count-10/100)+1)*640/2, 0);
	}
	
	
	var _create = function(this) {
		this.speed = 20;
		this.direction = -115+sin(count/30)*20;
		this.sprite_index = s_shardbul;
	}
	var _step = function(this) {
	}	
	Bullet(_step,_create, x, y);
	var _create = function(this) {
		this.speed = 20;
		this.direction = 65+sin(count/30)*20;
		this.sprite_index = s_shardbul;
	}
	var _step = function(this) {
	}	
	Bullet(_step,_create, x, y);
		
	var _create = function(this) {
		this.speed = 20;
		this.direction = 115+sin(-count/30)*15;
		this.sprite_index = s_shardbul;
	}
	var _step = function(this) {
	}	
	Bullet(_step,_create, x, y);
	var _create = function(this) {
		this.speed = 20;
		this.direction = -65+sin(-count/30)*15;
		this.sprite_index = s_shardbul;
	}
	var _step = function(this) {
	}	
	Bullet(_step,_create, x, y);
		
}