function st_funky() {
	if timer % 5 = 0 {
		var _create = function(this) {
			this.speed = 20;
			this.direction = 110+sin(timer/30)*20;
		}
		var _step = function(this) {
		}	
		Bullet(_step,_create, x, y);
		var _create = function(this) {
			this.speed = 20;
			this.direction = 70+sin(-timer/30)*20;
		}
		var _step = function(this) {
		}	
		Bullet(_step,_create, x, y);
		
		var _create = function(this) {
			this.speed = 20;
			this.direction = 110+sin(timer/30)*15;
		}
		var _step = function(this) {
		}	
		Bullet(_step,_create, x, y);
		var _create = function(this) {
			this.speed = 20;
			this.direction = 70+sin(-timer/30)*15;
		}
		var _step = function(this) {
		}	
		Bullet(_step,_create, x, y);
		
		var _create = function(this) {
			this.speed = 20;
			this.direction = 110+sin(timer/30)*10;
		}
		var _step = function(this) {
		}	
		Bullet(_step,_create, x, y);
		var _create = function(this) {
			this.speed = 20;
			this.direction = 70+sin(-timer/30)*10;
		}
		var _step = function(this) {
		}	
		Bullet(_step,_create, x, y);
		
		var _create = function(this) {
			this.speed = 20;
			this.direction = 110+sin(timer/30)*5;
		}
		var _step = function(this) {
		}	
		Bullet(_step,_create, x, y);
		var _create = function(this) {
			this.speed = 20;
			this.direction = 70+sin(-timer/30)*5;
		}
		var _step = function(this) {
		}	
		Bullet(_step,_create, x, y);
		
	}
}