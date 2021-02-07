function st_paper() {
	if timer % 2 = 0 {
		var _create = function(this) {
			this.speed = 4;
			this.dirrection = 10+(random(40)-20);
			this.damage = 2;
		}
		var _step = function(this) {
			this.dirrection += 1.6;
			this.speed += .1;
			this.direction = -floor(this.dirrection/50)*50+180;
		}	
		Bullet(_step,_create, x, y);
		var _create = function(this) {
			this.speed = 4;
			this.dirrection = 10+(random(40)-20);
			this.damage = 2;
		}
		var _step = function(this) {
			this.dirrection += 1.6;
			this.speed += .1;
			this.direction = floor(this.dirrection/50)*50;
		}	
		Bullet(_step,_create, x, y);
	}
	if timer % 5 = 0 {
		var i = 64;	
		repeat(4) {
			var _create = function(this) {
				this.speed = 20;
				this.damage = 2;
			}
			var _step = function(this) {}
			guy = Bullet(_step,_create, x, y);
			guy.direction = i;
			i += 18;
		}
	}
}