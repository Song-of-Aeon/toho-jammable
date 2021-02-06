function c_scissors1() {
	if count % 30 = 0 {
		//difference = sin(count/60)*20;
		difference = 0;
	}
	if count % 10 = 0 {
		var _create = function(this) {
			this.speed = 2;
			this.direction = -90;
			this.gone = false;
			if this.x > 310 && this.x < 330 {
				instance_destroy(this.id);
			}
		}
		var _step = function(this) {
			if collision_point(this.x, this.y, o_danmaku_bullet, true, true) != this.id && collision_point(this.x, this.y, o_danmaku_bullet, true, true) != noone && !this.gone && this.y < 460 {
				this.direction = point_direction(this.x, this.y, o_damnakuPlayer.x, o_damnakuPlayer.y);
				this.speed = 0;
				this.gone = true;
			} else if this.gone {
				this.speed += .07;
			}
			
		}
		Bullet(_step, _create, (sin(count-10/100)+1)*640/2, 0);
		
		var _create = function(this) {
			this.speed = 4;
			this.direction = -90;
			this.gone = false;
		}
		Bullet(_step, _create, (sin(-count-10/100)+1)*640/2, 0);
	}
	
	
	var _create = function(this) {
		this.speed = 20;
		this.direction = -115+difference+sin(count/30)*20;
	}
	var _step = function(this) {
	}	
	Bullet(_step,_create, x, y);
	var _create = function(this) {
		this.speed = 20;
		this.direction = 65+difference+sin(count/30)*20;
	}
	var _step = function(this) {
	}	
	Bullet(_step,_create, x, y);
		
	var _create = function(this) {
		this.speed = 20;
		this.direction = 115+difference+sin(-count/30)*15;
	}
	var _step = function(this) {
	}	
	Bullet(_step,_create, x, y);
	var _create = function(this) {
		this.speed = 20;
		this.direction = -65+difference+sin(-count/30)*15;
	}
	var _step = function(this) {
	}	
	Bullet(_step,_create, x, y);
		
}