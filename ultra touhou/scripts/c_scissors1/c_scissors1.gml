function c_scissors1() {
	if count % 30 = 0 {
		//difference = sin(count/60)*20;
		difference = 0;
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