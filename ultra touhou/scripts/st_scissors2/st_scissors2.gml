function st_scissors2() {
	if timer % 5 = 0 {
		var _create = function(this) {
			this.speed = 20;
			this.damage = 3;
			this.direction = 110+sin(timer/30)*20;
		}
		var _step = function(this) {
		}	
		Bullet(_step,_create, x, y);
		var _create = function(this) {
			this.speed = 20;
			this.damage = 3;
			this.direction = 70+sin(-timer/30)*20;
		}
		var _step = function(this) {
		}	
		Bullet(_step,_create, x, y);
		
		var _create = function(this) {
			this.speed = 20;
			this.damage = 3;
			this.direction = 105+sin(timer/20)*15;
		}
		var _step = function(this) {
		}	
		Bullet(_step,_create, x, y);
		var _create = function(this) {
			this.speed = 20;
			this.damage = 3;
			this.direction = 75+sin(-timer/20)*15;
		}
		var _step = function(this) {
		}	
		Bullet(_step,_create, x, y);
		
		var _create = function(this) {
			this.speed = 20;
			this.damage = 3;
			this.direction = 100+sin(timer/10)*10;
		}
		var _step = function(this) {
		}	
		Bullet(_step,_create, x, y);
		var _create = function(this) {
			this.speed = 20;
			this.damage = 3;
			this.direction = 80+sin(-timer/10)*10;
		}
		var _step = function(this) {
		}	
		Bullet(_step,_create, x, y);
		
		var _create = function(this) {
			this.speed = 20;
			this.damage = 3;
			this.direction = 95+sin(timer/40)*5;
		}
		var _step = function(this) {
		}	
		Bullet(_step,_create, x, y);
		var _create = function(this) {
			this.speed = 20;
			this.damage = 3;
			this.direction = 85+sin(-timer/40)*5;
		}
		var _step = function(this) {
		}	
		Bullet(_step,_create, x, y);
		
	}
}